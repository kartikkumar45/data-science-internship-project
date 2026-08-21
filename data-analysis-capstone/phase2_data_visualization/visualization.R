##############################################################################
# Phase II: Data Visualization and Insight Communication
# Dataset : Gapminder (Free, Bryan et al.), 1952-2007
# Author  : Kartik Kumar
##############################################################################

library(tidyverse)
library(gapminder)
library(scales)

gap <- gapminder
str(gap)
dim(gap)
n_distinct(gap$country)
sort(unique(gap$year))

# ---- 1. Data quality checks ----
sum(is.na(gap))
gap %>% count(country, year) %>% filter(n > 1)
summary(gap[, c("lifeExp", "pop", "gdpPercap")])

# ---- 2. Figure 1: Life expectancy trend by continent ----
cont_year <- gap %>%
  group_by(continent, year) %>%
  summarise(lifeExp = mean(lifeExp), .groups = "drop")

ggplot(cont_year, aes(x = year, y = lifeExp, color = continent)) +
  geom_line(linewidth = 1.1) +
  geom_point(size = 1.6) +
  labs(title = "Average Life Expectancy by Continent, 1952-2007",
       x = "Year", y = "Life expectancy (years)", color = "Continent") +
  theme_minimal()

# ---- 3. Figure 2: GDP per capita (log) vs. life expectancy, 2007 ----
gap2007 <- gap %>% filter(year == 2007)

ggplot(gap2007, aes(x = gdpPercap, y = lifeExp,
                     size = pop, color = continent)) +
  geom_point(alpha = 0.7) +
  scale_x_log10(labels = label_comma()) +
  scale_size(range = c(1, 20), guide = "none") +
  labs(title = "GDP per Capita (log scale) vs. Life Expectancy, 2007",
       x = "GDP per capita (international $, log scale)",
       y = "Life expectancy (years)", color = "Continent") +
  theme_minimal()

cor(log(gap2007$gdpPercap), gap2007$lifeExp)

# ---- 4. Figure 3: Average life expectancy by continent, 2007 ----
cont_2007 <- gap2007 %>%
  group_by(continent) %>%
  summarise(lifeExp = mean(lifeExp)) %>%
  arrange(desc(lifeExp))

ggplot(cont_2007, aes(x = reorder(continent, -lifeExp), y = lifeExp,
                       fill = continent)) +
  geom_col() +
  geom_text(aes(label = round(lifeExp, 1)), vjust = -0.5) +
  labs(title = "Average Life Expectancy by Continent, 2007",
       x = NULL, y = "Life expectancy (years)") +
  theme_minimal() + theme(legend.position = "none")

# ---- 5. Figure 4: Distribution of life expectancy, 2007 ----
ggplot(gap2007, aes(x = lifeExp)) +
  geom_histogram(bins = 14, fill = "#2980b9", color = "white") +
  geom_vline(aes(xintercept = mean(lifeExp)), color = "#e74c3c",
             linetype = "dashed", linewidth = 0.9) +
  geom_vline(aes(xintercept = median(lifeExp)), color = "#27ae60",
             linetype = "dashed", linewidth = 0.9) +
  labs(title = paste0("Distribution of Life Expectancy Across ",
                       nrow(gap2007), " Countries, 2007"),
       x = "Life expectancy (years)", y = "Number of countries") +
  theme_minimal()

mean(gap2007$lifeExp)
median(gap2007$lifeExp)

# ---- 6. Figure 5: Population growth, five most populous countries (2007) ----
top5 <- gap2007 %>% slice_max(pop, n = 5) %>% pull(country)

gap %>%
  filter(country %in% top5) %>%
  ggplot(aes(x = year, y = pop / 1e6, color = country)) +
  geom_line(linewidth = 1.1) +
  geom_point(size = 1.6) +
  labs(title = "Population Growth of the Five Most Populous Countries (2007), 1952-2007",
       x = "Year", y = "Population (millions)", color = "Country") +
  theme_minimal()

sum(gap2007$pop[gap2007$country %in% top5[1:2]]) / sum(gap2007$pop)

# ---- 7. Figure 6: GDP per capita distribution by continent, 2007 ----
ggplot(gap2007, aes(x = continent, y = gdpPercap, fill = continent)) +
  geom_boxplot() +
  scale_y_log10(labels = label_comma()) +
  labs(title = "GDP per Capita Distribution by Continent, 2007 (log scale)",
       x = NULL, y = "GDP per capita (international $, log scale)") +
  theme_minimal() + theme(legend.position = "none")

##############################################################################
# END OF SCRIPT
##############################################################################

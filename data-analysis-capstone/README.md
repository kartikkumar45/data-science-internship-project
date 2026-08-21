# Comprehensive Data Analysis Capstone

**Kartik Kumar | R-based data analysis portfolio project**

A consolidated analytical workflow covering three distinct stages of practical data work: **data cleaning, visual exploration, and statistical/predictive modelling**. The project is intentionally structured around the reasoning behind each analysis rather than simply presenting model output.

## Why this project exists

The work brings together a multi-week R analysis sequence into one coherent portfolio piece. Each phase uses a dataset appropriate to the technique being demonstrated, while the accompanying report documents the decisions, findings, limitations, and interpretation behind the code.

The central workflow is:

**Inspect → Clean → Explore → Test → Model → Evaluate → Interpret**

## Project map

| Phase | Focus | Dataset | Main techniques |
|---|---|---|---|
| 1 | Data cleaning & preliminary analysis | `mtcars`-style Motor Trend car data | Missing-value diagnosis, domain checks, imputation, winsorization, encoding, normalization, correlation analysis |
| 2 | Visualization & insight communication | Gapminder | Trend analysis, distributions, log-scale comparison, population trends, grouped summaries |
| 3 | Statistical analysis & prediction | Breast Cancer Wisconsin (Diagnostic) | Welch t-tests, variance checks, correlation/VIF, logistic regression, random forest, cross-validation, ROC/AUC, diagnostics |

## Repository structure

```text
.
├── phase1_data_cleaning/
│   └── data_cleaning.R
├── phase2_data_visualization/
│   └── visualization.R
├── phase3_predictive_modeling/
│   ├── predictive_modeling.R
│   └── advanced_analysis.R
├── report/
│   └── Comprehensive_Data_Analysis_Report.md
├── .gitignore
└── README.md
```

## What the analysis demonstrates

### Phase 1 — Cleaning before analysis

The cleaning workflow treats data quality as an analytical decision, not a cosmetic step. It checks missingness and outliers, corrects clearly implausible entries using domain reasoning, imputes missing values, caps remaining mild outliers, converts categorical variables to factors, creates dummy variables, and produces normalized features for downstream use.

The analysis then examines correlations and basic relationships in the cleaned data. One of the clearest findings is the strong negative association between vehicle weight and fuel efficiency (`r ≈ -0.81`).

### Phase 2 — Visualization with a question behind each chart

The Gapminder analysis moves beyond plotting for appearance. The six visualizations answer specific questions about changes in life expectancy, the relationship between income and life expectancy, continental differences, population concentration, and within-continent GDP variation.

The report highlights the broad rise in average life expectancy from **49.1 years in 1952 to 67.0 years in 2007**, while also showing that the gains were uneven across continents.

### Phase 3 — Statistical inference and predictive modelling

The medical classification phase combines inference and prediction rather than treating accuracy as the only objective. The workflow includes Welch two-sample t-tests, variance checks, correlation analysis, a reduced logistic-regression specification to address collinearity, VIF diagnostics, a stratified 70/30 train-test split, 10-fold cross-validation, random forest benchmarking, confusion matrices, ROC/AUC evaluation, residual diagnostics, Cook's distance, and variable importance.

The accompanying advanced analysis adds effect sizes, confidence intervals, precision-recall analysis, and a clearly labelled **illustrative** cost-sensitive threshold analysis.

> **Important:** This is an educational machine-learning exercise, not a clinical diagnostic system. The cost ratio used in the supplementary threshold analysis is illustrative and must not be interpreted as a clinical recommendation.

## Running the project

Install the packages used by the scripts:

```r
install.packages(c(
  "tidyverse", "corrplot", "fastDummies",
  "gapminder", "scales",
  "caret", "car", "pROC", "randomForest", "broom", "PRROC"
))
```

### Phase 1

`phase1_data_cleaning/data_cleaning.R` expects the working dataset at:

```text
data/mtcars_raw.csv
```

The dataset used in the submitted analysis was a prepared `mtcars`-style working file containing deliberately introduced missing values and data-entry errors. That source file is **not included in this public repository copy** because it is not available in the final project package.

### Phase 2

`phase2_data_visualization/visualization.R` uses the `gapminder` R package, so no separate CSV is required for this phase.

### Phase 3

`phase3_predictive_modeling/predictive_modeling.R` expects:

```text
breast_cancer_data.csv
```

with the documented Breast Cancer Wisconsin (Diagnostic) structure, including `diagnosis` coded as `B`/`M` and the `mean_*` predictor columns used by the script.

The dataset itself is **not included in this public repository copy** because the original project package did not contain the CSV. The script is preserved as the submitted analytical implementation rather than silently substituting a different dataset.

Run `advanced_analysis.R` **after** `predictive_modeling.R` in the same R session because the supplementary script uses objects created by the main modelling script.

## Reproducibility and scope

The accompanying report records the underlying datasets, analytical decisions, results, and a reproducibility note. This public code repository deliberately does not claim that a fresh clone can reproduce every numeric result without the two source files noted above.

That distinction matters: the repository contains the actual analytical code and final report, while the missing local source files are explicitly identified instead of being replaced with unrelated copies.

## Selected findings

- Vehicle weight has a strong negative relationship with fuel efficiency in the cleaned `mtcars` analysis (`r ≈ -0.81`).
- In the Gapminder analysis, mean life expectancy increases substantially between 1952 and 2007, but the trajectory differs across continents.
- In the breast-cancer analysis, the class distribution is moderately imbalanced (357 benign and 212 malignant observations), motivating evaluation beyond accuracy alone.
- The predictive workflow compares interpretable logistic regression with random forest and evaluates held-out performance using confusion matrices and ROC/AUC measures.

## Limitations

The three phases intentionally use different datasets, so this is a consolidated training capstone rather than one end-to-end model built on a single population. The Gapminder data end in 2007, and correlations reported throughout the project are associations rather than evidence of causation. The medical classification analysis is retrospective and educational; independent external validation would be required before any real-world clinical application.

## Author

**Kartik Kumar**

This repository is intended to show the analytical process clearly: what was done, why it was done, what the evidence supports, and where the limits of that evidence begin.

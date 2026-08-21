##############################################################################
# Phase III (Supplementary): Advanced Diagnostics
# Run this script in the same R session after predictive_modeling.R.
# Effect sizes, confidence intervals, precision-recall, and cost-sensitive
# threshold analysis referenced in the final report.
##############################################################################

library(PRROC)

# ---- Cohen's d effect sizes for the 8 key t-tested variables ----
cohens_d <- function(a, b) {
  pooled_sd <- sqrt(((length(a)-1)*var(a) + (length(b)-1)*var(b)) / (length(a)+length(b)-2))
  (mean(a) - mean(b)) / pooled_sd
}
t_test_vars <- c("mean_radius","mean_texture","mean_perimeter","mean_area",
                  "mean_smoothness","mean_compactness","mean_concavity","mean_concave_points")
sapply(t_test_vars, function(v) cohens_d(bc_data[[v]][bc_data$diagnosis=="M"],
                                          bc_data[[v]][bc_data$diagnosis=="B"]))

# ---- Wilson 95% CI for held-out test accuracy ----
n_test <- nrow(test_data)
n_correct <- sum(predict(model_glm_cv, newdata = test_data) == test_data$diagnosis)
prop.test(n_correct, n_test, correct = FALSE)$conf.int

# ---- Precision-recall curves ----
prob_glm <- predict(model_glm_cv, newdata = test_data, type = "prob")[, "M"]
prob_rf  <- predict(model_rf_cv,  newdata = test_data, type = "prob")[, "M"]
y_true   <- as.numeric(test_data$diagnosis == "M")

pr_glm <- pr.curve(scores.class0 = prob_glm, weights.class0 = y_true, curve = TRUE)
pr_rf  <- pr.curve(scores.class0 = prob_rf,  weights.class0 = y_true, curve = TRUE)
plot(pr_glm)
plot(pr_rf, add = TRUE, color = "red")
pr_glm$auc.integral
pr_rf$auc.integral

# ---- Cost-sensitive decision threshold analysis ----
# Illustrative cost ratio only; not a clinical calibration.
cost_fn <- 10
cost_fp <- 1
thresholds <- seq(0.05, 0.95, by = 0.01)

expected_cost <- function(probs, y_true, t, c_fn, c_fp) {
  pred <- ifelse(probs >= t, "M", "B")
  fn <- sum(pred == "B" & y_true == "M")
  fp <- sum(pred == "M" & y_true == "B")
  fn * c_fn + fp * c_fp
}

costs_glm <- sapply(thresholds, expected_cost, probs = prob_glm, y_true = test_data$diagnosis, c_fn = cost_fn, c_fp = cost_fp)
costs_rf  <- sapply(thresholds, expected_cost, probs = prob_rf,  y_true = test_data$diagnosis, c_fn = cost_fn, c_fp = cost_fp)

best_t_glm <- thresholds[which.min(costs_glm)]
best_t_rf  <- thresholds[which.min(costs_rf)]
cat("Cost-optimal threshold — Logistic Regression:", best_t_glm, "| Random Forest:", best_t_rf, "\n")

plot(thresholds, costs_glm, type = "l", col = "blue",
     xlab = "Classification threshold (P(malignant) >= t)",
     ylab = "Expected cost (arbitrary units)",
     main = "Expected Misclassification Cost vs. Decision Threshold")
lines(thresholds, costs_rf, col = "red")
abline(v = 0.5, lty = 3)
legend("topleft", legend = c("Logistic Regression", "Random Forest", "Default threshold"),
       col = c("blue", "red", "black"), lty = c(1, 1, 3))

##############################################################################
# END OF SCRIPT
##############################################################################

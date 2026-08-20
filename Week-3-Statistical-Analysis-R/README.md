# Week 3 — Statistical Analysis and Predictive Modelling in R

This folder contains the R implementation used for the Week 3 statistical analysis task.

## Dataset

The analysis is designed around the **Breast Cancer Wisconsin (Diagnostic)** dataset, a publicly documented classification dataset available through the UCI Machine Learning Repository. The response variable is diagnosis (benign or malignant), with numeric measurements derived from digitised images of breast masses.

## What the analysis covers

1. Data structure, dimensions, missing-value and class-balance checks
2. Descriptive statistics and distribution review
3. Normality and variance-assumption checks
4. Group comparisons using Welch two-sample t-tests
5. Pearson correlation and multicollinearity assessment
6. Logistic regression with a reduced, interpretable predictor set
7. VIF diagnostics
8. Stratified 70/30 train-test split
9. 10-fold cross-validation
10. Logistic regression and random-forest classification
11. Confusion matrices and ROC/AUC evaluation
12. Residual and influential-observation diagnostics
13. Random-forest variable importance
14. Cross-validated model comparison

## Reproducibility note

The script expects a local file named `breast_cancer_data.csv` with the column structure used in the report. The dataset itself is not copied into this repository yet; the source and licensing/usage conditions should be checked before redistribution.

## Important interpretation note

This repository should distinguish statistical association from clinical causation. The analysis is an educational data-science exercise and should not be interpreted as a clinical diagnostic system.

## Main script

`breast_cancer_analysis.R`

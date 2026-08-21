# Comprehensive Data Analysis Report — Project Summary

**Author:** Kartik Kumar  
**Project:** Comprehensive Data Analysis Capstone  
**Scope:** Data cleaning, visualization, statistical analysis, predictive modelling

## 1. Project overview

This capstone consolidates three analytical phases into one practical workflow. The phases intentionally use different public datasets so that each technique can be demonstrated in an appropriate setting.

- **Phase I:** Motor Trend car data (`mtcars`-style) — data cleaning and preliminary analysis.
- **Phase II:** Gapminder — visualization and insight communication.
- **Phase III:** Breast Cancer Wisconsin (Diagnostic) — statistical analysis and predictive modelling.

The complete submitted Word report contains the detailed narrative, tables, figures, interpretation, limitations, and appendices. This repository summary keeps the public codebase readable while preserving the key analytical record.

## 2. Reproducibility note

The original report states that the R scripts were intended to reproduce the tables and figures. It also documents an independent Python re-verification of the reported results because the environment used to assemble the report did not have R available. The public repository therefore distinguishes between the analytical scripts and the source datasets that are not present in the final project package.

## 3. Phase I — Data cleaning and preliminary analysis

The working `mtcars`-style dataset contains 32 observations and 12 variables. The exercise deliberately introduced missing values and two implausible data-entry errors to represent a messy public download.

The cleaning workflow diagnoses missingness and outliers, corrects clearly implausible entries, uses median/mode imputation, winsorizes remaining mild outliers, converts categorical fields to factors, creates dummy variables, and normalizes selected continuous variables.

The cleaned analysis shows a strong negative association between vehicle weight and fuel efficiency (`r ≈ -0.81`). Displacement and horsepower are also negatively associated with fuel efficiency, while weight, displacement, and horsepower are mutually correlated.

## 4. Phase II — Visualization and insight communication

The Gapminder dataset contains 1,704 observations across 142 countries from 1952 to 2007. Six visualizations examine:

1. Life expectancy trends by continent.
2. GDP per capita versus life expectancy in 2007.
3. Average life expectancy by continent in 2007.
4. The distribution of life expectancy in 2007.
5. Population growth among the five most populous countries in 2007.
6. GDP per capita distributions by continent.

Average life expectancy across the dataset increased from **49.1 years in 1952 to 67.0 years in 2007**. In 2007, log GDP per capita and life expectancy were strongly positively associated (`r ≈ 0.81`). The report emphasizes that these are descriptive and correlational findings, not causal estimates.

## 5. Phase III — Statistical analysis and predictive modelling

The Breast Cancer Wisconsin (Diagnostic) dataset contains 569 observations, 30 numeric predictors, and a binary diagnosis outcome. The analysis checks class balance, distributions, normality of selected variables, group differences, variance assumptions, and predictor correlations.

Welch two-sample t-tests are used for key feature comparisons. A reduced logistic-regression specification is used after considering strong collinearity among shape-related variables. VIF is used as a multicollinearity diagnostic.

The predictive workflow uses a stratified 70/30 train-test split and 10-fold cross-validation. Logistic regression provides an interpretable baseline, while random forest provides a nonlinear benchmark. Held-out evaluation includes confusion matrices, ROC curves, AUC, residual diagnostics, Cook's distance, and random-forest variable importance.

The supplementary analysis adds Cohen's d effect sizes, a confidence interval for held-out accuracy, precision-recall analysis, and cost-sensitive threshold analysis. The cost ratio is explicitly illustrative and is not a clinical calibration.

## 6. Key limitations

- The three phases use different datasets, so this is a consolidated training capstone rather than a single end-to-end analysis.
- The Gapminder data end in 2007 and should not be treated as a current development snapshot.
- Correlations describe associations and do not establish causality.
- The medical classification analysis is educational and retrospective. Independent external validation would be necessary before any real-world clinical use.
- The two CSV source files referenced by the R scripts were not present in the final project package and therefore are not included in this public repository.

## 7. Conclusion

The capstone demonstrates a complete analytical mindset: data quality is considered before modelling, visualizations are tied to questions, statistical tests are paired with assumption checks, predictive models are evaluated on held-out data, and conclusions are bounded by the evidence. The repository is deliberately transparent about what is included and what would still be required for a fresh end-to-end reproduction.

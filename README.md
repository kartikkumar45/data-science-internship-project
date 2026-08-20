# Data Science Internship Project

**Kartik Kumar**  
**Internship portfolio | August 2026**

A four-week data science project covering project planning, exploratory analysis, statistical analysis, predictive modelling, and communication of insights.

> **Scope note:** This repository intentionally contains a mixture of project plans, analytical frameworks, executable analysis, and illustrative reporting. It does not present hypothetical examples as real business outcomes.

## Project at a glance

The work follows a practical analytical path:

**Problem definition → Data understanding → Exploration → Statistical analysis → Modelling → Evaluation → Insight → Action → Measurement**

The emphasis is on the reasoning around an analysis: defining the decision, checking data quality, preventing leakage, choosing appropriate validation, understanding limitations, and communicating conclusions clearly.

## Project map

| Week | Focus | Repository material |
|---|---|---|
| **01** | Project Planning & Strategy | Business problem, scope, data strategy, evaluation, governance and 33-hour delivery plan |
| **02** | EDA & Visualisation | Reusable data-quality, exploration, visualisation, validation and documentation framework |
| **03A** | Python ML Development | Leakage-safe preprocessing, model candidates, validation, thresholding, interpretation and monitoring plan |
| **03B** | Statistical Analysis in R | Breast Cancer Wisconsin (Diagnostic) analysis, hypothesis tests, logistic regression, random forest and diagnostics |
| **04** | Final Reporting & Insights | Executive communication, visual plan, insight-to-action framework, measurement and future work |

## Repository structure

```text
.
├── reports/
│   ├── Week-1-Project-Planning.md
│   ├── Week-2-EDA-and-Visualization.md
│   ├── Week-3-Python-ML-Development-Plan.md
│   └── Week-4-Comprehensive-Insights-Plan.md
│
├── Week-3-Statistical-Analysis-R/
│   ├── README.md
│   └── breast_cancer_analysis.R
│
├── data/
│   └── README.md
│
├── docs/
│   ├── PROJECT_SCOPE.md
│   └── REVIEW_CHECKLIST.md
│
├── Week-1-Project-Planning/
├── Week-2-EDA/
├── Week-3-Machine-Learning/
├── Week-4-Final-Report/
├── .gitignore
└── README.md
```

## Week 3: executed R analysis

The R track uses the **Breast Cancer Wisconsin (Diagnostic)** dataset. The script covers data inspection, missing-value and class-balance checks, distribution and assumption checks, Welch two-sample t-tests, correlation/multicollinearity analysis, logistic regression, VIF diagnostics, a stratified 70/30 train-test split, 10-fold cross-validation, random forest, confusion matrices, ROC/AUC evaluation, residual diagnostics, Cook's distance and variable importance.

This is an educational classification exercise and **not a clinical diagnostic system**.

## Week 3: Python ML plan

The Python material is a development and evaluation plan for a hypothetical customer-churn classification problem. It covers leakage-safe preprocessing, an interpretable baseline, candidate models, cross-validation, threshold selection, error analysis, deployment and monitoring. It should be read as methodology rather than as evidence of completed churn-model performance.

## Responsible interpretation

The project distinguishes three kinds of material:

- **Observed analysis:** results produced by the R workflow against its documented dataset.
- **Planned methodology:** workflows describing how a future analysis should be performed.
- **Illustrative reporting:** mock findings and visuals used to demonstrate executive communication.

Keeping these categories separate is deliberate. A public portfolio should make clear what the evidence supports and what it does not.

## Tools

- **Python:** pandas, NumPy, scikit-learn, Matplotlib and Seaborn where applicable
- **R:** tidyverse, caret, corrplot, car, pROC, randomForest and broom
- Exploratory data analysis and statistical testing
- Predictive modelling and model evaluation
- Data storytelling and stakeholder communication
- Git/GitHub for version control and documentation

## Data and reproducibility

The `data/` directory contains source and handling notes. Public datasets are not copied into the repository without checking their current source, citation and redistribution conditions. The R script expects a local `breast_cancer_data.csv` file with the documented column structure.

No private credentials, confidential internship information or unnecessary personal data should be committed to this repository.

## Why this repository is structured this way

This is my first GitHub project, developed as part of my data science internship work. I have kept the repository focused on the work itself rather than adding decorative portfolio material. Each section exists to document a real part of the analytical process or to explain how the work should be interpreted.

## Author

**Kartik Kumar**

# Data Science Internship Project

**Kartik Kumar**  
**Internship portfolio | August 2026**

A four-week data science internship portfolio covering project planning, exploratory analysis, statistical analysis, predictive-modeling methodology, and professional reporting.

> **Separation note:** This repository is the internship project only. The independent `data-analysis-capstone` is maintained in its own GitHub repository and is not part of this project.

## Project at a glance

**Problem definition → Data understanding → Exploration → Statistical analysis → Modelling → Evaluation → Insight → Action → Measurement**

The work emphasizes analytical reasoning, data quality, leakage prevention, validation, limitations and clear communication.

## Project map

| Week | Focus | Nature of work |
|---|---|---|
| **01** | Project Planning & Strategy | Scope, objectives, data strategy, evaluation and governance |
| **02** | EDA & Visualisation | Data-quality, exploration, visualization and documentation framework |
| **03A** | Python ML Development | Leakage-safe preprocessing, model candidates, validation, thresholding and monitoring plan |
| **03B** | Statistical Analysis in R | Breast Cancer Wisconsin analysis, statistical tests, logistic regression, random forest and diagnostics |
| **04** | Final Reporting & Insights | Executive communication, insight-to-action framework and future work |

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
├── docs/
├── Week-1-Project-Planning/
├── Week-2-EDA/
├── Week-3-Machine-Learning/
├── Week-4-Final-Report/
├── .gitignore
└── README.md
```

## Week 3: executed R analysis

The R track uses the **Breast Cancer Wisconsin (Diagnostic)** dataset. It covers data inspection, missing-value and class-balance checks, distribution and assumption checks, Welch two-sample t-tests, correlation/multicollinearity analysis, logistic regression, VIF diagnostics, a stratified 70/30 train-test split, 10-fold cross-validation, random forest, confusion matrices, ROC/AUC evaluation, residual diagnostics, Cook's distance and variable importance.

This is an educational classification exercise and **not a clinical diagnostic system**.

## Week 3: Python ML plan

The Python material is a development and evaluation plan for a hypothetical customer-churn classification problem. It covers leakage-safe preprocessing, an interpretable baseline, candidate models, cross-validation, threshold selection, error analysis, deployment and monitoring. It should be read as methodology rather than evidence of completed churn-model performance.

## Responsible interpretation

The repository deliberately distinguishes:

- **Observed analysis:** results produced by the executed R workflow.
- **Planned methodology:** workflows describing how future analysis should be performed.
- **Illustrative reporting:** examples used to demonstrate executive communication.

This prevents hypothetical outcomes from being presented as measured business results.

## Tools

- **Python:** pandas, NumPy, scikit-learn, Matplotlib and Seaborn where applicable
- **R:** tidyverse, caret, corrplot, car, pROC, randomForest and broom
- Exploratory data analysis and statistical testing
- Predictive modelling and model evaluation
- Data storytelling and stakeholder communication
- Git/GitHub for version control and documentation

## Data and reproducibility

The `data/` directory contains source and handling notes. Public datasets are not copied into the repository without checking their source, citation and redistribution conditions. The R workflow documents the expected local dataset structure.

No private credentials, confidential internship information or unnecessary personal data should be committed to this repository.

## Independent capstone — kept separate

The repository **`data-analysis-capstone`** is a separate project and should be evaluated independently. It contains its own end-to-end R data-analysis workflow. It is intentionally not duplicated inside this internship repository.

This repository should therefore be read as **internship evidence**, while the capstone should be read as a **separate technical portfolio project**.

## Author

**Kartik Kumar**

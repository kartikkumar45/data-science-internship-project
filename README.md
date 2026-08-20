# Data Science Internship Project

**Kartik Kumar**

A four-week data science portfolio project covering project planning, exploratory analysis, statistical analysis, predictive modelling, and communication of insights.

> **Scope note:** This repository contains a mixture of project plans, analytical frameworks, executable analysis, and illustrative reporting. It does not present hypothetical examples as real business outcomes.

## What this project demonstrates

The work is organised around a practical analytical workflow:

**Problem definition → Data understanding → Exploration → Statistical analysis → Modelling → Evaluation → Insight → Action → Measurement**

The emphasis is not only on building models, but on explaining why an analytical choice is appropriate, checking its limitations, and translating results into decisions that a non-technical stakeholder can understand.

## Project map

| Week | Focus | What is included |
|---|---|---|
| **01** | Project Planning & Strategy | Problem framing, scope, data strategy, evaluation, governance and delivery planning |
| **02** | EDA & Visualisation | Data-quality checks, exploratory analysis framework, visualisation choices and interpretation guidance |
| **03A** | Python ML Development | Leakage-safe preprocessing, baseline and candidate models, validation, thresholding and monitoring plan |
| **03B** | Statistical Analysis in R | Breast Cancer Wisconsin (Diagnostic) analysis, hypothesis testing, logistic regression, random forest and diagnostics |
| **04** | Final Reporting & Insights | Executive summary, evidence-to-action framework, visual communication, measurement and future work |

## Tools

- **Python:** pandas, NumPy, scikit-learn, Matplotlib/Seaborn where applicable
- **R:** tidyverse, caret, corrplot, car, pROC, randomForest and broom
- Statistical testing and diagnostic analysis
- Exploratory data analysis
- Predictive modelling and model evaluation
- Data storytelling and stakeholder communication

## A closer look at Week 3

The R analysis uses the **Breast Cancer Wisconsin (Diagnostic)** dataset and includes data inspection, class-balance checks, distribution and assumption checks, Welch t-tests, correlation analysis, logistic regression, VIF diagnostics, a stratified train/test split, 10-fold cross-validation, random forest, confusion matrices, ROC/AUC evaluation, residual diagnostics, Cook's distance and variable-importance analysis.

The Python Week 3 material is a development and evaluation plan for a hypothetical customer-churn classification problem. It should therefore be read as methodology rather than as evidence of completed model performance.

## Responsible interpretation

The project deliberately distinguishes between:

- **observed analytical results** from an actual dataset;
- **planned methodology** that describes how an analysis would be performed; and
- **illustrative/mock material** used to demonstrate communication and presentation design.

This distinction matters because a strong data-science project should make clear what the evidence supports and what it does not.

The R healthcare example is an educational classification exercise and is **not a clinical diagnostic system**.

## Data

The `data/` directory contains source and reproducibility notes. Public datasets are not copied into the repository without checking their current source, citation and redistribution conditions.

## Repository structure

```text
.
├── Week-1-Project-Planning/
├── Week-2-EDA/
├── Week-3-Machine-Learning/
├── Week-3-Statistical-Analysis-R/
├── Week-4-Final-Report/
├── data/
├── .gitignore
└── README.md
```

## About this repository

This is my first GitHub project and is being developed as part of my data science internship work. I have kept the repository intentionally focused: each file is included to document part of the analytical process rather than to add unnecessary portfolio decoration.

## Author

**Kartik Kumar**

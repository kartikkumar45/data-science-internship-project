# Week 1 — Data Science Project Planning & Strategy

**Prepared by:** Kartik Kumar  
**Date:** 15 August 2026  
**Project:** Hypothetical Python-Based Customer Churn Prediction Project  
**Planned effort:** 33 hours

## Executive summary

This report defines a practical strategy for a hypothetical customer-churn prediction project. The business problem is to identify customers who may be at higher risk of leaving so retention teams can act before churn occurs. The project is deliberately planned before a dataset is introduced so that the target definition, workflow, assumptions, quality controls, success measures and delivery approach are explicit.

The proposed solution uses Python for data preparation, exploratory analysis, feature engineering, classification modelling, evaluation and interpretation. The strategy treats model accuracy as only one part of success; reproducibility, data quality, decision value, responsible data use and operational usefulness are equally important.

## Business problem and scope

The proposed target is whether an active customer churns during a defined future observation window. Potential inputs include tenure, service usage, billing behaviour, support interactions, contract type, payment method and relevant account attributes.

**In scope:** historical customer analysis, data quality, EDA, feature engineering, binary classification, validation, error analysis, interpretability, recommendations and future monitoring.

**Out of scope:** production deployment during the planning stage, automatic customer actions, guarantees that an individual will churn, unnecessary sensitive data collection and final deployment decisions before validation and governance review.

## Methodology

The project follows a modified CRISP-DM-style lifecycle:

1. **Problem framing** — define churn, prediction horizon, decision supported and trade-offs between missed churners and unnecessary interventions.
2. **Data strategy** — consider CRM, subscription, billing, product-usage and support sources; document joins and a data dictionary.
3. **Data quality** — inspect schemas, types, duplicates, missingness, invalid ranges, inconsistent categories, dates, units and extreme values.
4. **EDA** — compare churn and non-churn populations across tenure, contract, usage, billing and support behaviour; inspect distributions, correlations, imbalance and interactions.
5. **Feature engineering** — create meaningful tenure, activity, usage, support and payment indicators where supported by the data; document business meaning.
6. **Modelling** — begin with interpretable logistic regression, then compare decision trees, random forests and gradient boosting where justified.
7. **Evaluation** — use holdout testing or appropriate cross-validation and review confusion matrix, precision, recall, F1, ROC-AUC, PR-AUC, calibration, false positives and false negatives.
8. **Decision and deployment planning** — translate predictions into ranked risk and retention actions, followed by controlled piloting, monitoring and governance review.

## Architecture

**Business → Data → Analytics → Features → Model → Decision → Monitoring**

Each layer has a defined output: project definition, clean analytical data, EDA findings, model-ready features, validated model, actionable risk segments and a monitoring/retraining plan.

## Technology

Python, pandas, NumPy, Matplotlib/Seaborn, scikit-learn and Jupyter are the primary planned tools, with SQL/Excel/CSV considered as potential data inputs and Git/GitHub for version control.

## 33-hour delivery plan

| Phase | Hours | Main output |
|---|---:|---|
| Problem framing | 4 | Project charter |
| Data strategy | 5 | Data plan |
| Cleaning + EDA | 8 | EDA findings |
| Features + modelling | 7 | Model comparison |
| Validation | 4 | Validation summary |
| Insights + report | 5 | Final report |

The larger allocation to data quality and EDA reflects the principle that strong modelling cannot compensate for poorly understood or unreliable data.

## Risks and controls

Key risks include missing/inconsistent data, class imbalance, leakage, concept drift, overfitting, weak interpretability, privacy concerns and an actionability gap. Controls include explicit quality checks, precision/recall/F1/PR-AUC, leakage-safe pipelines, monitoring triggers, cross-validation, interpretable baselines, governance review and KPI-linked actions.

## Quality and reproducibility

Every dataset, feature definition, transformation and source should be documented. Train/test separation must be preserved through preprocessing and feature engineering. Random seeds and environment details should be recorded where reproducibility matters. Model decisions should be traceable from data preparation through final metrics.

## Strategic conclusion

The strongest data-science projects begin with a well-defined decision problem rather than a model. Once a real dataset is available, the next priority is to validate these assumptions against actual data availability and quality, then proceed through reproducible analysis, model validation and business-focused interpretation. The intended outcome is a trustworthy analytical system that helps an organisation make better retention decisions—not simply a high-scoring classifier.

> **Scope note:** This is a project-planning document. It does not claim completed churn-model results.

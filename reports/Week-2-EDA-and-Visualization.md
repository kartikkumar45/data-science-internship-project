# Week 2 — Exploratory Data Analysis & Visualization Framework

**Prepared by:** Kartik Kumar  
**Date:** 15 August 2026  
**Deliverable:** Reusable EDA and visualization framework

## Executive overview

Exploratory Data Analysis is treated here as a structured reasoning process rather than a collection of charts or pandas commands. The framework is designed to establish what the data contains, how reliable it is, which patterns are present and which questions deserve further investigation.

Because no dataset was supplied for this task, this document presents a reusable framework rather than dataset-specific findings.

## End-to-end framework

| Stage | Key question | Expected output |
|---|---|---|
| 1. Define objective | What decision or problem should the analysis support? | Analytical questions and success criteria |
| 2. Profile data | What is available and how is it structured? | Dataset profile and data dictionary |
| 3. Audit quality | Can the data support the intended analysis? | Quality scorecard and issue log |
| 4. Prepare | Which transformations are justified? | Analysis-ready dataset |
| 5. Univariate EDA | What does each important variable look like? | Distributions and summaries |
| 6. Bivariate EDA | How do important variables relate? | Relationships and group differences |
| 7. Multivariate EDA | What interactions or segments emerge? | Higher-order patterns |
| 8. Validate | Are important findings robust? | Validated findings and caveats |
| 9. Communicate | What matters to the stakeholder? | Prioritized insights |
| 10. Handoff | What should happen next? | Modelling questions and next steps |

## Data understanding and quality

Initial inspection should record dataset shape, analytical grain, column names, data types, representative values, candidate identifiers, target variables and derived fields. A data dictionary should capture variable meaning, type, unit, expected range and business relevance.

Quality checks should cover completeness, uniqueness, validity, consistency, timeliness and relational integrity. Missingness should be quantified and investigated by context; structural absence should not automatically be treated as an error. Duplicate records, inconsistent categories, impossible dates and unit mismatches require explicit review.

Outliers should not be deleted merely because they are unusual. They may represent errors, rare events or meaningful business cases. IQR and, where appropriate, z-score screening can identify candidates for investigation, but every treatment decision should have a documented rationale.

## Exploration layers

**Univariate:** centre, spread, distribution shape, skewness, category frequency, imbalance, date coverage and text patterns.

**Bivariate:** scatter plots and correlation for numerical pairs; box/violin plots and grouped summaries for category-versus-numeric comparisons; contingency tables for category pairs; line charts for time-based relationships.

**Multivariate:** correlation matrices, pair plots, grouped/faceted charts and dimensionality reduction where appropriate. Relationships should be checked across important segments rather than accepted at face value.

## Visualization principles

The analytical question should determine the visual. Histograms/density plots support distribution questions; box plots help inspect outliers; bar charts support category comparison; scatter plots show relationships; line charts show movement over time; heat maps provide compact correlation views; and faceted/violin plots compare distributions across groups.

Final communication should retain only visuals that materially support the story. Titles, axes, units and annotations should make interpretation possible without narration. Decorative 3D effects should be avoided, and colour should be purposeful and accessible.

## From visual pattern to evidence

EDA findings are hypotheses until supported by appropriate evidence. Important conclusions should use summary statistics, effect sizes or statistical tests where appropriate. Statistical significance should not be confused with practical significance, and observational correlation should not be described as causation without an appropriate study design.

A useful insight chain is:

**Observation → Evidence → Interpretation → Implication → Next action**

This keeps exploratory findings connected to decisions without overstating certainty.

## Reproducible implementation

A real implementation would preserve raw data unchanged, document transformations, separate generated figures from source data, record package versions and maintain notebooks/scripts in a structured project. A representative Python workflow would use pandas for profiling, Seaborn/Matplotlib for visuals and appropriate statistical/modeling libraries for validation.

## Connection to machine learning

EDA can influence feature engineering, model choice and validation. Skew may motivate transformations, high correlation may motivate feature selection or regularisation, categorical imbalance may affect encoding and evaluation, time dependence may require chronological validation, and potential leakage must be removed before training.

## Limitations

No real dataset was supplied for this assignment. In a live project, conclusions must be based on actual data, domain context and the data-generating process. EDA can reveal associations but does not establish causality by itself, and historical data may contain sampling bias or measurement changes.

> **Scope note:** This is a reusable EDA framework, not a claim of completed dataset-specific findings.

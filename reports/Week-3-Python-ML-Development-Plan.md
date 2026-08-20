# Week 3 — Python-Based Machine Learning Model Development & Evaluation Plan

**Prepared by:** Kartik Kumar  
**Date:** 16 August 2026  
**Project:** Hypothetical customer-churn classification

## Executive summary

This report proposes an end-to-end machine-learning strategy for predicting customer churn in a subscription business. The model would estimate the probability that an active customer leaves within a predefined future window so a retention team can prioritise timely intervention.

The plan deliberately separates business definition, data preparation, model development and final evaluation. Logistic Regression provides an interpretable baseline; Decision Tree, Random Forest and Gradient Boosting are candidate nonlinear alternatives. Selection relies on stratified cross-validation and business-relevant metrics rather than accuracy alone.

The central controls are target-leakage prevention, reproducible preprocessing, an untouched final test set, appropriate treatment of class imbalance, threshold selection based on business cost, and post-deployment monitoring.

## Problem definition

The hypothetical target is binary: `1` for churn within the agreed prediction window and `0` otherwise. The prediction date and observation window must be fixed before feature engineering. Every predictor must represent information available on or before that prediction date.

Post-outcome information, cancellation records, retention actions triggered after prediction and variables derived from the future must be excluded. Otherwise offline performance can look strong while failing in real use.

## Objectives and success criteria

The workflow should:

- build a reproducible binary-classification pipeline;
- establish a transparent baseline;
- compare stronger ensemble candidates;
- use validation that provides a credible estimate of generalisation;
- review recall, precision, F1, ROC-AUC and PR-AUC together;
- check probability calibration when scores drive prioritisation;
- choose an operating threshold using intervention capacity and error costs;
- define deployment, monitoring and retraining responsibilities.

## Leakage-safe pipeline

The proposed sequence is:

**Raw data → train/test split → preprocessing fit on training data → feature engineering → cross-validation/model selection → final test evaluation → threshold selection → interpretation → deployment/monitoring**

Preprocessing must be fitted inside the training workflow so information from validation or test observations does not influence model development.

## Model strategy

| Role | Candidate | Reason |
|---|---|---|
| Baseline | Logistic Regression | Interpretable and useful as a reference |
| Candidate | Decision Tree | Captures nonlinear rules and interactions |
| Candidate | Random Forest | Robust nonlinear ensemble |
| Candidate | Gradient Boosting | Strong nonlinear candidate where justified |

Model choice should balance predictive performance, stability, calibration, interpretability and operational practicality.

## Validation and metrics

Stratified cross-validation should support development when class balance is relevant, followed by an untouched final test set. Where customer or time structure creates dependence, the split design should reflect the actual prediction setting.

Accuracy is insufficient on its own. Precision and recall describe intervention trade-offs; F1 provides a combined view; ROC-AUC measures ranking ability across thresholds; PR-AUC can be more informative when the positive class is relatively uncommon. Calibration should be checked if predicted probabilities are used for prioritisation.

## Threshold selection

A default 0.50 cutoff should not be treated as automatically correct. The threshold should reflect the cost of false positives, the cost of missed churners and the number of interventions the business can realistically execute. A practical decision framework is to estimate expected value across candidate thresholds and choose one that meets both business and statistical constraints.

## Error analysis and interpretation

The final review should examine false positives, false negatives, segment-level performance and major feature contributions. The goal is not only to identify a winning model but to understand where it works, where it fails and whether its behaviour is acceptable for the intended decision.

## Deployment and monitoring

A production version would require versioned preprocessing and model artefacts, controlled deployment, access controls and clear ownership. Monitoring should cover input-data quality, feature distributions, prediction distributions, realised outcomes, calibration, model performance and business KPIs. Retraining triggers should be defined before performance deteriorates materially.

## Quality gates

| Gate | Question |
|---|---|
| Definition | Is the target unambiguous and decision-aligned? |
| Data | Are features valid, available at prediction time and sufficiently complete? |
| Validation | Does the validation design match time, customers and class balance? |
| Performance | Does the model meet predefined metric and stability expectations? |
| Threshold | Does the operating point match intervention capacity and error costs? |
| Explainability | Can important drivers and errors be explained? |
| Operations | Are monitoring, versioning and retraining responsibilities defined? |

A model should pass both statistical and operational gates before deployment.

## Conclusion

The proposed workflow treats machine learning as a decision system rather than an isolated algorithm. Leakage-safe preprocessing, an interpretable baseline, disciplined validation, threshold analysis, error review and monitoring provide a stronger foundation than optimising a single headline score.

> **Scope note:** This document is a development and evaluation plan. It does not claim completed churn-model performance.

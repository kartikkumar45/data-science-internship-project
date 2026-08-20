# Week 3 — Python-Based Machine Learning Model Development & Evaluation

**Deliverable:** A practical plan for developing and evaluating a customer churn classification workflow in Python.

## Scope

The report defines a leakage-safe preprocessing pipeline, an interpretable baseline, candidate classifiers, validation and tuning, threshold selection, error analysis, model interpretation, deployment design, monitoring, retraining and quality gates.

## Technical direction

- Python with pandas, NumPy and scikit-learn
- Logistic regression as an interpretable baseline
- Decision tree, random forest and gradient-boosting candidates where justified
- Cross-validation and an untouched final test set
- Precision, recall, F1, ROC-AUC and PR-AUC where appropriate
- Threshold selection based on intervention capacity and error costs
- Calibration and segment-level performance checks
- Versioned preprocessing/model artefacts and post-deployment monitoring

## Important scope note

This report is a **development and evaluation plan**, not a claim of completed model performance. No fabricated accuracy or AUC values are presented as real results. Actual model metrics should only be added after the analysis is run against a documented dataset.

## Quality gates

Before deployment, the plan requires clear target definition, valid prediction-time features, appropriate validation, acceptable performance and stability, a defensible threshold, interpretable outputs, and an operational monitoring/retraining process.

## Main reference file

`Week_3_Top_1_Percent_ML_Model_Development_Report.docx`

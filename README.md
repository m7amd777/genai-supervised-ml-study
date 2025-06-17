# A Study on Generative AI in Generating Supervised Machine Learning Models

This repository contains the code, datasets, and analysis for the research paper **"A Study on Generative AI in Generating Supervised Machine Learning Models"** by Yousif Abuzuhaira, Mohamed Badawy, and Hasan Kadhem, presented at the International Conference on Intelligent Systems Design and Engineering Applications (ISDEA), representing the American University of Bahrain.

## 🧠 Motivation

Generative AI models—especially large language models (LLMs) like ChatGPT, Claude, Gemini, and Copilot—have shown remarkable capabilities in content generation, coding assistance, and task automation. However, little research has been conducted to assess their potential in generating entire machine learning (ML) models autonomously.

This study aims to evaluate whether LLMs can effectively perform supervised machine learning tasks such as:
- Data preprocessing  
- Model training and testing  
- Python code generation for ML pipelines  

By comparing the generated results with traditional model training approaches, this work explores the emerging role of LLMs as low-code/no-code assistants in data science workflows.

---

## 📊 Methodology

The study is divided into two main phases:

### 🔹 Phase 1: Traditional ML Training (Baseline)
- Two public datasets were used:
  - **Regression**: Laptop Price Prediction
  - **Classification**: Portuguese Bank Marketing Dataset
- Models were trained using MATLAB’s ML tools with preprocessing, cross-validation, and model comparison across 24+ classifiers and 20+ regressors.
- The best models were identified by accuracy and F1-score.

### 🔹 Phase 2: LLM Evaluation
- Four LLMs were tested: **ChatGPT-4, Claude-3, Gemini-1.5, and Copilot**.
- A structured multi-step prompting strategy was used to simulate the ML pipeline:
  1. Data quality report generation  
  2. Data cleaning & preprocessing  
  3. Model training  
  4. Model evaluation  
- LLMs were assessed on:
  - **Direct task outputs** (e.g., summary reports)
  - **Python code generation** (syntax, correctness, ML pipeline logic)

---
 
## 🗂️ Datasets Used

### 📌 1. Laptop Price Prediction Dataset (Regression)
- **Source**: [Kaggle - Laptop Price Dataset](https://www.kaggle.com/datasets/muhammetvarl/laptop-price)
- **Size**: 1,320 entries
- **Target**: Laptop price in Euros
- **Features**: Manufacturer, screen size, resolution, CPU, RAM, memory type, OS, etc.
- **Challenge**: High cardinality and mixed units in columns like CPU, GPU, and Memory.

### 📌 2. Portuguese Bank Marketing Dataset (Classification)
- **Source**: [Kaggle - Bank Marketing Campaign](https://www.kaggle.com/datasets/edith2021/bank-marketing-campaign?select=bank.csv)
- **Size**: 45,211 entries
- **Target**: Whether a client subscribed to a term deposit ("yes" or "no")
- **Features**: Demographics, financial information, call duration, campaign success, etc.
- **Challenge**: Strong class imbalance (~88% "no" vs 12% "yes")

These datasets were used for training traditional ML models (baseline) and for evaluating LLM capabilities in preprocessing, training, and testing machine learning models.

---

## 🧪 Key Findings

| LLM       | Best Strength                         | Weakness                             |
|-----------|----------------------------------------|--------------------------------------|
| Claude    | Advanced data preprocessing            | Limited success in model training    |
| Gemini    | Strongest in training and testing      | Generic preprocessing logic          |
| ChatGPT   | Consistent results                     | Struggled with hyperparameter tuning |
| Copilot   | Token limit issues with large datasets | Weak performance across all tasks    |

### 🏁 Accuracy Comparisons (Selected Results)

#### Regression (Laptop Dataset)
- Traditional ML best: **Rational Quadratic GPR (81.74%)**
- LLM best (Claude + Random Forest): **93% (test set)**

#### Classification (Bank Dataset)
- Traditional ML best: **Bagged Trees (83.89%)**
- LLM best (Claude & Gemini + Random Forest): **85–86% (test set)**

> ✳️ Note: LLMs often achieved high accuracy due to imbalanced data being overlooked, leading to inflated results with low F1 scores.

---

## 📁 Contents

- `/MATLAB CODE/` – Code used in preparation of the datasets
- `/figures/` – IMportant Figures of the findings
- `/phase1 matlab/` – Content Affliated with Phase1 matlab
- `/phase2 results/` – Content Affliated with Phase2 results
- `/prompts` – Prompt Strategies used

---

## 📄 Citation (TBA)

```
PUBLISH TBA
```

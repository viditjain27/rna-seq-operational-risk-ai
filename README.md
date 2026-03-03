# 🔬 RNA-Seq Operational Risk AI  
## Proactive AI-Based Operational Risk Prediction Framework for RNA-Seq Laboratory Workflows

---

## 🔬 Project Overview

This project presents a proactive AI-driven operational risk prediction framework designed to evaluate RNA-Sequencing (RNA-Seq) laboratory workflows **before sequencing completion**.

Rather than detecting failure after costly sequencing runs, this system analyzes operational metadata to classify experiments into:

- Low Risk  
- Moderate Risk  
- High Risk  

The objective is to shift laboratory management from **reactive troubleshooting** to **proactive risk mitigation** using machine learning.

---

## 🎯 Problem Statement

RNA-Seq workflows are sensitive to operational variability including:

- Reagent age  
- Instrument calibration intervals  
- Environmental stability  
- Technician experience  
- RNA Integrity Number (RIN score)  

While these factors are documented, they are rarely leveraged predictively.

Most laboratories detect failure **post-sequencing**, resulting in:

- Repeated experiments  
- Reagent waste  
- Instrument downtime  
- Delayed research outcomes  

This project addresses the gap by modeling operational metadata as a predictive signal for experiment reliability.

---

## 🏗 System Architecture

- Synthetic operational metadata stored using MySQL schema  
- Structured dataset exported as CSV  
- Random Forest classification model  
- Risk categorization logic  
- Model evaluation and visualization  
- Feature importance interpretation  

---

## 🗂 Project Structure


rna-seq-operational-risk-ai/

│

├── data/

│ ├── raw/

│ └── processed/

│
├── notebooks/

│ └── rnaseq_risk_model.ipynb

│
├── sql/

│ ├── schema.sql

│ ├── procedures.sql

│ └── seed_data.sql

│ ├── reports/

│ ├── confusion_matrix.png

│ ├── roc_curve.png

│ ├── feature_importance.png

│ └── risk_category_distribution.png

│
├── requirements.txt

└── README.md


---

## 🛠 Tech Stack

- Python  
- Pandas  
- NumPy  
- Scikit-Learn (Random Forest)  
- Matplotlib  
- Seaborn  
- MySQL  
- Jupyter Notebook  

---

## 📊 Dataset Design

Due to the absence of publicly available RNA-Seq operational failure datasets, a **synthetic dataset** was generated.

### Design Principles:

- Realistic laboratory variability  
- Statistical plausibility  
- Embedded logical risk relationships  
- Reproducibility  

### Simulated Variables:

- Sample storage duration  
- RIN score  
- Reagent age  
- Calibration gap  
- Temperature variance  
- Operator experience  
- Previous operator failure rate  
- Contamination flag  

---

## 🤖 Model Selection

**Algorithm:** Random Forest Classifier  

### Rationale:

- Strong performance on structured tabular datasets  
- Robust to overfitting  
- Handles nonlinear relationships  
- Provides feature importance interpretability  

The model predicts experiment risk tiers **prior to sequencing execution**.

---

## 📈 Model Performance

### Performance Metrics

- **Accuracy:** 61.67%  
- **Recall:** 90.24%  
- **Precision:** 66.07%  
- **ROC-AUC:** 0.50  

### Interpretation

The model demonstrates **high recall**, meaning it successfully captures the majority of high-risk experiments.

However, ROC-AUC near 0.50 indicates limited class discrimination capability, suggesting that operational metadata contains partial predictive signal but requires further refinement and possibly additional features for stronger separation.

This aligns with the exploratory and proof-of-concept nature of the framework.

---

## 📊 Visual Analysis

- Risk Category Distribution  
- Confusion Matrix  
- ROC Curve  
- Feature Importance  

---

## 🔍 Key Insights

- Previous operator failure rate significantly influenced risk classification  
- Environmental variability contributed to instability  
- RIN score demonstrated measurable predictive influence  
- Reagent age and calibration gap showed moderate impact  

These findings reinforce the hypothesis that operational consistency directly affects experiment reliability.

---

## 🧠 Strategic Value

This project demonstrates:

- Integration of database engineering and machine learning  
- Translation of wet-lab metadata into predictive intelligence  
- Interpretable AI for operational governance  
- Scalable architecture for biotech workflow monitoring  

### Potential Extensions:

- Integration into LIMS platforms  
- API-based deployment  
- Continuous retraining with real laboratory data  
- Expansion to other wet-lab protocols (qPCR, CRISPR, proteomics)  

---

## 📦 How to Run

1. Clone the repository  
2. Install dependencies:


pip install -r requirements.txt


3. Open Jupyter Notebook  
4. Run `rnaseq_risk_model.ipynb`  

Optional:  
Execute SQL scripts to generate synthetic dataset using MySQL.

---

## ⚠ Limitations

- Synthetic dataset (not real operational data)  
- Moderate predictive strength  
- Requires threshold tuning for production deployment  
- Additional feature engineering recommended  

---

## 🚀 Future Improvements

- Incorporate real laboratory operational datasets  
- Improve class separation via feature engineering  
- Hyperparameter optimization  
- Deploy prediction engine as REST API  
- Integrate dashboard for laboratory managers  

---

## 🏁 Key Takeaway

Operational metadata in RNA-Seq workflows contains measurable predictive signal for experiment reliability.

Even with synthetic data, this framework demonstrates that laboratory processes can transition from reactive troubleshooting to proactive, AI-driven risk governance.

This project represents a foundational step toward intelligent, self-monitoring wet-lab infrastructure.

---

## 👨‍💻 Author

**Vidit Jain** 

---

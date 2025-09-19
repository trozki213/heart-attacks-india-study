# Heart Attacks in India — A Statistical Study

This project investigates the rising incidence of **heart attacks among young adults in India** (ages 18–35) through a statistical analysis of demographic, lifestyle, medical, and clinical factors.  
The study aims to understand whether modifications in **lifestyle and behavior** can mitigate cardiovascular risks and help explain the alarming trend observed in recent years .

---

## 📖 Project Description

- **Context**: Heart attacks, traditionally associated with older adults, are increasingly affecting young individuals in India.  
- **Dataset**: Published on Kaggle (MIT license), covering the years **2019–2023**. Includes demographic, lifestyle, medical history, and clinical test results.  
- **Target Variable**: *Heart Attack Likelihood* (binary: Yes/No).  
- **Approach**:
  - **Exploratory Data Analysis (EDA)** → histograms, bar plots, box plots.  
  - **Logistic Regression** → tested single covariates and multivariable models.  
  - **Interaction Effects** → discovered significant combined effects (e.g., Gender × Diet × Physical Activity, Hypertension × Diabetes).  
  - **LASSO Regression** → reduced model complexity, avoided overfitting, and selected key predictors.  
  - **Model Evaluation** → AIC, BIC, and Likelihood Ratio Tests confirmed the reduced model as more robust and interpretable.  

---

## 📊 Key Findings

- Heart attack risk **cannot be explained by single factors**; it emerges from **interactions** between demographic, lifestyle, and medical variables.  
- Significant predictors include:
  - Moderate physical activity combined with gender/diet.
  - Diabetes and hypertension interactions with chest pain type.
- Some predictors act as **protective factors** (e.g., moderate exercise, certain dietary habits).  
- Public health initiatives should **promote positive lifestyle interventions** to reduce risk.  


# Heart Attack Risk among Young Adults in India

**Logistic regression with interaction effects, LASSO selection and likelihood-ratio testing on a dataset of 18–35-year-olds in India (2019–2023).**

Course project in statistics, Bocconi University (January 2025) · Benedicta Scarongella, Antonio Troiano · [Report (PDF)](report/StatisticProject.pdf)

## Question

Heart attacks, traditionally associated with older adults, are increasingly reported among young people in India. Which demographic, lifestyle and clinical factors, alone or in combination, are associated with a higher likelihood of a heart attack?

## Data

A public Kaggle dataset (MIT licence) of young adults aged 18–35, recorded between 2019 and 2023. The binary target is *heart attack likelihood*; the covariates cover demographics (age, gender, urban or rural residence, socio-economic status), lifestyle (smoking, alcohol, diet, physical activity, screen time, sleep), medical history (family history, diabetes, hypertension) and clinical measurements (cholesterol, BMI, stress, resting heart rate, ECG, chest-pain type, blood oxygen, triglycerides).

## Method

1. **Exploratory analysis.** Distributions of every covariate against a fitted normal density, and the target broken down by each categorical factor.
2. **Single-covariate tests.** Likelihood-ratio tests of each predictor on its own: only stress and urban/rural residence are significant at the 5% level.
3. **Multivariable logistic regression with interactions.** Since main effects explain little, the model adds selected interactions: gender × diet × physical activity, hypertension × age, hypertension × diabetes, hypertension × diabetes × chest pain, and age × gender × diet.
4. **LASSO.** L1-penalised logistic regression, with the penalty chosen by 10-fold cross-validation, reduces the model to six terms, which are then refitted as a parsimonious logistic model.
5. **Model comparison.** AIC, BIC and a likelihood-ratio test between the full and the reduced model.

## Results

| Model | Parameters | AIC | BIC |
|---|---:|---:|---:|
| Full model with interactions | 51 | 10,162.5 | 10,530.3 |
| Reduced model after LASSO | 7 | **10,101.6** | **10,152.1** |

The likelihood-ratio test gives p = 0.98: the 44 extra parameters of the full model do not significantly improve the fit, so the reduced model is preferred on every criterion.

- **Risk comes from combinations, not single factors.** The terms that survive LASSO are interactions such as gender × diet × physical activity and hypertension × diabetes × chest-pain type.
- **Some combinations are protective.** Negative coefficients, for instance for moderate physical activity in some groups, point to lifestyle factors associated with lower risk.

**Limitations.** The data are cross-sectional and partly self-reported, so the associations are not causal, and the sample covers young adults in India only.

## Repository structure

```
.
├── code/code.R                  Full analysis: exploratory plots, logistic regression, interactions, LASSO, model comparison
├── data/data.csv                Dataset (semicolon-separated)
├── report/StatisticProject.pdf  Project report
└── LICENSE
```

## Reproducing the analysis

Open `code/code.R` in R or RStudio with the working directory set to the repository root and run it from top to bottom. The script reads `data/data.csv` directly and installs the two additional packages it needs (`lmtest` and `glmnet`) if they are missing.

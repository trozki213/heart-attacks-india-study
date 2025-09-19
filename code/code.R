#Import the CSV file in R 
data_set=read.csv(file.choose(), header=TRUE, sep=";")
attach(data_set)
View(data_set) #to visualize the data
summary(data_set)

#Graphs in 1 variable: Histograms compared to standard normal distribution 
hist(Age, main="Histogram of Age", 
               xlab="Age", ylab="Frequency",
               breaks=20, col="darkred", probability=TRUE)
normal_distribution=curve(dnorm(x, mean(Age), sd=sd(Age)), 
                          col="darkblue", add=TRUE, lwd=3)

hist(Screen, main="Histogram of Screen Time", 
               xlab="Hours spent on screens per day on average", ylab="Frequency",
               breaks=20, col="darkred", probability=TRUE)
normal_distribution=curve(dnorm(x, mean(Screen), sd=sd(Screen)), 
                          col="darkblue", add=TRUE, lwd=3)

hist(Sleep, main="Histogram of Sleep Duration", 
               xlab="Hours spent sleeping per day on average", ylab="Frequency",
               breaks=20, col="darkred", probability=TRUE)
normal_distribution=curve(dnorm(x, mean(Sleep), sd=sd(Sleep)), 
                          col="darkblue", add=TRUE, lwd=3)

hist(Cholesterol, main="Histogram of Cholesterol Level", 
               xlab="Cholesterol Level in mg/dL", ylab="Frequency",
               breaks=20, col="darkred", probability=TRUE)
normal_distribution=curve(dnorm(x, mean(Cholesterol), sd=sd(Cholesterol)), 
                          col="darkblue", add=TRUE, lwd=3)

hist(BMI, main="Histogram of Body Mass Index (BMI)", 
               xlab="BMI", ylab="Frequency",
               breaks=20, col="lavender", probability=TRUE)
normal_distribution=curve(dnorm(x, mean(BMI), sd=sd(BMI)), 
                          col="violet", add=TRUE, lwd=3)

hist(RHR, main="Histogram of Resting Heart Rate", 
               xlab="Resting Heart Rate", ylab="Frequency",
               breaks=20, col="darkred", probability=TRUE)
normal_distribution=curve(dnorm(x, mean(RHR), sd=sd(RHR)), 
                          col="darkblue", add=TRUE, lwd=3)

hist(MHRA, main="Histogram of Maximum Heart Rate Achieved ", 
               xlab="Maximum Heart Rate Achieved ", ylab="Frequency",
               breaks=20, col="darkred", probability=TRUE)
normal_distribution=curve(dnorm(x, mean(MHRA), sd=sd(MHRA)), 
                          col="darkblue", add=TRUE, lwd=3)

hist(BloodOxygen, main="Histogram of Blood Oxygen Level", 
               xlab="Blood Oxygen Level(in %)", ylab="Frequency",
               breaks=20, col="darkred", probability=TRUE)
normal_distribution=curve(dnorm(x, mean(BloodOxygen), sd=sd(BloodOxygen)), 
                          col="darkblue", add=TRUE, lwd=3)

hist(Triglyceride, main="Histogram of Triglyceride", 
               xlab="Triglyceride Level (mg/dL)", ylab="Frequency",
               breaks=20, col="darkred", probability=TRUE)
normal_distribution=curve(dnorm(x, mean(Triglyceride), sd=sd(Triglyceride)), 
                          col="darkblue", add=TRUE, lwd=3)

#Graphs in 1 variable: BarPlots
barplot(table(Smoking),main = "Smoking Status",
        col = "grey",
        ylab = "Frequency")

barplot(table(Alcohol),
        main = "Alcohol Consumption",
        col = "brown",
        ylab = "Frequency")

barplot(table(Diet),
        main = "Diet Type",
        col = "green",
        ylab = "Frequency")

barplot(table(UR),
        main = "Rural vs Urban",
        col = "lavender",
        ylab = "Frequency")

barplot(table(Gender),
        main = "Gender",
        col = "red",
        ylab = "Frequency")

barplot(table(SES),
        main = "Socioeconomic Status",
        col = "gold",
        ylab = "Frequency")

barplot(table(PhysicalA),
        main = "Physical Activity",
        col = "blue",
        ylab = "Frequency")

barplot(table(FamilyHistory),
        main = "Family History",
        col = "purple",
        ylab = "Frequency")

barplot(table(ECG),
        main = "ECG Type",
        col = "lightyellow",
        ylab = "Frequency")

barplot(table(Diabetes),
        main = "Diabetes Status",
        col = "navy",
        ylab = "Frequency")

barplot(table(Stress),
        main = "Stress Level",
        col = "pink",
        ylab = "Frequency")

barplot(table(Hypertension),
        main = "Hypertension Status",
        col = "forestgreen",
        ylab = "Frequency")

barplot(table(ChestPain),
        main = "Chest Pain Type",
        col = "red",
        ylab = "Frequency")

barplot(table(HeartAttack),
        main = "Heart Attack Risk",
        col = "maroon",
        ylab = "Frequency")

HeartAttack2=as.factor(HeartAttack)

#Graphs in 2 variables: Boxplots
boxplot(Age ~ HeartAttack2, data = data_set,
        main = "Age by Heart Attack Outcome",
        xlab = "Heart Attack Outcome",
        ylab = "Age",
        col = c("lightblue", "lightgreen"))

boxplot(Screen ~ HeartAttack2, data = data_set,
        main = "Screen Time by Heart Attack Outcome",
        xlab = "Heart Attack Outcome",
        ylab = "Hours spent on screens per day on average",
        col = c("lightblue", "lightgreen"))

boxplot(Sleep ~ HeartAttack2, data = data_set,
        main = "Sleep Duration by Heart Attack Outcome",
        xlab = "Heart Attack Outcome",
        ylab = "Hours spent sleeping per day on average",
        col = c("lightblue", "lightgreen"))

boxplot(Cholesterol ~ HeartAttack2, data = data_set,
        main = "Cholesterol Level by Heart Attack Outcome",
        xlab = "Heart Attack Outcome",
        ylab = "Cholesterol Level in mg/dL",
        col = c("lightblue", "lightgreen"))

boxplot(BMI ~ HeartAttack2, data = data_set,
        main = "Body Mass Index by Heart Attack Outcome",
        xlab = "BMI",
        ylab = "Cholesterol Level in mg/dL",
        col = c("lightblue", "lightgreen"))

boxplot(RHR ~ HeartAttack2, data = data_set,
        main = "Resting Heart Rate by Heart Attack Outcome",
        xlab = "Resting Heart Rate",
        ylab = "Cholesterol Level in mg/dL",
        col = c("lightblue", "lightgreen"))

boxplot(MHRA ~ HeartAttack2, data = data_set,
        main = "Maximum Heart Rate Achieved by Heart Attack Outcome",
        xlab = "Maximum Heart Rate Achieved ",
        ylab = "Cholesterol Level in mg/dL",
        col = c("lightblue", "lightgreen"))

boxplot(BloodOxygen ~ HeartAttack2, data = data_set,
        main = "Blood Oxygen Levels by Heart Attack Outcome",
        xlab = "Heart Attack Outcome",
        ylab = "Blood Oxygen Levels (in %)",
        col = c("lightblue", "lightgreen"))

boxplot(Triglyceride ~ HeartAttack2, data = data_set,
        main = "Triglyceride Level by Heart Attack Outcome",
        xlab = "Heart Attack Outcome",
        ylab = "Triglyceride Level (mg/dL)",
        col = c("lightblue", "lightgreen"))



#Graphs in 2 variables: Barplots
table1 = table(Gender, HeartAttack)
barplot(table1, beside=TRUE, col=c("pink", "lightblue", "lavender"), 
        legend = rownames(table1), main="Gender vs Heart Attack Likelihood", 
        xlab="Heart Attack Likelihood", ylab="Count")

table2 = table(UR, HeartAttack)
barplot(table2, beside=TRUE, col=c("pink", "lightblue"), 
        legend = rownames(table2), main="UR type vs Heart Attack Likelihood", 
        xlab="Heart Attack Likelihood", ylab="Count")

table3 = table(SES, HeartAttack)
barplot(table3, beside=TRUE, col=c("pink", "lightblue", "lavender"), 
        legend = rownames(table3), main="SES vs Heart Attack Likelihood", 
        xlab="Heart Attack Likelihood", ylab="Count")

table4 = table(Smoking, HeartAttack)
barplot(table4, beside=TRUE, col=c("pink", "lightblue", "lavender"), 
        legend = rownames(table4), main="Smoking Habits vs Heart Attack Likelihood", 
        xlab="Heart Attack Likelihood", ylab="Count")

table5 = table(Alcohol, HeartAttack)
barplot(table5, beside=TRUE, col=c("pink", "lightblue", "lavender"), 
        legend = rownames(table5), main="Alcohol consumption vs Heart Attack Likelihood", 
        xlab="Heart Attack Likelihood", ylab="Count")

table6 = table(Diet, HeartAttack)
barplot(table6, beside=TRUE, col=c("pink", "lightblue", "lavender"), 
        legend = rownames(table6), main="Diet vs Heart Attack Likelihood", 
        xlab="Heart Attack Likelihood", ylab="Count")

table7 = table(PhysicalA, HeartAttack)
barplot(table7, beside=TRUE, col=c("pink", "lightblue", "lavender"), 
        legend = rownames(table7), main="Physical Activity vs Heart Attack Likelihood", 
        xlab="Heart Attack Likelihood", ylab="Count")

table8 = table(FamilyHistory, HeartAttack)
barplot(table8, beside=TRUE, col=c("pink", "lightblue", "lavender"), 
        legend = rownames(table8), main="Family History vs Heart Attack Likelihood", 
        xlab="Heart Attack Likelihood", ylab="Count")

table9 = table(Diabetes, HeartAttack)
barplot(table9, beside=TRUE, col=c("pink", "lightblue"), 
        legend = rownames(table9), main="Diabetes vs Heart Attack Likelihood", 
        xlab="Heart Attack Likelihood", ylab="Count")

table10 = table(Hypertension, HeartAttack)
barplot(table10, beside=TRUE, col=c("pink", "lightblue"), 
        legend = rownames(table10), main="Hypertension vs Heart Attack Likelihood", 
        xlab="Heart Attack Likelihood", ylab="Count")

table11 = table(Stress, HeartAttack)
barplot(table11, beside=TRUE, col=c("pink", "lavender", "lightblue"), 
        legend = rownames(table11), main="Stress level vs Heart Attack Likelihood", 
        xlab="Heart Attack Likelihood", ylab="Count")

table12 = table(ECG, HeartAttack)
barplot(table12, beside=TRUE, col=c("pink", "lightblue"), 
        legend = rownames(table12), main="ECG vs Heart Attack Likelihood", 
        xlab="Heart Attack Likelihood", ylab="Count")

table13 = table(ChestPain, HeartAttack)
barplot(table13, beside=TRUE, col=c("pink", "lightblue", "lavender", "lightgreen"), 
        legend = rownames(table13), main="Chest pain vs Heart Attack Likelihood", 
        xlab="Heart Attack Likelihood", ylab="Count")


#Likelihood Ratio Test
install.packages("lmtest")
library(lmtest)
reduced_model = glm(HeartAttack2 ~ 1, data=data_set, family=binomial)

model_1 = glm(HeartAttack2 ~ Age, data=data_set, family=binomial)
lrtest(reduced_model, model_1)

model_2 = glm(HeartAttack2 ~ Gender, data=data_set, family=binomial)
lrtest(reduced_model, model_2)

model_3=glm(HeartAttack2 ~ UR, data=data_set, family=binomial)
lrtest(reduced_model, model_3)

model_4=glm(HeartAttack2 ~ SES, data=data_set, family=binomial)
lrtest(reduced_model, model_4)

model_5=glm(HeartAttack2 ~ Smoking, data=data_set, family=binomial)
lrtest(reduced_model, model_5)

model_6=glm(HeartAttack2 ~ Diet, data=data_set, family=binomial)
lrtest(reduced_model, model_6)

model_7=glm(HeartAttack2 ~ PhysicalA, data=data_set, family=binomial)
lrtest(reduced_model, model_7)

model_8=glm(HeartAttack2 ~ Screen, data=data_set, family=binomial)
lrtest(reduced_model, model_8)

model_9=glm(HeartAttack2 ~ Sleep, data=data_set, family=binomial)
lrtest(reduced_model, model_9)

model_10=glm(HeartAttack2 ~ FamilyHistory, data=data_set, family=binomial)
lrtest(reduced_model, model_10)

model_11=glm(HeartAttack2 ~ Diabetes, data=data_set, family=binomial)
lrtest(reduced_model, model_11)

model_12=glm(HeartAttack2 ~ Hypertension, data=data_set, family=binomial)
lrtest(reduced_model, model_12)

model_13=glm(HeartAttack2 ~ Cholesterol, data=data_set, family=binomial)
lrtest(reduced_model, model_13)

model_14=glm(HeartAttack2 ~ BMI, data=data_set, family=binomial)
lrtest(reduced_model, model_14)

model_15=glm(HeartAttack2 ~ Stress, data=data_set, family=binomial)
lrtest(reduced_model, model_15)

model_17=glm(HeartAttack2 ~ RHR, data=data_set, family=binomial)
lrtest(reduced_model, model_17)

model_18=glm(HeartAttack2 ~ ECG, data=data_set, family=binomial)
lrtest(reduced_model, model_18)

model_19=glm(HeartAttack2 ~ ChestPain, data=data_set, family=binomial)
lrtest(reduced_model, model_19)

model_20=glm(HeartAttack2 ~MHRA, data=data_set, family=binomial)
lrtest(reduced_model, model_20)

model_21=glm(HeartAttack2 ~ BloodOxygen, data=data_set, family=binomial)
lrtest(reduced_model, model_21)

model_22=glm(HeartAttack2 ~ Triglyceride, data=data_set, family=binomial)
lrtest(reduced_model, model_22)

#Logistic Regression 
full_model0=full_model = glm(HeartAttack2 ~ Gender + Diet + PhysicalA + Age + 
 Hypertension + Diabetes + ChestPain + UR + SES + Smoking + Screen + Sleep + 
 BMI + Cholesterol + BloodOxygen + RHR + ECG + FamilyHistory, data = data_set, family = binomial)
summary(full_model0)


#Logistic Regression With Interactions
full_model = glm(HeartAttack2 ~ Gender + Diet + PhysicalA + Age + 
    Hypertension + Diabetes + ChestPain + Gender*Diet*PhysicalA + 
    Hypertension*Age + Hypertension*Diabetes + Hypertension*Diabetes*ChestPain +
    Age*Gender*Diet, data = data_set, family = binomial)
summary(full_model)



#LASSO penalization 
install.packages("glmnet")
library(glmnet)

formula = HeartAttack2 ~ Gender + Diet + PhysicalA + Age + 
  Hypertension + Diabetes + ChestPain + Gender*Diet*PhysicalA + 
  Hypertension*Age + Hypertension*Diabetes + Hypertension*Diabetes*ChestPain +
  Age*Gender*Diet

#Build the model matrix 
X_mat = model.matrix(as.formula(formula), data = data_set)[ , -1] # drop the intercept column

# 10-fold cross-validation to find the optimal lambda
cv_LASSO <- cv.glmnet(x=X_mat, y=HeartAttack2, alpha   = 1, # alpha=1 -> LASSO
family  = "binomial", nfolds  = 10)

# Extract the lambda that minimizes cross-validation error
best_lambda=cv_LASSO$lambda.min

# Fit the final LASSO model with the best lambda
LASSO_model <- glmnet(x= X_mat, y= HeartAttack2, alpha   = 1, lambda  = best_lambda,
  family  = "binomial")

#Check which coefficients are not 0 
coef(LASSO_model)

#Suppose the LASSO_model is our final model
coefs=coef(LASSO_model)

#Identify the row names (predictors) where coefficient is not 0
nonzero_rows = rownames(coefs)[which(coefs != 0)]

#Subset the columns to non-zero (excluding (Intercept))
nonzero_predictors=setdiff(nonzero_rows, "(Intercept)")

#Build the reduced model matrix
X_mat_reduced = X_mat[, nonzero_predictors, drop = FALSE]

df_reduced = data.frame(HeartAttack2, X_mat_reduced)

#Reduced Logistic Model 
reduced_model2 = glm(HeartAttack2 ~ ., data    = df_reduced, family  = binomial)

#Compare AIC e BIC with the original full model
AIC(reduced_model2, full_model)
BIC(reduced_model2, full_model)

#Likelihood Ratio Test
lrtest(reduced_model2, full_model)






















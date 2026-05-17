# Dataset Description

This project uses survey data collected to examine the preference of Nigerian youths between cryptocurrency and traditional banking systems.

The dataset consists of responses collected from 262 students within three departments in the Faculty of Physical Sciences, University of Ilorin, Nigeria.

## Research Objective

The primary objective of the study is to determine whether the growing adoption of cryptocurrency among Nigerian youths reflects a meaningful shift in financial preference away from traditional banking systems. The analysis also aims to identify the major behavioural and demographic factors influencing cryptocurrency preference.

## Data Collection Method

The data was collected using a structured questionnaire distributed through Google Forms.

Survey Link:

https://docs.google.com/forms/d/1yqTvzwiOx8EWr6EMX2_sOCCvIojlrN3tZ6y-IdVyBZ8/

Responses were exported into spreadsheet format and later processed in R for statistical analysis and modelling.

## Dataset Variables

The dataset contains the following major variables:

| Variable | Description |
|---|---|
| crypto_knowledge | Respondent's self-assessed knowledge of cryptocurrency |
| crypto_awareness | Awareness and familiarity with cryptocurrency |
| crypto_usage | Whether the respondent has previously used cryptocurrency |
| age | Age category of respondent |
| gender | Gender of respondent |
| bank_usage | Frequency of traditional banking usage |
| preference_factor | Main factor influencing financial preference |
| crypto_risk | Perceived risk associated with cryptocurrency |
| preference | Preferred financial system (Cryptocurrency or Traditional Banking) |

## Data Processing

Prior to modelling, the dataset underwent preprocessing and cleaning procedures including:

- Handling inconsistent categorical responses
- Grouping similar behavioural categories
- Encoding ordinal and binary variables numerically for logistic regression analysis
- Removing invalid or incomplete observations
- Preparing variables for statistical modelling

### Cleaned Data File

| File Name | Description |
|---|---|
| [project_data.xlsx](./project_data.xlsx) | Preprocessed dataset used for logistic regression and behavioural analysis |

The cleaned dataset contains encoded and standardized variables prepared for modelling and statistical evaluation in R.

## Statistical Methods

The cleaned dataset was analysed in R using:

- Exploratory Data Analysis (EDA)
- Logistic Regression
- Odds Ratio Analysis
- Variance Inflation Factor (VIF) Analysis
- Hosmer–Lemeshow Goodness-of-Fit Test

The analysis focused on identifying the major factors influencing cryptocurrency preference among Nigerian youths and evaluating the statistical significance of behavioural and demographic predictors.


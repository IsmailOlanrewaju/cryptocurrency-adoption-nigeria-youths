# =========================================================
# Cryptocurrency Preference Analysis Among Nigerian Youths
# Logistic Regression Modelling in R
# =========================================================

# Load Required Libraries
library(readr)
library(readxl)
library(tidyverse)
library(ggplot2)
library(car)
library(ResourceSelection)

# =========================================================
# Import Dataset
# =========================================================

data <- read_excel(
  "C:/Users/Hp/OneDrive/Documents/project_data.xlsx"
)

# Preview Dataset Structure
glimpse(data)

# =========================================================
# Missing Value Assessment
# =========================================================

# Check for missing values
colSums(is.na(data))

# =========================================================
# Logistic Regression Model
# =========================================================

model <- glm(
  preference ~
    crypto_awareness +
    age +
    gender +
    preference_factor +
    crypto_risk,
  
  data = data,
  family = "binomial"
)

# Model Summary
summary(model)

# =========================================================
# Multicollinearity Assessment
# =========================================================

vif(model)

# =========================================================
# Odds Ratio Analysis
# =========================================================

exp(
  cbind(
    Odds_Ratio = coef(model),
    confint(model)
  )
)

# =========================================================
# Hosmer-Lemeshow Goodness-of-Fit Test
# =========================================================

hoslem.test(
  data$preference,
  fitted(model),
  g = 5
)
# =========================================================
# Plot
# =========================================================

ggplot(
  data,
  aes(
      x = factor(
      preference,
      labels = c(
        "Traditional Banking",
        "Cryptocurrency")))) +
  geom_bar() +
  labs(
    title = "Preference Between Cryptocurrency and Traditional Banking",
    x = "Financial Preference",
    y = "Number of Respondents"
  )

ggplot(
  data,
  aes(
    x = factor(
      crypto_awareness,
      labels = c(
        "Low Awareness",
        "High Awareness"
      )
    )
  )
) +
  geom_bar() +
  labs(
    title = "Cryptocurrency Awareness Distribution",
    x = "Awareness Level",
    y = "Number of Respondents"
  )

ggsave(
  "plots/crypto_awareness_distribution.png",
  width = 8,
  height = 5
)

ggplot(
  data,
  aes(
    x = factor(
      gender,
      labels = c(
        "Female",
        "Male"
      )
    ),
    fill = factor(
      preference,
      labels = c(
        "Traditional Banking",
        "Cryptocurrency"
      )
    )
  )
) +
  geom_bar(position = "dodge") +
  labs(
    title = "Gender and Financial Preference",
    x = "Gender",
    y = "Number of Respondents",
    fill = "Preference"
    theme_minimal()
)

ggsave(
  "plots/gender_preference_plot.png",
  width = 8,
  height = 5
)

ggplot(
  data,
  aes(
    x = factor(
      crypto_risk,
      labels = c(
        "Low Risk",
        "High Risk"
      )
    )
  )
) +
  geom_bar() +
  labs(
    title = "Perceived Cryptocurrency Risk",
    x = "Risk Perception",
    y = "Number of Respondents"
  )

ggsave(
  "plots/crypto_risk_distribution.png",
  width = 8,
  height = 5
)
colnames(data$crypto_risk)
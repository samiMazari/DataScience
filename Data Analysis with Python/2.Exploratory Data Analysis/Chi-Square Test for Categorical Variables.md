# Chi-Square Test for Categorical Variables

## Introduction

The chi-square test is a statistical method used to determine if there is a significant association between two categorical variables. This test is widely used in various fields, including social sciences, marketing, and healthcare, to analyze survey data, experimental results, and observational studies.

## Concept

The chi-square test is a non-parametric statistical method that evaluates whether the observed frequencies in each category differ significantly from the expected frequencies—assuming no association between the variables.

The test is based on the chi-square distribution, which is a family of distributions defined by degrees of freedom (df). These distributions are right-skewed and vary depending on df. A chi-square distribution table lists critical values for given df and significance levels (α), which we use to assess if our computed test statistic is extreme enough to reject the null hypothesis.

## Null Hypothesis and Alternative Hypothesis

- **Null Hypothesis (H₀)** – Assumes that there is no association between the categorical variables, implying that any observed differences are due to random chance.

- **Alternative Hypothesis (H₁)** – Assumes that there is a significant association between the variables, indicating that the observed differences are not due to chance alone.

## Formula

The chi-square statistic is calculated using the formula:

χ² = ∑ (Oᵢ − Eᵢ)² / Eᵢ

Where:

- `Oᵢ` is the observed frequency for category *i*  
- `Eᵢ` is the expected frequency for category *i*, calculated as:


The degrees of freedom for the test are calculated as:


Where *r* is the number of rows and *c* is the number of columns in the table.

## Chi-Square Distribution Table

A chi-square distribution table provides critical values that vary by degrees of freedom and the significance level (α). For example:

- df = 1, α = 0.05 → critical value = 3.841

If your calculated χ² > 3.841 → **reject H₀**  
If χ² ≤ 3.841 → **fail to reject H₀**

The higher the χ² value, the stronger the evidence against H₀.

## Python Implementation Example

```python
import pandas as pd
from scipy.stats import chi2_contingency

# Create the contingency table
data = [[20, 30],  # Male: [Like, Dislike]
        [25, 25]]  # Female: [Like, Dislike]

# Create a DataFrame for clarity
df = pd.DataFrame(data, columns=["Like", "Dislike"], index=["Male", "Female"])

# Perform the Chi-Square Test
chi2, p, dof, expected = chi2_contingency(df)

# Display results
print("Chi-square Statistic:", chi2)
print("Degrees of Freedom:", dof)
print("P-value:", p)
print("Expected Frequencies:\n", expected)




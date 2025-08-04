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


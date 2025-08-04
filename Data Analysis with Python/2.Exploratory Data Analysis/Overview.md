# Chi-Square Test for Categorical Variables : 
### Introduction
The chi-square test is a statistical method used to determine if there is a significant association between two categorical variables. This test is widely used in various fields, including social sciences, marketing, and healthcare, to analyze survey data, experimental results, and observational studies.

### Concept
The chi-square test is a non-parametric statistical method that evaluates whether the observed frequencies in each category differ significantly from the expected frequencies—assuming no association between the variables.

The test is based on the chi-square distribution, which is a family of distributions defined by degrees of freedom (df). These distributions are right-skewed and vary depending on df. A chi-square distribution table lists critical values for given df and significance levels (α), which we use to assess if our computed test statistic is extreme enough to reject the null hypothesis.      

#### Null Hypothesis and Alternative Hypothesis          
The chi-square test involves formulating two hypotheses:                        
Null Hypothesis `H0`- Assumes that there is no association between the categorical variables, implying that any observed differences are due to random chance.

Alternative Hypothesis `H1` Assumes that there is a significant association between the variables, indicating that the observed differences are not due to chance alone.

#### Formula
The chi-square statistic is calculated using the formula:         χ² = ∑ (Oᵢ − Eᵢ)² / Eᵢ                      
Where:

- `Oᵢ` is the observed frequency for category *i*  
- `Eᵢ` is the expected frequency for category *i*, calculated as:

  #### Eᵢ = (row total × column total) / grand total

The sum is taken over all cells in the contingency table.

The calculated chi-square statistic is then compared to a critical value from the chi-square distribution table. This table provides critical values for different degrees of freedom (df) and significance levels 


The degrees of freedom for the test are calculated as:    
df = (r − 1) × (c − 1)

where :    
r is the number of rows and         
c is the number of columns in the table.        

#### Chi-Square Distribution Table
A chi-square distribution table provides critical values that vary by degrees of freedom and the significance level (α). These values indicate the threshold beyond which the test statistic would be considered statistically significant.

For example:

df = 1, α = 0.05, the critical value is 3.841

If your calculated χ² > 3.841, you reject H₀

If χ² ≤ 3.841, you fail to reject H₀

The higher the χ² value, the stronger the evidence against H₀.

#### Python Implementation Example
Below is a Python implementation using `scipy.stats and pandas`:

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
```

Output:       
`Chi-square Statistic`: 1.008           
`Degrees of Freedom`: 1                 
`P-value`: 0.3156                    
`Expected Frequencies`:[[22.5 27.5] [22.5 27.5]]           

Interpretation: Since the p-value (0.3156) > 0.05, we fail to reject the null hypothesis—indicating no significant association.

### Applications         
Market Research: Analyzing the association between customer demographics and product preferences.               
Healthcare: Studying the relationship between patient characteristics and disease incidence.                            
Social Sciences: Investigating the link between social factors (e.g., education level) and behavioral outcomes (e.g., voting patterns).                 
Education: Examining the connection between teaching methods and student performance.               
Quality Control: Assessing the association between manufacturing conditions and product defects.                    
Practical Example - Weak Correlation                 
Suppose a researcher wants to determine if there is an association between gender (male, female) and preference for a new product (like, dislike). The researcher surveys 100 people and records the following data:

|Category	|Like	|Dislike	|Total|
|----------|------|---------|-------|
|Male|	20	|30	|50|
|Female	|25	|25	|50|
|Total	|45	|55|	100|

### Step 1: Calculate Expected Frequencies

Using the formula for expected frequencies:

- **E<sub>Smoker, Disease</sub>** = (80 × 70) / 200 = **28**

- **E<sub>Smoker, No Disease</sub>** = (80 × 130) / 200 = **52**

- **E<sub>Non-Smoker, Disease</sub>** = (120 × 70) / 200 = **42**

- **E<sub>Non-Smoker, No Disease</sub>** = (120 × 130) / 200 = **78**

### Step 2: Compute Chi-Square Statistic

Using the formula:

χ² = (O - E)² / E               

χ² = (50−28)² / 28 + (30−52)² / 52 + (20−42)² / 42 + (100−78)² / 78             
= (22)² / 28 + (22)² / 52 + (22)² / 42 + (22)² / 78               
= 484 / 28 + 484 / 52 + 484 / 42 + 484 / 78               
= 17.29 + 9.31 + 11.52 + 6.21            
= 44.33                   

### Step 3: Determine Degrees of Freedom

df = (r − 1) × (c − 1)          
= (2 − 1) × (2 − 1)           
= 1            

### Step 4: Interpret the Result

Using a chi-square distribution table, we compare the calculated chi-square value (44.33) with the critical value at one degree of freedom and a significance level (e.g., 0.05), approximately 3.841. Since 44.33 > 3.841, we reject the null hypothesis. This indicates a significant association between smoking status and the incidence of lung disease in this sample.

## Conclusion
The chi-square test is a powerful tool for analyzing the relationship between categorical variables. By comparing observed and expected frequencies, researchers can determine if there is a statistically significant association, providing valuable insights in various fields of study.





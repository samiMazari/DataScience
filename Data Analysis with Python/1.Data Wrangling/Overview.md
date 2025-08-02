## 1.Importing Data sets :
### Pandas DataFrame Methods Cheat Sheet

| **Package/Method**              | **Description**                                                                                   | **Code Example**                                                                                      |
|----------------------------------|---------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| **Read CSV data set**            | Read the CSV file containing a data set to a pandas data frame                                    | ```python load without header : df = pd.read_csv(<CSV_path>, header=None)  load using first row as header : df = pd.read_csv(<CSV_path>, header=0)``` |
| **Print first few entries**      | Print the first few entries (default 5) of the pandas data frame                                  | ```python df.head(n)   n = number of entries; default is 5```                                 |
| **Print last few entries**       | Print the last few entries (default 5) of the pandas data frame                                   | ```python df.tail(n)   n = number of entries; default is 5```                                 |
| **Assign header names**          | Assign appropriate header names to the data frame                                                 | ```python df.columns = headers```                                                               |
| **Replace "?" with NaN**         | Replace the entries `"?"` with NaN entry from Numpy library                                       | ```python df = df.replace("?", np.nan)```                                                      |
| **Retrieve data types**          | Retrieve the data types of the data frame columns                                                 | ```python df.dtypes```                                                                         |
| **Retrieve statistical description** | Retrieve the statistical description of the data set. Defaults use is for only numerical data types. Use `include="all"` to create summary for all variables | ```python df.describe()  # default df.describe(include="all") ```                             |
| **Retrieve data set summary**    | Retrieve the summary of the data set being used, from the data frame                              | ```python df.info()```                                                                         |
| **Save data frame to CSV**       | Save the processed data frame to a CSV file with a specified path                                 | ```python df.to_csv(<output CSV path>) ```                                                      |

**Note**:  
 - The labs in this course run in JupyterLite environment. In JupyterLite, you'll need to download the required file to the local environment and then use the local path as the `CSV_path`.  
 - If you are using JupyterLabs or any other Python environment on your local machine, you can also use the URL of the required file directly as the `CSV_path`.

## 2. Pre-Processing Data in Python :  
- Data formatting is critical for making data from various sources consistent and comparable.

- Master the techniques in Python to convert units of measurement, like transforming "city miles per gallon" to "city-liters per 100 kilometers" for ease of comparison and analysis.

- Acquire skills to identify and correct data types in Python, ensuring the data is accurately represented for subsequent statistical analyses.

- Data normalization helps make variables comparable and helps eliminate inherent biases in statistical models.

- You can apply Feature Scaling, Min-Max, and Z-Score to normalize data and apply each technique in Python using pandas’ methods.

- Binning is a method of data pre-processing to improve model accuracy and data visualization.

- Run binning techniques in Python using numpy's "linspace" and pandas' "cut" methods, particularly for numerical variables like "price."

- Utilize histograms to visualize the distribution of binned data and gain insights into feature distributions.

- Statistical models generally require numerical inputs, making it necessary to convert categorical variables like "fuel type" into numerical formats.

- You can implement the one-hot encoding technique in Python using pandas’ get_dummies method to transform categorical variables into a format suitable for machine learning models.



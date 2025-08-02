# Importing Data sets :

| **Package/Method**              | **Description**                                                                                   | **Code Example**                                                                                      |
|----------------------------------|---------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| **Read CSV data set**            | Read the CSV file containing a data set to a pandas data frame                                    | ```python <br>df = pd.read_csv(<CSV_path>, header=None)<br># load without header<br>df = pd.read_csv(<CSV_path>, header=0)<br># load using first row as header<br>``` |
| **Print first few entries**      | Print the first few entries (default 5) of the pandas data frame                                  | ```python<br>df.head(n)  # n = number of entries; default is 5<br>```                                 |
| **Print last few entries**       | Print the last few entries (default 5) of the pandas data frame                                   | ```python<br>df.tail(n)  # n = number of entries; default is 5<br>```                                 |
| **Assign header names**          | Assign appropriate header names to the data frame                                                 | ```python<br>df.columns = headers<br>```                                                               |
| **Replace "?" with NaN**         | Replace the entries `"?"` with NaN entry from Numpy library                                       | ```python<br>df = df.replace("?", np.nan)<br>```                                                      |
| **Retrieve data types**          | Retrieve the data types of the data frame columns                                                 | ```python<br>df.dtypes<br>```                                                                         |
| **Retrieve statistical description** | Retrieve the statistical description of the data set. Defaults use is for only numerical data types. Use `include="all"` to create summary for all variables | ```python<br>df.describe()  # default<br>df.describe(include="all")<br>```                             |
| **Retrieve data set summary**    | Retrieve the summary of the data set being used, from the data frame                              | ```python<br>df.info()<br>```                                                                         |
| **Save data frame to CSV**       | Save the processed data frame to a CSV file with a specified path                                 | ```python<br>df.to_csv(<output CSV path>)<br>```                                                      |

**Note**:  
 - The labs in this course run in JupyterLite environment. In JupyterLite, you'll need to download the required file to the local environment and then use the local path as the `CSV_path`.  
 - If you are using JupyterLabs or any other Python environment on your local machine, you can also use the URL of the required file directly as the `CSV_path`.

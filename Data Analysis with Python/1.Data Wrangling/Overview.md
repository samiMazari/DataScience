# Importing Data sets :
# Pandas DataFrame Methods Cheat Sheet

| **Package/Method**              | **Description**                                                                                   | **Code Example**                                                                                      |
|----------------------------------|---------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| **Read CSV data set**            | Read the CSV file containing a data set to a pandas data frame                                    | ```python\n# load without header\ndf = pd.read_csv(<CSV_path>, header=None)\n\n# load using first row as header\ndf = pd.read_csv(<CSV_path>, header=0)\n``` |
| **Print first few entries**      | Print the first few entries (default 5) of the pandas data frame                                  | ```python\ndf.head(n)  # n = number of entries; default is 5\n```                                 |
| **Print last few entries**       | Print the last few entries (default 5) of the pandas data frame                                   | ```python\ndf.tail(n)  # n = number of entries; default is 5\n```                                 |
| **Assign header names**          | Assign appropriate header names to the data frame                                                 | ```python\ndf.columns = headers\n```                                                               |
| **Replace "?" with NaN**         | Replace the entries `"?"` with NaN entry from Numpy library                                       | ```python\ndf = df.replace("?", np.nan)\n```                                                      |
| **Retrieve data types**          | Retrieve the data types of the data frame columns                                                 | ```python\ndf.dtypes\n```                                                                         |
| **Retrieve statistical description** | Retrieve the statistical description of the data set. Defaults use is for only numerical data types. Use `include="all"` to create summary for all variables | ```python\ndf.describe()  # default\ndf.describe(include="all")\n```                             |
| **Retrieve data set summary**    | Retrieve the summary of the data set being used, from the data frame                              | ```python\ndf.info()\n```                                                                         |
| **Save data frame to CSV**       | Save the processed data frame to a CSV file with a specified path                                 | ```python\ndf.to_csv(<output CSV path>)\n```                                                      |

> 💡 **Note**:  
> The labs in this course run in JupyterLite environment. In JupyterLite, you'll need to download the required file to the local environment and then use the local path as the `CSV_path`.  
> If you are using JupyterLabs or any other Python environment on your local machine, you can also use the URL of the required file directly as the `CSV_path`.


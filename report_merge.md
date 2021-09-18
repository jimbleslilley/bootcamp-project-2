## Required Setup
To run the notebook.ipynb file you will need to install the following packages/dependencies:
* SQLAlchemy `pip install SQLAlchemy`
* SQLite `conda install -c anaconda sqlite -y`
* Psycopg2 `pip install psycopg2`

To connect to the PostgreSQL database you will need to add your PgAdmin 4 username and password to a config.py file
![config_file.png](Readme_Images/config_file.png)
The config.py file should be stored in your local repository folder.
## Extract
Two files are selected from Kaggle.com and the  files are csv format.
 Both files are converted to panda Data Frams
All the columns are checked to
ensure the dates and vaccine manufacturer names in each table match so that the tables can be joined.

## Transform
8 manufactures are found ['BioNTech', 'Moderna', 'Johnson & Johnson', 'Inovio Pharmaceuticals', 'Sinovac', 'Sinopharm', 'Novavax', 'Astrazeneca'].
The above columns  were manually found and listed.

The following columns in the manufacturer_df table need to be renamed to match the stocks_df
{'Pfizer/BioNTech' : 'BioNTech',
                                                      'Johnson&Johnson' : 'Johnson & Johnson',
                                                      'Sinopharm/Beijing': 'Sinopharm',
                                                      'Oxford/AstraZeneca' : 'Astrazeneca'}.
Before Joining Tables, date types checked in both tables and Both dates follow the same format, no changes needed.

We have 22944 rows, which divided by the total number of unique dates (478) is 48.0.
48.0 divided by the total different number of stock types (6) is 8.0.
As we have 8 unique vaccines, this means each vaccine is present with all data on each day. 
As such, we can confirm no data is missing.

When we drop duplicates from our final table, we will expect to see 3824.0 rows.
a new dataframe sorted_df is created. it has coulmns of manufacturer and High.
This is carried out in the same way for each of the differnt stock types to add the remaining five columns which are Low,	Open,	Close	,Volume, and	Adj Close.
Once this is done, we can go back to our manufacturer table, and join the locations to this table
our final data frame (schema_ready_df) look like this (pic to be added)

## Load

SQL schema is created to convert the final table in PostgreSQL.
File is loaded  on PgAdmin. 

# PROJECT 2, GROUP 2, VACCINE D/B REPORT

This project relates to extraction of data, transforming it into readable and easy to manipulate information and then loading it onto a database. The database can be presented to future data explorers who would wish to study the information for research etc. 

2 data sets were chosen from Kaggle.com
The first dataset included data related to Covid-19 Vaccine manufacturers, which were obtained from the following link: https://www.kaggle.com/gpreda/covid-world-vaccination-progress
The second dataset included data related to the vaccine manufacturer's stock data, which was taken from https://www.kaggle.com/akpmpr/covid-vaccine-companies-stock-data-from-2019

The primary coding for this project was built using Jupyter Notebook.

- import dependencies 
- list the columns in each csv
- print vaccine in manufacturer df
- print vaccine in stocks df by taking each unique high value
- Mutual Vaccines
manufacturer - stocks_df
'Pfizer/BioNTech' : 'BioNTech'
'Moderna' : 'Moderna'
'Johnson&Johnson' : 'Johnson & Johnson'
'Sinovac' : 'Sinovac'
'Sinopharm/Beijing': 'Sinopharm'
'Oxford/AstraZeneca' : 'Astrazeneca'
These were manually found and listed.

The following columns in the manufacturer table need to be renamed to match the stocks_df
- rename columns
- -Table Joining
Now that our mutual columns are joinable, the following can be done:

Create columns in the manufacturer for the stock high, low, open, close and adj close.
Join the tables so that each stocks data is input into one of these columns
A solution for making the join as simple as possible is to take the stocks_df and input all of the data into a new dataframe, where the columns are the name of the manufacturer, the date and then the high, low, open, close and adj close values.

- Example of how these two lists can call a column of data
- create empty list to hold values
- loop through each row, the vaccine and then the type of stock
- stock the date, manufacturer, type of stock and stock value for a given row
- input data in list
- append list into container list
- use list of lists to create new, easier to manage dataframe
- 
We have 22944 rows, which divded by the total number of unique dates (478) is 48.0.
48.0 divided by the total different number of stock types (6) is 8.0.
As we have 8 unique vaccines, this means each vaccine is present with all data on each day. 
As such, we can confirm no data is missing.

When we drop duplicates from our final table, we will expect to see 3824.0 rows.

- create new empty dataframe
- using the calculations above, we can insert the data and manufacturers into this data frame without concern 
- the duplicate values are then dropped as they are not needed
- a new dataframe is created which filters all of the high stock results
- the column for the values is renamed to matched this filtering, as this is the information we will want
- a join is performed, which will add a type column that containing the word high in each row and the "high" column
- which has the stock value in each row to the appropriate data and vaccine manufacturer
- the type column is no longer required and as such, is removed
- this is carried out in the same way for each of the differnt stock types to add the remaining four columns
- this leaves us with our data set containing the date and and manufacturers stock values for each type in a single row


- now that this is done, we can go back to our manufacturer table, and join the locations to this table
- the values for the vaccine and manufacturer column are identical, so one is dropped
- the columns are then reordered and renamed
- null values are dropped, this will be for vaccine companies which did not have stock data and
- for dates not recorded on both .csv files
- assign a new name to the dataframe so we know that this is the dataframe which should be loaded by sql

SQL Schema, PG Admin 4
Create table, Run table, Run Python
Return to PGAdmin and run Query, which displays the import from Jupyter Notebook, confirming the connection and successful importation of data.

Report prepared.

All files uploaded to the Git hub repository and made available to the instructors.




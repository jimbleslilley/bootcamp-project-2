# Project #2: Extract, Transform, and Load

![Covid_vaccine.jpg](Readme_Images/Covid_vaccine.jpg)


## Project Proposal
The project will be focussing on two different sources of data on Covid-19: Vaccinations by Manufacturers, and Vaccine Stocks. Data will be extracted from both CSV’s and transformed using Jupyter notebook. The transformed data will then be loaded into a PostgreSQL database. 


## Goal of the ETL 

The goal of this project is to produce a dataset which can utilised in further research by data analysts, who may be exploring production of COVID-19 Vaccines by individual manufacturers, and the effect this had on their company's stocks and consequently their success. Specific areas of application for a data analyst could include: 

* Whether the location vaccines are being supplied to have an effect on the manufacturer's stock price. 
* If the volume of vaccines being supplied over time can be correlated to a vaccine manufacturer's stock price. 
* Potential relationships between the total vaccines supplied and the average stock value of all vaccine manufacturers. 

## Sources of Data:

Our dataset contains two CSV files available from [Kaggle.com](https://www.kaggle.com). Both CSV’s are located in the [resources](resources/) folder:

![CSV_files.png](Readme_Images/CSV_files.png)


* The country_vaccinations_by_manafacturer CSV is from the [COVID-19 World Vaccination Progress](https://www.kaggle.com/gpreda/covid-world-vaccination-progress) dataset.


* The vaccine_stocks CSV is from the [COVID-19 Vaccine Companies: Stock Data](https://www.kaggle.com/akpmpr/covid-vaccine-companies-stock-data-from-2019). 


## Required Setup
To run the notebook.ipynb file you will need to install the following packages/dependencies:
* SQLAlchemy `pip install SQLAlchemy`
* SQLite `conda install -c anaconda sqlite -y`
* Psycopg2 `pip install psycopg2`

To connect to the PostgreSQL database you will need to add your PgAdmin 4 username and password to a config.py file
![config_file.png](Readme_Images/config_file.png)
The config.py file should be stored in your local repository folder.

## Extract
Two files are selected from Kaggle.com and both files are csv format.
Both files are converted to panda DataFrams.

Dataframes are named as manufacturer_df and stocks_df.
All the columns are listed for both Dataframes.
manufacturer_df columns are following

(['location', 'date', 'vaccine', 'total_vaccinations']

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


## Collaborators: 
* [Arshad Sheikh](https://github.com/ashsams18)
* [James Lilley](https://github.com/jimbleslilley)
* [Jessica Uppal](https://github.com/JessicaUppal)
* [Muhammad Amjad](https://github.com/amjad5050)


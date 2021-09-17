# Project #2: Extract, Transform, and Load

![Covid_vaccine.jpg](Readme_Images/Covid_vaccine.jpg)

## Collaborators: 
* [Arshad Sheikh](https://github.com/ashsams18)
* [James Lilley](https://github.com/jimbleslilley)
* [Jessica Uppal](https://github.com/JessicaUppal)
* [Muhammad Amjad](https://github.com/amjad5050)


## Sources of Data:

Our dataset contains two CSV files both located in the [resources](resources/) folder:

![CSV_files.png](Readme_Images/CSV_files.png)


* The country_vaccinations_by_manafacturer dataset is [COVID-19 World Vaccination Progress](https://www.kaggle.com/gpreda/covid-world-vaccination-progress)  


* The vaccine_stocks dataset is [COVID-19 Vaccine Companies: Stock Data](https://www.kaggle.com/akpmpr/covid-vaccine-companies-stock-data-from-2019) 



## Project Proposal
The project will be focussing on two different sources of data on Covid-19: Vaccinations by Manufacturers, and Vaccine Stocks. Data will be extracted from both CSV’s and transformed using Jupyter notebook. The transformed data will then be loaded into a PostgreSQL database. 


## Goal of the ETL 

The goal of this project is to produce a dataset which can utilised in further research by data analysts, who may be exploring production of COVID-19 Vaccines by individual manufacturers, and the effect this had on their company's stocks and consequently their success. Specific areas of application for a data analyst could include: 

* Whether the location vaccines are being supplied to have an effect on the manufacturer's stock price. 
* If the volume of vaccines being supplied over time can be correlated to a vaccine manufacturer's stock price. 
* Potential relationships between the total vaccines supplied and the average stock value of all vaccine manufacturers. 

## Required Setup
To run the notebook.ipynb file you will need to install the following packages/dependencies:
* SQLAlchemy `pip install SQLAlchemy`
* SQLite `conda install -c anaconda sqlite -y`
* Psycopg2 `pip install psycopg2`

To connect to the PostgreSQL database you will need to add your PgAdmin 4 username and password to a config.py file
![config_file.png](Readme_Images/config_file.png)
The config.py file should be stored in your local repository folder.

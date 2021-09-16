# Project #2: Extract, Transform, and Load

## Group members: 
* Arshad Sheikh
* James Lilley
* Jessica Uppal
* Muhammad Amjad


## Sources of Data:
* country_vaccinations_by_manufacturer.csv (COVID-19 World Vaccination Progress | Kaggle)

https://www.kaggle.com/gpreda/covid-world-vaccination-progress

* vaccine_stocks.csv (COVID-19 Vaccine Companies : Stock Data | Kaggle)

https://www.kaggle.com/akpmpr/covid-vaccine-companies-stock-data-from-2019

## Type of final production database
PostgresSQL

## Plan
The intention is to look at two different sources of Covid 19 data: Vaccinations by manufacturers and vaccine stocks and then combining the data as one dataset onto one database. We intend to extract data from our two csv files, sources from Kaggle, transform from them using Jupyter Notebook and then load them into PgAdmin 4, ready for use. 

## Goal of the ETL 

The goal of this project is to be left with a dataset which can be used be a data analyist to conduct research into the production of the COVID-19 Vaccine by manufacterurs and the effect this had on their company's stocks. Various points of focus for a data analyst could include: 

* If the locations a vaccine is being supplied to effected a vaccine manufacturer's stock price. 
* If the volume of vaccines being supplied over time can be correlated to a vaccine manufacturer's stock price. 
* If there is a relationship between the total vaccines supplied and the average stock value of all vaccine manufacturers. 

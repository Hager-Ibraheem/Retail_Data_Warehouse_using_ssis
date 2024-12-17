# Retail Data Warehouse using SSIS

## Description
This project is a retail data warehouse built using SQL Server for data storage and SSIS (SQL Server Integration Services) for ETL (Extract, Transform, Load) processes. The data warehouse is covering dimensions such as products, customers, stores, and date, along with a sales fact table.

## Table of Contents
- [Features](#features)
- [Components](#components)
- [Steps to Run the Project](#steps-to-run-the-project)


### Features
- **Real-World Simulation**: Sales data augmented with random customer and store information to emulate realistic scenarios.
- **Data Modeling**: Supports multiple dimensions (products, customers, stores, date) and a central fact table for sales.
- **ETL Process**: SSIS package to extract, transform, and load data efficiently from staging to the data warehouse.
- **SCD Implementation**: Supports both Slowly Changing Dimensions (Type 1 and Type 2) to handle data changes and maintain history.

### Components
1- **Data Sources**
   - ***Sales Data***: CSV file downloaded from Kaggle, includes product names, categories, and unit prices.
   - ***Customers and Stores Data***: CSV files generated using Mockaroo (random data generator).
   - Since the sales file lacked customer and store details, random customer and store columns were added to simulate a real-world scenario. These adjustments were performed in Python notebook ( prepare_load_to_staging.ipynb ) before loading the data into the staging area.

2- **Data Model**: 
   The data model comprises the following:
     
  ![image](https://github.com/user-attachments/assets/0e1bfbfc-c9f6-4fda-ad35-aa967b1693a3)

3- **ETL Process**:
   The ETL process is designed using SSIS and involves the following Data Flow Tasks:

  ![image](https://github.com/user-attachments/assets/9b44d24f-9b4b-4d78-8a64-ce937060f037)

4- **Tools and Technologies**:
   - ***SQL Server***: For data storage and management.
   - ***SSIS***: For designing and managing the ETL processes.
   - ***Python***: Used for data preparation and loading into the staging area.

### Steps to Run the Project
1- **Set Up Environment**:
  - Install SQL Server.
  - Use the provided SQL script to create the database and tables.
  - Set up SSIS.

2- **Prepare Data**:
   - Run the provided Python notebook (prepare_load_to_staging.ipynb) to process the data and load it into the staging area.

3- **Run ETL Process**:
   - Replace the file name in the flat file connection by your path to data, and Ensure that all connections in Connection Managers work.
   - Execute the SSIS package (ETL_Package.dtsx) to perform the ETL workflow.


# DE: Dimensional modeling and ETL data processing

This repository contains three projects focusing on dimensional modeling, data warehouse design, and ETL (Extract, Transform, Load) pipeline development across both relational (MySQL) and non-relational (MongoDB) database systems.

These projects were developed as part of the course Data Engineering (P4251102) for the Master in Artificial Intelligence at the Universidade de Santiago de Compostela.

## Group Members

- Yago Estévez Figueiras
- Andrea Real Blanco
- Francisco Manuel Vázquez Fernández

## Project 1: Flight Delays Analysis
A dimensional model built using a single star schema and an ETL pipeline designed to support the analysis and prediction of flight departure delays.

- **Kaggle Dataset**: [Predicting flight delays](https://www.kaggle.com/code/fabiendaniel/predicting-flight-delays-tutorial/input) 
- **Analytical Objectives**: The model is designed to answer questions such as identifying the airlines and origin airports with the most delayed flights, and analyzing how factors like holidays, months, days, and specific hours affect the delay.
- **Technology Stack**: MySQL (relational database) and Python (ETL pipeline).
- **Usage**: To replicate the project, first download the raw CSV data. Set up the database schema using `create_database.sql`, and then execute the ETL pipeline via the Python script `pipeline.py`.

## Project 2: Formula 1 Performance
Implementation of a data warehouse using three star schemas to analyze Formula 1 performance data across various seasons.

- **Kaggle Dataset**: [Formula 1 Pit Stops Analysis](https://www.kaggle.com/code/kevinkwan/formula-1-pit-stops-analysis/input) 
- **Analytical Objectives**: The model's structure allows tracking driver and constructor performance across three areas: qualifying times, pit stop efficiency, and race results.
- **Technology Stack**: MySQL (relational database), Python (ETL pipeline), and Tableau (visualization dashboard).
- **Usage**: First, download the raw CSV data. Then, set up the database schema using `create_database_f1.sql` and run the ETL pipeline from `pipeline.ipynb`. Tableau dashboards for visual analysis are stored in the `tableau/` folder.

## Project 3: Medical Imaging
A dimensional model, structured as a single star schema, implemented in a NoSQL environment to support the analysis of medical imaging (DICOM) data. Specifically, the analysis focuses on images of patients diagnosed with lung adenocarcinoma, the most prevalent form of lung cancer. 

- **Kaggle Dataset**: [CT Medical Images](https://www.kaggle.com/datasets/kmader/siim-medical-images?select=dicom_dir) 
- **Analytical Objectives**: The model provides insights into imaging quality, equipment performance, and protocol consistency across time, patients, and imaging stations.
- **Technology Stack**: MongoDB (non-relational database) and Python (ETL pipeline).
- **Usage**: After downloading the corresponding DICOM dataset, install the required Python dependencies listed in `requirements.txt`. The full ETL process is executed by running the notebook `pipeline.ipynb`.

**NOTE**: More information regarding the schema designs, implementation, data transformations, and queries is available in the accompanying PDF reports.

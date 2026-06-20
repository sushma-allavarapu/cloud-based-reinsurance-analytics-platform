# Cloud-Based Reinsurance Analytics Platform

# Overview

Designed and implemented an end-to-end cloud analytics platform for reinsurance data using AWS S3, Snowflake, dbt, and Power BI. The project enables premium income, claim cost, profit, and loss ratio analysis through interactive dashboards.

# Tech Stack

* AWS S3
* Snowflake
* dbt
* Power BI
* GitHub

# Architecture

CSV Files
     ↓
AWS S3
     ↓
Snowflake
     ↓
dbt (Staging → Marts)
     ↓
Power BI Dashboard

# Project Structure

cloud-based-reinsurance-analytics-platform
│
├── analyses/
├── macros/
├── models/
├── seeds/
├── snapshots/
├── tests/
├── powerbi/
│     └── Reinsurance_Analytics.pbix
├── screenshots/
├── sql/
├── README.md
└── dbt_project.yml

# Data Pipeline

1. Source CSV files uploaded to AWS S3.
2. Snowflake loads data using COPY INTO commands.
3. dbt transforms raw data into analytical marts.
4. Incremental models optimize processing.
5. Power BI dashboards provide business insights.

# Dashboard KPIs

* Premium Income
* Claim Cost
* Profit Analysis
* Claim Ratio
* Loss Ratio
* Company-wise Performance
* Benefit-wise Analysis

# Visualizations

* KPI Cards
* Gauge Chart
* Matrix Table
* Clustered Column Chart
* Bar Chart
* Loss Ratio Analysis
* Company-wise Profit Analysis

# Key Features

* Incremental dbt models
* Snowflake cloud data warehouse
* Interactive Power BI dashboards
* Loss ratio and profit analysis
* End-to-end analytics pipeline
* Company-level performance insights

# Future Enhancements

* Snowpipe for automated ingestion
* Apache Airflow orchestration
* Real-time dashboards
* Machine Learning-based claim prediction
* Streamlit web application

# Dashboard Screenshots

# Dashboard 1
<img width="1372" height="772" alt="DashBoard1" src="https://github.com/user-attachments/assets/25e01bd7-ee5b-446b-9daf-0989c65591d5" />

# Dashboard 2

<img width="1340" height="786" alt="DashBoard2" src="https://github.com/user-attachments/assets/85304062-dbeb-4a2f-9d3e-fee4aa9ce739" />

# Dashboard 3

<img width="1342" height="788" alt="DashBoard3" src="https://github.com/user-attachments/assets/7fc07634-e5b5-4bb8-9208-aebb3040b012" />

# Dashboard 4

<img width="1337" height="781" alt="DashBoard4" src="https://github.com/user-attachments/assets/47133021-bb5f-4819-933f-6836914f81df" />

# Author

Allavarapu Sushma

GitHub: https://github.com/sushma-allavarapu

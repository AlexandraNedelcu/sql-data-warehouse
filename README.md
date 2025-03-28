# Data Warehouse and Analytics Project
Welcome to the Data Warehouse and Analytics Project repository! 🚀
This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights. Designed as a portfolio project, it highlights industry best practices in data engineering and analytics.

## 🏗️ Data Architecture

The data architecture for this project follows the Medallion Architecture, consisting of Bronze, Silver, and Gold layers:

Bronze Layer: Stores raw data as-is from the source systems. Data is ingested from CSV files into a SQL Server database running in a Docker container.

Silver Layer: This layer includes data cleansing, standardization, and normalization processes to prepare data for analysis.

Gold Layer: Houses business-ready data modeled into a star schema required for reporting and analytics.

## 📖 Project Overview

This project involves:

- Data Architecture: Designing a modern data warehouse using the Medallion Architecture (Bronze, Silver, and Gold layers).
- ETL Pipelines: Extracting, transforming, and loading data from source systems into the warehouse.
- Data Modeling: Developing fact and dimension tables optimized for analytical queries.
- Analytics & Reporting: Creating SQL-based reports and dashboards for actionable insights.

## 🎯 This repository is an excellent resource for professionals and students looking to showcase expertise in:

- SQL Development
- Data Architecture
- Data Engineering
- ETL Pipeline Development
- Data Modeling
- Data Analytics

## 🛠️ Important Links & Tools:
Everything used in this project is free!
- Datasets: Access to project dataset (CSV files).
- Docker: Used to set up and manage the SQL Server container on macOS.
- Azure Data Studio: GUI for managing and interacting with the SQL Server database.
- Git Repository: Set up a GitHub account and repository to manage, version, and collaborate on your code efficiently.
- DrawIO: Design data architecture, models, flows, and diagrams.

## 🚀 Project Requirements

### Building the Data Warehouse (Data Engineering)

#### Objective
Develop a modern data warehouse using SQL Server within a Docker container to consolidate sales data, enabling analytical reporting and informed decision-making.

#### Specifications
- Data Sources: Import data from two source systems (ERP and CRM) provided as CSV files.
- Data Quality: Cleanse and resolve data quality issues prior to analysis.
- Integration: Combine both sources into a single, user-friendly data model designed for analytical queries.
- Scope: Focus on the latest dataset only; historization of data is not required.
- Documentation: Provide clear documentation of the data model to support both business stakeholders and analytics teams.

### BI: Analytics & Reporting (Data Analysis)

#### Objective
Develop SQL-based analytics to deliver detailed insights into:
- Customer Behavior
- Product Performance
- Sales Trends

These insights empower stakeholders with key business metrics, enabling strategic decision-making.

## 📂 Repository Structure
```
sql-data-warehouse/
│
├── datasets/                              # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                                  # Project documentation and architecture details
│   ├── High Level Architecture.png        # Draw.io picture shows the project's architecture
│   ├── data_catalog.md                    # Catalog of datasets, including field descriptions and metadata
│   ├── Data Flow Diagram.png              # Draw.io picture for the data flow diagram
│   ├── Data Model.png                     # Draw.io picture for data models (star schema)
│   ├── Data Integration Model.png         # Draw.io picture shows how tables are related
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
└── LICENSE                             # License information for the repository
```

Happy coding! 🚀

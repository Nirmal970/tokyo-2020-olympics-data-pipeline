# Tokyo 2020 Olympics Data Engineering Pipeline

An end-to-end data engineering project that processes and analyzes Tokyo 2020 Olympics data using **AWS, PySpark, SQL, and Power BI**.

The project demonstrates a complete data engineering workflow — from raw data ingestion and cloud storage to ETL processing, data transformation, analytical querying, and visualization.

## Tech Stack

- **Cloud:** AWS S3, AWS Glue, Amazon Athena
- **Data Processing:** PySpark, Python
- **Database & Querying:** SQL, Amazon Athena
- **Visualization:** Power BI
- **Development:** Jupyter Notebook

## Project Workflow

`Tokyo 2020 Dataset` → `Amazon S3` → `AWS Glue + PySpark` → `Amazon S3` → `Amazon Athena` → `Power BI`

## Key Features

- Built an end-to-end ETL pipeline using **AWS Glue and PySpark**
- Stored raw and transformed datasets in **Amazon S3**
- Cleaned missing values, duplicate records, and unnecessary columns using **PySpark**
- Extracted unique athlete and coach IDs using regular expressions
- Maintained relationships between athlete and medal datasets using foreign keys
- Corrected inconsistent data values to improve data quality
- Queried transformed datasets using **Amazon Athena and SQL**
- Created interactive visualizations and analytical dashboards using **Power BI**

## Project Structure

```text
tokyo-2020-olympics-data-pipeline/
│
├── notebooks/
│   ├── olympics-etl-pipeline.ipynb
│   └── spark-data-cleaning.ipynb
│
├── sql/
│   └── olympics-analysis-queries.sql
│
├── docs/
│   ├── data-analysis.pdf
│   └── data-visualization.pdf
│
└── README.md

## ETL Pipeline

### 1. Extract
- Raw Tokyo 2020 Olympics datasets are stored in **Amazon S3**
- **AWS Glue** reads the datasets from the S3 source bucket
- AWS Glue DynamicFrames are converted into **PySpark DataFrames** for processing

### 2. Transform
Data quality and transformation operations include:

- Removing records with missing values in critical athlete fields
- Dropping unnecessary columns with large numbers of null values
- Removing duplicate athlete and coach records
- Extracting unique `athlete_id` and `coach_id` values using regular expressions
- Creating an `athlete_id` relationship between athlete and medal datasets
- Correcting inconsistent gender values in the medals dataset
- Validating transformed records before loading

### 3. Load
- Transformed datasets are exported in CSV format
- Cleaned datasets are loaded back into **Amazon S3**
- **Amazon Athena** is used to query and analyze the processed datasets
- Analytical results are visualized using **Power BI**

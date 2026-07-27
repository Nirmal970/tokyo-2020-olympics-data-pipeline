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

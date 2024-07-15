# ELT Project: Sales Data Transformation

This project focuses on extracting, transforming, and loading (ETL) daily sales transaction data into a structured format suitable for business analytics and reporting. The process involves using SQL Server Integration Services (SSIS) to automate the data pipeline.

## Project Overview

The ELT process aims to:
- Extract raw sales transaction data from CSV files.
- Load the extracted data into a SQL Server database.
- Transform the data to calculate total sales amounts, derive customer names, and normalize product information.
- Load the transformed data into a data warehouse for analytical purposes.

## Tools and Technologies Used

- **SQL Server**: For storing and managing the relational database.
- **SSIS (SQL Server Integration Services)**: For ETL operations including data extraction, transformation, and loading.
- **SQL Data Warehouse**: For hosting the data warehouse optimized for analytics.
- **Power BI**: For creating visualizations and reports based on the transformed data.

## Project Structure

- **Data Source**: CSV files containing daily sales transactions (`sales_data.csv`).
- **Staging Area**: Temporary storage within SQL Server for initial data ingestion.
- **Data Warehouse**: SQL Data Warehouse for storing transformed data.
- **Reporting**: Power BI for visualizing sales trends and insights.

## Steps to Run the ELT Project

1. **Create Database and Tables**:
   - Use SQL scripts (`create_tables.sql`) provided in the repository to create necessary tables in SQL Server.

2. **Configure SSIS Packages**:
   - Open SQL Server Data Tools (SSDT) or SQL Server Management Studio (SSMS) to create SSIS packages (`sales_etl.dtsx`).
   - Design packages to extract data from CSV files, transform using T-SQL queries for calculating `TotalPrice`, deriving customer names, and normalizing product information, and load into staging tables.

3. **Execute the SSIS Packages**:
   - Run SSIS packages to execute the ETL process:
     - Extract data from CSV files.
     - Transform data as per business rules.
     - Load transformed data into staging tables.

4. **Load Data into Data Warehouse**:
   - Use Azure SQL Data Warehouse or another data warehousing solution to load the data from staging tables (`load_into_dw.sql`).

5. **Validate and Test**:
   - Perform data validation and quality checks to ensure accuracy and completeness.
   - Test the entire ETL process end-to-end to verify functionality.

6. **Automation and Scheduling**:
   - Configure SSIS packages for automation to run daily or as scheduled.
   - Monitor and maintain the ETL pipeline for ongoing data integration and transformation.

7. **Reporting and Visualization**:
   - Connect Power BI to Azure SQL Data Warehouse.
   - Create reports and dashboards to visualize sales trends, customer behavior, and product performance.

## Contributors

- **Omofolawa A-Adeniran**: Project Lead and Developer

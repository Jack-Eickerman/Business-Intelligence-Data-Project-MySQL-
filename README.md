# Business-Intelligence-Data-Project-MySQL
Analysis of Landfill Data on MySQL 
# US Landfills & LFG Projects – MySQL Table Schema for Tableau

**Business Intelligence / Data Management Project**  
@author: jackeickerman  
Created: March 2025 (updated context March 2026)

This repository contains a MySQL script that:
- Drops and recreates the `DMBI_Project` database (if it exists)
- Creates a clean, structured table called `Landfills_in_America`

The table is designed to hold cleaned and standardized data from U.S. landfill and landfill gas (LFG) energy project records — ideal for importing a prepared CSV file into **Tableau** for dashboards, maps, trend analysis, emission visualizations, or regional insights.

## Purpose
The script sets up a relational database table optimized for:
- Storing EPA LMOP (Landfill Methane Outreach Program) landfill data
- Supporting geospatial analysis (Latitude, Longitude)
- Enabling easy CSV import → Tableau connection via MySQL connector
- Analyzing methane collection, flaring, energy generation, emission reductions, and project status

This is typically used after your Python ETL script cleans the raw CSV and loads (or exports) data into this structure.

## Data Source
- **Primary Dataset**: Derived from the U.S. EPA **Landfill Methane Outreach Program (LMOP) Database**  
  → https://www.epa.gov/lmop/lmop-landfill-and-project-database  
  (Free public downloads: Excel/CSV exports of landfills and LFG energy projects, updated periodically — often monthly or quarterly)
- **Cross-referenced fields**: Includes GHGRP_ID (from EPA Greenhouse Gas Reporting Program – Subpart HH for MSW landfills)
- **Typical use case**: Landfill locations, waste volumes, LFG metrics (collected, flared, utilized), electricity generation, methane emission reductions (direct & avoided), and project details.

**Note**: The table schema closely matches common LMOP export columns, with some renaming for clarity/consistency (e.g., underscores instead of spaces/special characters).

## Table Schema: `Landfills_in_America`

| Column Name                        | Data Type     | Description / Notes                                                                 |
|------------------------------------|---------------|-------------------------------------------------------------------------------------|
| GHGRP_ID                           | FLOAT        | EPA Greenhouse Gas Reporting Program Facility ID (7-digit identifier)              |
| Landfill_ID                        | INT          | Unique LMOP landfill identifier                                                     |
| Landfill_Name                      | VARCHAR(255) | Name of the landfill                                                                |
| State                              | VARCHAR(255) | U.S. state abbreviation or full name                                                |
| City                               | VARCHAR(255) | City/location                                                                       |
| County                             | VARCHAR(255) | County                                                                              |
| Ownership_Type                     | VARCHAR(255) | Public, private, etc.                                                               |
| Landfill_Owner_Organization        | VARCHAR(255) | Owner/operator name(s)                                                              |
| Waste_In_Place_Tons                | FLOAT        | Total waste in place (tons)                                                         |
| Waste_In_Place_Year                | FLOAT        | Year of waste-in-place estimate                                                     |
| LFG_Collected                      | FLOAT        | Landfill gas collected (mmscfd – million standard cubic feet per day)              |
| LFG_Flared                         | FLOAT        | Landfill gas flared (mmscfd)                                                        |
| Project_ID                         | VARCHAR(255) | Unique project identifier                                                           |
| Project_Status                     | VARCHAR(255) | Operational, under construction, shutdown, planned, etc.                            |
| Project_Start_Date                 | VARCHAR(255) | Start date of LFG energy project                                                    |
| Project_End_Date                   | VARCHAR(255) | End/shutdown date (if applicable)                                                   |
| Project_Type                       | VARCHAR(255) | Broad category (e.g., electricity, direct use, RNG)                                 |
| LFG_Energy_Project_Type            | VARCHAR(255) | Specific project type (e.g., IC engine, turbine, pipeline injection)                |
| Actual_MW_Generation               | FLOAT        | Actual megawatts generated                                                          |
| Rated_MW_Capacity                  | FLOAT        | Rated/design capacity in MW                                                         |
| LFG_Flow                           | FLOAT        | LFG flow to project (mmscfd)                                                        |
| Self_Developed                     | VARCHAR(255) | Indicates if project was self-developed (Yes/No or similar)                         |
| Emission_Reduction_Direct          | FLOAT        | Direct methane emission reductions (MMTCO2e/yr)                                     |
| Emission_Reduction_Avoided         | FLOAT        | Avoided emission reductions (MMTCO2e/yr)                                            |
| Latitude                           | FLOAT        | Geographic latitude                                                                 |
| Longitude                          | FLOAT        | Geographic longitude

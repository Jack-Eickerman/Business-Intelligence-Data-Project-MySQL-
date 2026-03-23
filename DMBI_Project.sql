DROP DATABASE IF EXISTS DMBI_Project;
CREATE DATABASE IF NOT EXISTS DMBI_Project;
USE DMBI_Project;

DROP TABLE IF EXISTS Landfills_in_America;
CREATE TABLE IF NOT EXISTS Landfills_in_America (
GHGRP_ID FLOAT,
Landfill_ID INT,
Landfill_Name VARCHAR(255),
State VARCHAR(255),
City VARCHAR(255),
County VARCHAR(255),
Ownership_Type VARCHAR(255),
Landfill_Owner_Organization VARCHAR(255),
Waste_In_Place_Tons FLOAT,
Waste_In_Place_Year FLOAT,
LFG_Collected FLOAT,
LFG_Flared FLOAT,
Project_ID VARCHAR(255),
Project_Status VARCHAR(255),
Project_Start_Date VARCHAR(255),
Project_End_Date VARCHAR(255),
Project_Type VARCHAR(255),
LFG_Energy_Project_Type VARCHAR(255),
Actual_MW_Generation FLOAT,
Rated_MW_Capacity FLOAT,
LFG_Flow FLOAT,
Self_Developed VARCHAR(255),
Emission_Reduction_Direct FLOAT,
Emission_Reduction_Avoided FLOAT,
Latitude FLOAT,
Longitude FLOAT
);
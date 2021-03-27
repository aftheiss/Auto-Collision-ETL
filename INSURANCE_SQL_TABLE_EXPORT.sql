-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "Car_Type" (
    "Policy_Number" int   NOT NULL,
    "Model" varchar   NOT NULL,
    "Make" varchar   NOT NULL,
    "Year" int   NOT NULL,
    CONSTRAINT "pk_Car_Type" PRIMARY KEY (
        "Policy_Number"
     )
);

CREATE TABLE "Driver" (
    "Sex" varchar   NOT NULL,
    "Age" int   NOT NULL,
    "Education" varchar   NOT NULL,
    "Policy_State" varchar   NOT NULL,
    "Incident_State" varchar   NOT NULL,
    CONSTRAINT "pk_Driver" PRIMARY KEY (
        "Incident_State"
     )
);

CREATE TABLE "Incident_Location" (
    "Incident_State" varchar   NOT NULL,
    "Zipcode" int   NOT NULL,
    "City" varchar   NOT NULL,
    "Incident_Date" date   NOT NULL,
    CONSTRAINT "pk_Incident_Location" PRIMARY KEY (
        "Incident_State"
     )
);

CREATE TABLE "Insurance_Policy" (
    "Policy_State" varchar   NOT NULL,
    "Policy_Number" int   NOT NULL,
    "Deductible" int   NOT NULL,
    "CSL" varchar   NOT NULL,
    "Policy_Start_Date" date   NOT NULL,
    "Policy_Premium" float   NOT NULL,
    "Umbrella_Limit" int   NOT NULL,
    "Fraud_Reported" boolean   NOT NULL,
    CONSTRAINT "pk_Insurance_Policy" PRIMARY KEY (
        "Policy_State"
     )
);

CREATE TABLE "Date" (
    "Incident_Date" date   NOT NULL,
    "Policy_Start_Date" date   NOT NULL,
    CONSTRAINT "pk_Date" PRIMARY KEY (
        "Incident_Date"
     )
);

CREATE TABLE "Incident_Type" (
    "Bodily_Injury" boolean   NOT NULL,
    "Property_damage" boolean   NOT NULL,
    "Incident_Hour_of_Day" int   NOT NULL,
    "Number_of_Vehicles" int   NOT NULL,
    "Police_Report" boolean   NOT NULL,
    "Incident_Date" date   NOT NULL,
    "Incident_Type" varchar   NOT NULL,
    "Collision-Type" varchar   NOT NULL,
    "Incident_State" varchar   NOT NULL,
    CONSTRAINT "pk_Incident_Type" PRIMARY KEY (
        "Incident_State"
     )
);

CREATE TABLE "Insurance_Claim" (
    "Policy_Number" int   NOT NULL,
    "Total_Claim" float   NOT NULL,
    "Injury_Claim" float   NOT NULL,
    "Property_Claim" float   NOT NULL,
    "Vehicle_Claim" float   NOT NULL,
    CONSTRAINT "pk_Insurance_Claim" PRIMARY KEY (
        "Policy_Number"
     )
);

ALTER TABLE "Car_Type" ADD CONSTRAINT "fk_Car_Type_Policy_Number" FOREIGN KEY("Policy_Number")
REFERENCES "Insurance_Policy" ("Policy_Number");

ALTER TABLE "Driver" ADD CONSTRAINT "fk_Driver_Policy_State" FOREIGN KEY("Policy_State")
REFERENCES "Insurance_Policy" ("Policy_State");

ALTER TABLE "Driver" ADD CONSTRAINT "fk_Driver_Incident_State" FOREIGN KEY("Incident_State")
REFERENCES "Incident_Location" ("Incident_State");

ALTER TABLE "Incident_Location" ADD CONSTRAINT "fk_Incident_Location_Incident_Date" FOREIGN KEY("Incident_Date")
REFERENCES "Incident_Type" ("Incident_Date");

ALTER TABLE "Insurance_Policy" ADD CONSTRAINT "fk_Insurance_Policy_Policy_Number" FOREIGN KEY("Policy_Number")
REFERENCES "Insurance_Claim" ("Policy_Number");

ALTER TABLE "Date" ADD CONSTRAINT "fk_Date_Policy_Start_Date" FOREIGN KEY("Policy_Start_Date")
REFERENCES "Insurance_Policy" ("Policy_Start_Date");

ALTER TABLE "Incident_Type" ADD CONSTRAINT "fk_Incident_Type_Incident_Date" FOREIGN KEY("Incident_Date")
REFERENCES "Date" ("Incident_Date");

ALTER TABLE "Incident_Type" ADD CONSTRAINT "fk_Incident_Type_Incident_State" FOREIGN KEY("Incident_State")
REFERENCES "Driver" ("Incident_State");


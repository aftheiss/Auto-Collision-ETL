--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Car_Type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Car_Type" (
    "Policy_Number" integer NOT NULL,
    "Model" character varying NOT NULL,
    "Make" character varying NOT NULL,
    "Year" integer NOT NULL
);


ALTER TABLE public."Car_Type" OWNER TO postgres;

--
-- Name: claims_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.claims_data (
    months_as_customer integer,
    age integer,
    policy_number integer,
    policy_bind_date date,
    policy_state character varying,
    policy_csl character varying,
    policy_deductable integer,
    policy_annual_premium character varying,
    umbrella_limit integer,
    insured_zip integer,
    insured_sex character varying,
    insured_education_level character varying,
    insured_occupation character varying,
    insured_hobbies character varying,
    insured_relationship character varying,
    "capital-gains" integer,
    "capital-loss" integer,
    incident_date date,
    incident_type character varying,
    collision_type character varying,
    incident_severity character varying,
    authorities_contacted character varying,
    incident_state character varying,
    incident_city character varying,
    incident_location character varying,
    incident_hour_of_the_day integer,
    number_of_vehicles_involved integer,
    property_damage character varying,
    bodily_injuries integer,
    witnesses integer,
    police_report_available character varying,
    total_claim_amount integer,
    injury_claim integer,
    property_claim integer,
    vehicle_claim integer,
    auto_make character varying,
    auto_model character varying,
    auto_year integer,
    fraud_reported character varying,
    _c39 character varying
);


ALTER TABLE public.claims_data OWNER TO postgres;

--
-- Name: date; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.date (
    incident_date date,
    policy_start_date date
);


ALTER TABLE public.date OWNER TO postgres;

--
-- Name: driver; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.driver (
    sex character varying(50),
    age integer,
    education character varying(50),
    policy_state character varying(200),
    incident_state character varying(50)
);


ALTER TABLE public.driver OWNER TO postgres;

--
-- Name: gov_code_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gov_code_info (
    territory character varying(50),
    state_name character varying(200),
    state_code integer,
    city_name character varying(200),
    county_code integer,
    county_name character varying(200),
    country_code integer
);


ALTER TABLE public.gov_code_info OWNER TO postgres;

--
-- Name: government_fatalitydata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.government_fatalitydata (
    "YEAR" integer,
    "STATE" integer,
    "ST_CASE" integer,
    "COUNTY" integer,
    "FATALS" integer,
    "A_CRAINJ" integer,
    "A_REGION" integer,
    "A_RU" integer,
    "A_INTER" integer,
    "A_RELRD" integer,
    "A_INTSEC" integer,
    "A_ROADFC" integer,
    "A_JUNC" integer,
    "A_MANCOL" integer,
    "A_TOD" integer,
    "A_DOW" integer,
    "A_CT" integer,
    "A_LT" integer,
    "A_MC" integer,
    "A_SPCRA" integer,
    "A_PED" integer,
    "A_PED_F" integer,
    "A_PEDAL" integer,
    "A_PEDAL_F" integer,
    "A_ROLL" integer,
    "A_POLPUR" integer,
    "A_POSBAC" integer,
    "A_D15_19" integer,
    "A_D16_19" integer,
    "A_D15_20" integer,
    "A_D16_20" integer,
    "A_D65PLS" integer,
    "A_D21_24" integer,
    "A_D16_24" integer,
    "A_RD" integer,
    "A_HR" integer,
    "A_DIST" integer,
    "A_DROWSY" integer
);


ALTER TABLE public.government_fatalitydata OWNER TO postgres;

--
-- Name: incident_location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.incident_location (
    state character varying(50),
    zipcode integer,
    city character varying(200),
    incident_date date,
    incident_location character varying(250)
);


ALTER TABLE public.incident_location OWNER TO postgres;

--
-- Name: incident_policy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.incident_policy (
    policy_state character varying(50),
    policy_number integer,
    deductable integer,
    csl character varying(200),
    policy_start_date date,
    policy_premium character varying(200),
    umbrella_limit integer,
    fraud_reported character varying(50)
);


ALTER TABLE public.incident_policy OWNER TO postgres;

--
-- Name: incident_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.incident_type (
    bodily_injury integer,
    property_damage character varying(50),
    incident_hour_of_day integer,
    number_of_vehicles integer,
    policy_report character varying(50),
    incident_date date,
    incident_type character varying(200),
    collision_type character varying(200),
    incident_state character varying(50)
);


ALTER TABLE public.incident_type OWNER TO postgres;

--
-- Name: Car_Type pk_Car_Type; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Car_Type"
    ADD CONSTRAINT "pk_Car_Type" PRIMARY KEY ("Policy_Number");


--
-- PostgreSQL database dump complete
--


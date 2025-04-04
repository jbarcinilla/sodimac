--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-04 11:52:07

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE IF EXISTS "CENTRALDEAUTORIZACIONES";
--
-- TOC entry 4898 (class 1262 OID 16602)
-- Name: CENTRALDEAUTORIZACIONES; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "CENTRALDEAUTORIZACIONES" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-ES';


ALTER DATABASE "CENTRALDEAUTORIZACIONES" OWNER TO postgres;

\connect "CENTRALDEAUTORIZACIONES"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16603)
-- Name: ca; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ca;


ALTER SCHEMA ca OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 16605)
-- Name: customer; Type: TABLE; Schema: ca; Owner: postgres
--

CREATE TABLE ca.customer (
    id bigint NOT NULL,
    document character varying(255) NOT NULL,
    document_type character varying(50) NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    address character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    email character varying(255),
    authorization_date date NOT NULL,
    authoriza boolean NOT NULL,
    authorizationdate character varying(255),
    documenttype character varying(255),
    firstname character varying(255),
    lastname character varying(255)
);


ALTER TABLE ca.customer OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16604)
-- Name: customer_id_seq; Type: SEQUENCE; Schema: ca; Owner: postgres
--

CREATE SEQUENCE ca.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ca.customer_id_seq OWNER TO postgres;

--
-- TOC entry 4899 (class 0 OID 0)
-- Dependencies: 218
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: ca; Owner: postgres
--

ALTER SEQUENCE ca.customer_id_seq OWNED BY ca.customer.id;


--
-- TOC entry 4743 (class 2604 OID 16613)
-- Name: customer id; Type: DEFAULT; Schema: ca; Owner: postgres
--

ALTER TABLE ONLY ca.customer ALTER COLUMN id SET DEFAULT nextval('ca.customer_id_seq'::regclass);


--
-- TOC entry 4892 (class 0 OID 16605)
-- Dependencies: 219
-- Data for Name: customer; Type: TABLE DATA; Schema: ca; Owner: postgres
--

INSERT INTO ca.customer VALUES (1, '123456789', 'ID', 'John', 'Doe', '123 Main St', 'New York', 'NY', 'USA', 'john.doe@example.com', '2025-04-01', true, '2025-04-01', 'ID', 'John', 'Doe') ON CONFLICT DO NOTHING;
INSERT INTO ca.customer VALUES (2, '987654321', 'Passport', 'Jane', 'Smith', '456 Elm St', 'Los Angeles', 'CA', 'USA', 'jane.smith@example.com', '2025-04-02', false, '2025-04-02', 'Passport', 'Jane', 'Smith') ON CONFLICT DO NOTHING;
INSERT INTO ca.customer VALUES (3, '567890123', 'ID', 'Carlos', 'Gomez', '789 Pine St', 'Miami', 'FL', 'USA', 'carlos.gomez@example.com', '2025-04-03', true, '2025-04-03', 'ID', 'Carlos', 'Gomez') ON CONFLICT DO NOTHING;
INSERT INTO ca.customer VALUES (4, '345678901', 'Passport', 'Emily', 'Clark', '101 Maple St', 'Chicago', 'IL', 'USA', 'emily.clark@example.com', '2025-04-04', true, '2025-04-04', 'Passport', 'Emily', 'Clark') ON CONFLICT DO NOTHING;
INSERT INTO ca.customer VALUES (5, '112233445', 'ID', 'Michael', 'Brown', '202 Oak St', 'Houston', 'TX', 'USA', 'michael.brown@example.com', '2025-04-05', false, '2025-04-05', 'ID', 'Michael', 'Brown') ON CONFLICT DO NOTHING;
INSERT INTO ca.customer VALUES (6, '221144558', 'Passport', 'Anna', 'Wilson', '303 Cedar St', 'Seattle', 'WA', 'USA', 'anna.wilson@example.com', '2025-04-06', true, '2025-04-06', 'Passport', 'Anna', 'Wilson') ON CONFLICT DO NOTHING;
INSERT INTO ca.customer VALUES (7, '998877665', 'ID', 'David', 'Lee', '404 Walnut St', 'Austin', 'TX', 'USA', 'david.lee@example.com', '2025-04-07', false, '2025-04-07', 'ID', 'David', 'Lee') ON CONFLICT DO NOTHING;
INSERT INTO ca.customer VALUES (8, '889977665', 'Passport', 'Sophia', 'Taylor', '505 Birch St', 'Boston', 'MA', 'USA', 'sophia.taylor@example.com', '2025-04-08', true, '2025-04-08', 'Passport', 'Sophia', 'Taylor') ON CONFLICT DO NOTHING;
INSERT INTO ca.customer VALUES (9, '123443211', 'ID', 'Andrew', 'Martin', '606 Chestnut St', 'Denver', 'CO', 'USA', 'andrew.martin@example.com', '2025-04-09', true, '2025-04-09', 'ID', 'Andrew', 'Martin') ON CONFLICT DO NOTHING;
INSERT INTO ca.customer VALUES (10, '778899665', 'Passport', 'Olivia', 'Anderson', '707 Spruce St', 'Phoenix', 'AZ', 'USA', 'olivia.anderson@example.com', '2025-04-10', false, '2025-04-10', 'Passport', 'Olivia', 'Anderson') ON CONFLICT DO NOTHING;


--
-- TOC entry 4900 (class 0 OID 0)
-- Dependencies: 218
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: ca; Owner: postgres
--

SELECT pg_catalog.setval('ca.customer_id_seq', 1, false);


--
-- TOC entry 4745 (class 2606 OID 16615)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: ca; Owner: postgres
--

ALTER TABLE ONLY ca.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


-- Completed on 2025-04-04 11:52:07

--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-04 11:53:54

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

DROP DATABASE IF EXISTS "ESPECIALISTAS";
--
-- TOC entry 4898 (class 1262 OID 16479)
-- Name: ESPECIALISTAS; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "ESPECIALISTAS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-ES';


ALTER DATABASE "ESPECIALISTAS" OWNER TO postgres;

\connect "ESPECIALISTAS"

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
-- TOC entry 6 (class 2615 OID 16480)
-- Name: ep; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ep;


ALTER SCHEMA ep OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 16482)
-- Name: tbl_clients; Type: TABLE; Schema: ep; Owner: postgres
--

CREATE TABLE ep.tbl_clients (
    id bigint NOT NULL,
    document character varying(255) NOT NULL,
    document_type character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    address character varying(255),
    city character varying(255),
    department character varying(255),
    country character varying(255),
    email character varying(255) NOT NULL
);


ALTER TABLE ep.tbl_clients OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16481)
-- Name: tbl_clients_id_seq; Type: SEQUENCE; Schema: ep; Owner: postgres
--

CREATE SEQUENCE ep.tbl_clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ep.tbl_clients_id_seq OWNER TO postgres;

--
-- TOC entry 4899 (class 0 OID 0)
-- Dependencies: 218
-- Name: tbl_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: ep; Owner: postgres
--

ALTER SEQUENCE ep.tbl_clients_id_seq OWNED BY ep.tbl_clients.id;


--
-- TOC entry 4743 (class 2604 OID 16498)
-- Name: tbl_clients id; Type: DEFAULT; Schema: ep; Owner: postgres
--

ALTER TABLE ONLY ep.tbl_clients ALTER COLUMN id SET DEFAULT nextval('ep.tbl_clients_id_seq'::regclass);


--
-- TOC entry 4892 (class 0 OID 16482)
-- Dependencies: 219
-- Data for Name: tbl_clients; Type: TABLE DATA; Schema: ep; Owner: postgres
--



--
-- TOC entry 4900 (class 0 OID 0)
-- Dependencies: 218
-- Name: tbl_clients_id_seq; Type: SEQUENCE SET; Schema: ep; Owner: postgres
--

SELECT pg_catalog.setval('ep.tbl_clients_id_seq', 1, false);


--
-- TOC entry 4745 (class 2606 OID 16500)
-- Name: tbl_clients tbl_clients_pkey; Type: CONSTRAINT; Schema: ep; Owner: postgres
--

ALTER TABLE ONLY ep.tbl_clients
    ADD CONSTRAINT tbl_clients_pkey PRIMARY KEY (id);


-- Completed on 2025-04-04 11:53:54

--
-- PostgreSQL database dump complete
--


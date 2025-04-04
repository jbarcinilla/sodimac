--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-04 11:38:04

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

DROP DATABASE IF EXISTS "ALQUILER";
--
-- TOC entry 4898 (class 1262 OID 16507)
-- Name: ALQUILER; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "ALQUILER" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-ES';


ALTER DATABASE "ALQUILER" OWNER TO postgres;

\connect "ALQUILER"

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
-- TOC entry 6 (class 2615 OID 16509)
-- Name: al; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA al;


ALTER SCHEMA al OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 16511)
-- Name: t_clients; Type: TABLE; Schema: al; Owner: postgres
--

CREATE TABLE al.t_clients (
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


ALTER TABLE al.t_clients OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16510)
-- Name: t_clients_id_seq; Type: SEQUENCE; Schema: al; Owner: postgres
--

CREATE SEQUENCE al.t_clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE al.t_clients_id_seq OWNER TO postgres;

--
-- TOC entry 4899 (class 0 OID 0)
-- Dependencies: 218
-- Name: t_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: al; Owner: postgres
--

ALTER SEQUENCE al.t_clients_id_seq OWNED BY al.t_clients.id;


--
-- TOC entry 4743 (class 2604 OID 16519)
-- Name: t_clients id; Type: DEFAULT; Schema: al; Owner: postgres
--

ALTER TABLE ONLY al.t_clients ALTER COLUMN id SET DEFAULT nextval('al.t_clients_id_seq'::regclass);


--
-- TOC entry 4892 (class 0 OID 16511)
-- Dependencies: 219
-- Data for Name: t_clients; Type: TABLE DATA; Schema: al; Owner: postgres
--



--
-- TOC entry 4900 (class 0 OID 0)
-- Dependencies: 218
-- Name: t_clients_id_seq; Type: SEQUENCE SET; Schema: al; Owner: postgres
--

SELECT pg_catalog.setval('al.t_clients_id_seq', 1, false);


--
-- TOC entry 4745 (class 2606 OID 16521)
-- Name: t_clients t_clients_pkey; Type: CONSTRAINT; Schema: al; Owner: postgres
--

ALTER TABLE ONLY al.t_clients
    ADD CONSTRAINT t_clients_pkey PRIMARY KEY (id);


-- Completed on 2025-04-04 11:38:04

--
-- PostgreSQL database dump complete
--


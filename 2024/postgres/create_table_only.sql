--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-07-18 12:23:52

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
-- TOC entry 215 (class 1259 OID 100703)
-- Name: scores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.scores (
    id character(8) NOT NULL,
    math real DEFAULT 0,
    literature real DEFAULT 0,
    foreign_language real DEFAULT 0,
    physics real DEFAULT 0,
    chemistry real DEFAULT 0,
    biology real DEFAULT 0,
    history real DEFAULT 0,
    geography real DEFAULT 0,
    civic_education real DEFAULT 0,
    foreign_language_code character(2) DEFAULT NULL::bpchar,
    language_name character varying(50) GENERATED ALWAYS AS (
CASE foreign_language_code
    WHEN 'N1'::bpchar THEN 'English'::text
    WHEN 'N2'::bpchar THEN 'Russian'::text
    WHEN 'N3'::bpchar THEN 'French'::text
    WHEN 'N4'::bpchar THEN 'Chinese'::text
    WHEN 'N5'::bpchar THEN 'German'::text
    WHEN 'N6'::bpchar THEN 'Japanese'::text
    WHEN 'N7'::bpchar THEN 'Korean'::text
    ELSE 'Unknown'::text
END) STORED
);


ALTER TABLE public.scores OWNER TO postgres;

--
-- TOC entry 4698 (class 2606 OID 100717)
-- Name: scores scores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scores
    ADD CONSTRAINT scores_pkey PRIMARY KEY (id);


-- Completed on 2024-07-18 12:23:52

--
-- PostgreSQL database dump complete
--


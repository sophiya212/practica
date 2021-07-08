--
-- PostgreSQL database dump
--

-- Dumped from database version 10.17
-- Dumped by pg_dump version 13.3

-- Started on 2021-07-07 23:21:29

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

--
-- TOC entry 1 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2811 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

--
-- TOC entry 198 (class 1259 OID 16422)
-- Name: Клиент; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Клиент" (
    "Номер_клиента" integer NOT NULL,
    "ФИО_клиента" character varying(30),
    "Дата_рождения" date,
    "Номер_телефона" numeric,
    "Город" character varying(30)
);


ALTER TABLE public."Клиент" OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16427)
-- Name: Код_города; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Код_города" (
    "Город" character varying(30) NOT NULL,
    "Код" integer
);


ALTER TABLE public."Код_города" OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16417)
-- Name: Сотрудник; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Сотрудник" (
    "Номер_сотрудника" integer NOT NULL,
    "ФИО_сотрудника" character varying(30),
    "Дата_рождения" date,
    "Номер_телефона" numeric,
    "Город_работы" character varying(30)
);


ALTER TABLE public."Сотрудник" OWNER TO postgres;

--
-- TOC entry 2682 (class 2606 OID 16426)
-- Name: Клиент Клиент_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Клиент"
    ADD CONSTRAINT "Клиент_pkey" PRIMARY KEY ("Номер_клиента");


--
-- TOC entry 2684 (class 2606 OID 16431)
-- Name: Код_города Код_города_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Код_города"
    ADD CONSTRAINT "Код_города_pkey" PRIMARY KEY ("Город");


--
-- TOC entry 2680 (class 2606 OID 16421)
-- Name: Сотрудник Сотрудник_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Сотрудник"
    ADD CONSTRAINT "Сотрудник_pkey" PRIMARY KEY ("Номер_сотрудника");


-- Completed on 2021-07-07 23:21:31

--
-- PostgreSQL database dump complete
--


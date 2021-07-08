--
-- PostgreSQL database dump
--

-- Dumped from database version 10.17
-- Dumped by pg_dump version 13.3

-- Started on 2021-07-08 15:02:12

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
-- TOC entry 2814 (class 0 OID 0)
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
-- TOC entry 2807 (class 0 OID 16422)
-- Dependencies: 198
-- Data for Name: Клиент; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Клиент" ("Номер_клиента", "ФИО_клиента", "Дата_рождения", "Номер_телефона", "Город") FROM stdin;
1	Бессонова Ксения Денисовна	1978-08-25	79004150000	Омск
2	Бондарева Алина Марковна	19998-04-12	79041453478	Иркутск
3	Галкин Марк Иванович	2001-07-03	79513099999	Липецк
5	Еремина Вероника Марковна	1999-11-30	79041236570	Иркутск
6	Завьялов Георгий Романович	1989-05-04	79525665812	Ростов
7	Казакова Ангелина Андреевна	1967-06-10	79772542376	Москва
8	Ковалев Илья Егорович	1998-04-20	79952457623	Краснодар
9	Нечаева Елизавета Всеволодовна	2000-08-24	79910651299	Санкт-Петербург
10	Смирнов Дмитрий Львович	1996-10-27	79526047890	Ростов
4	Демин Максим Максимович	1995-09-14	79006753723	Омск
\.


--
-- TOC entry 2808 (class 0 OID 16427)
-- Dependencies: 199
-- Data for Name: Код_города; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Код_города" ("Город", "Код") FROM stdin;
Иркутск	904
Краснодар\n	995
Липецк	951
Москва\n	977
Омск	900
Ростов	952
Санкт-Петербург	991
\.


--
-- TOC entry 2806 (class 0 OID 16417)
-- Dependencies: 197
-- Data for Name: Сотрудник; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Сотрудник" ("Номер_сотрудника", "ФИО_сотрудника", "Дата_рождения", "Номер_телефона", "Город_работы") FROM stdin;
18	Тарасов Дмитрий Кириллович	1990-08-27	79951852718	Краснодар
11	Волкова Арина Дмитриевна	1989-09-30	79513047213	Липецк
12	Гусев Лев Григорьевич	1997-11-01	79772571381	Москва
13	Козырева Мария Матвеевна	1989-05-13	79004453261	Омск
14	Майоров Макар Никитич	1990-06-14	79041428410	Иркутск
15	Орлов Иван Ярославович	1992-12-23	79919921567	Санкт-Петербург
16	Попов Иван Артёмович	1985-01-31	79779939012	Москва
17	Рыжова Мария Львовна	1994-02-14	79525439015	Ростов
19	Шаповалова София Александровна	1997-03-06	79919932765	Санкт-Петербург
\.


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


-- Completed on 2021-07-08 15:02:13

--
-- PostgreSQL database dump complete
--


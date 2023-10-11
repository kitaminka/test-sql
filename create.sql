--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2023-09-22 15:10:37

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
-- TOC entry 219 (class 1259 OID 16439)
-- Name: consignment; Type: TABLE; Schema: public; Owner: postgres
--
DROP DATABASE IF EXISTS db;

CREATE DATABASE db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Europe.1252'
    LC_CTYPE = 'English_Europe.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE public.consignment (
    id integer NOT NULL,
    creation_date date,
    count integer,
    product_id integer,
    manufacturer_id integer,
    customer_id integer
);


ALTER TABLE public.consignment OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16408)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    name text
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16415)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    full_name text,
    manufacturer_id integer
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16401)
-- Name: manufacturers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.manufacturers (
    id integer NOT NULL,
    name text
);


ALTER TABLE public.manufacturers OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16427)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name text,
    "manufacturer_Id" integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 4658 (class 2606 OID 16443)
-- Name: consignment consignment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consignment
    ADD CONSTRAINT consignment_pkey PRIMARY KEY (id);


--
-- TOC entry 4652 (class 2606 OID 16414)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 4654 (class 2606 OID 16421)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- TOC entry 4650 (class 2606 OID 16407)
-- Name: manufacturers manufacturers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.manufacturers
    ADD CONSTRAINT manufacturers_pkey PRIMARY KEY (id);


--
-- TOC entry 4656 (class 2606 OID 16433)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 4661 (class 2606 OID 16454)
-- Name: consignment customers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consignment
    ADD CONSTRAINT customers FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- TOC entry 4659 (class 2606 OID 16422)
-- Name: employees manufacturers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT manufacturers FOREIGN KEY (manufacturer_id) REFERENCES public.manufacturers(id);


--
-- TOC entry 4660 (class 2606 OID 16434)
-- Name: products manufacturers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT manufacturers FOREIGN KEY ("manufacturer_Id") REFERENCES public.manufacturers(id);


--
-- TOC entry 4662 (class 2606 OID 16449)
-- Name: consignment manufacturers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consignment
    ADD CONSTRAINT manufacturers FOREIGN KEY (manufacturer_id) REFERENCES public.manufacturers(id);


--
-- TOC entry 4663 (class 2606 OID 16444)
-- Name: consignment products; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consignment
    ADD CONSTRAINT products FOREIGN KEY (product_id) REFERENCES public.products(id);


-- Completed on 2023-09-22 15:10:37

--
-- PostgreSQL database dump complete
--


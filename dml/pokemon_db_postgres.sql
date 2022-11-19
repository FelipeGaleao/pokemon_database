--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.0

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

DROP DATABASE pokemon_db;
--
-- Name: pokemon_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE pokemon_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE pokemon_db OWNER TO postgres;

\connect pokemon_db

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
-- Data for Name: batalha; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: evolucao; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: habilidade; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: instancia_pokemon; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: pokebola; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: pokemon_habilidade; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: round; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: torneio; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: treinador; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: treinador_batalha; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: turno; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- PostgreSQL database dump complete
--


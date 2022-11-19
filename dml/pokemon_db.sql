--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.0

-- Started on 2022-11-19 05:52:20 UTC

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
-- TOC entry 3396 (class 1262 OID 16569)
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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16748)
-- Name: batalha; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.batalha (
    id integer NOT NULL
);


ALTER TABLE public.batalha OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16753)
-- Name: evolucao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evolucao (
    pokemon_npokedex_evolucao integer,
    fk_pokemon_npokedex_atual integer
);


ALTER TABLE public.evolucao OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16776)
-- Name: habilidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.habilidade (
    id integer NOT NULL,
    nome character varying,
    descricao character varying,
    dano integer
);


ALTER TABLE public.habilidade OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16756)
-- Name: instancia_pokemon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instancia_pokemon (
    id_instancia integer NOT NULL,
    fk_pokemon_numero_pokedex integer
);


ALTER TABLE public.instancia_pokemon OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16783)
-- Name: pokebola; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokebola (
    nivel_de_forca character varying,
    id integer NOT NULL,
    fk_treinador_id integer
);


ALTER TABLE public.pokebola OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16741)
-- Name: pokemon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemon (
    nome character varying,
    altura double precision,
    peso double precision,
    hp integer,
    ataque integer,
    defesa integer,
    ataque_especial integer,
    defesa_especial integer,
    velocidade double precision,
    tipo_1 character varying,
    tipo_2 character varying,
    numero_pokedex integer NOT NULL,
    fk_pokebola_id integer
);


ALTER TABLE public.pokemon OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16790)
-- Name: pokemon_habilidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemon_habilidade (
    fk_pokemon_numero_pokedex integer,
    fk_habilidade_id integer
);


ALTER TABLE public.pokemon_habilidade OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16766)
-- Name: round; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.round (
    id integer NOT NULL,
    fk_batalha_id integer,
    fk_instancia_pokemon_id_1 integer NOT NULL,
    fk_instancia_pokemon_id_2 integer NOT NULL
);


ALTER TABLE public.round OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16761)
-- Name: torneio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.torneio (
    nome character varying
);


ALTER TABLE public.torneio OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16734)
-- Name: treinador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.treinador (
    nome character varying,
    id integer NOT NULL,
    xp integer
);


ALTER TABLE public.treinador OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16793)
-- Name: treinador_batalha; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.treinador_batalha (
    fk_treinador_id integer,
    fk_batalha_id integer
);


ALTER TABLE public.treinador_batalha OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16771)
-- Name: turno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.turno (
    escudo_1_uso boolean,
    escudo_2_uso boolean,
    dano_causado_pokemon_1 integer,
    dano_causado_pokemon_2 integer,
    habilidade_pokemon_1 integer,
    habilidade_pokemon_2 character varying,
    fk_round_id integer
);


ALTER TABLE public.turno OWNER TO postgres;

--
-- TOC entry 3381 (class 0 OID 16748)
-- Dependencies: 216
-- Data for Name: batalha; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3382 (class 0 OID 16753)
-- Dependencies: 217
-- Data for Name: evolucao; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3387 (class 0 OID 16776)
-- Dependencies: 222
-- Data for Name: habilidade; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3383 (class 0 OID 16756)
-- Dependencies: 218
-- Data for Name: instancia_pokemon; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3388 (class 0 OID 16783)
-- Dependencies: 223
-- Data for Name: pokebola; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3380 (class 0 OID 16741)
-- Dependencies: 215
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3389 (class 0 OID 16790)
-- Dependencies: 224
-- Data for Name: pokemon_habilidade; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3385 (class 0 OID 16766)
-- Dependencies: 220
-- Data for Name: round; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3384 (class 0 OID 16761)
-- Dependencies: 219
-- Data for Name: torneio; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3379 (class 0 OID 16734)
-- Dependencies: 214
-- Data for Name: treinador; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3390 (class 0 OID 16793)
-- Dependencies: 225
-- Data for Name: treinador_batalha; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3386 (class 0 OID 16771)
-- Dependencies: 221
-- Data for Name: turno; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3224 (class 2606 OID 16752)
-- Name: batalha batalha_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batalha
    ADD CONSTRAINT batalha_pkey PRIMARY KEY (id);


--
-- TOC entry 3230 (class 2606 OID 16782)
-- Name: habilidade habilidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.habilidade
    ADD CONSTRAINT habilidade_pkey PRIMARY KEY (id);


--
-- TOC entry 3226 (class 2606 OID 16760)
-- Name: instancia_pokemon instancia_pokemon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instancia_pokemon
    ADD CONSTRAINT instancia_pokemon_pkey PRIMARY KEY (id_instancia);


--
-- TOC entry 3232 (class 2606 OID 16789)
-- Name: pokebola pokebola_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokebola
    ADD CONSTRAINT pokebola_pkey PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 16747)
-- Name: pokemon pokemon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (numero_pokedex);


--
-- TOC entry 3228 (class 2606 OID 16770)
-- Name: round round_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.round
    ADD CONSTRAINT round_pkey PRIMARY KEY (id, fk_instancia_pokemon_id_1, fk_instancia_pokemon_id_2);


--
-- TOC entry 3220 (class 2606 OID 16740)
-- Name: treinador treinador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treinador
    ADD CONSTRAINT treinador_pkey PRIMARY KEY (id);


--
-- TOC entry 3234 (class 2606 OID 16801)
-- Name: evolucao fk_evolucao_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evolucao
    ADD CONSTRAINT fk_evolucao_1 FOREIGN KEY (fk_pokemon_npokedex_atual) REFERENCES public.pokemon(numero_pokedex) ON DELETE CASCADE;


--
-- TOC entry 3235 (class 2606 OID 16806)
-- Name: instancia_pokemon fk_instancia_pokemon_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instancia_pokemon
    ADD CONSTRAINT fk_instancia_pokemon_2 FOREIGN KEY (fk_pokemon_numero_pokedex) REFERENCES public.pokemon(numero_pokedex) ON DELETE RESTRICT;


--
-- TOC entry 3233 (class 2606 OID 16796)
-- Name: pokemon fk_pokemon_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT fk_pokemon_2 FOREIGN KEY (fk_pokebola_id) REFERENCES public.pokebola(id) ON DELETE CASCADE;


--
-- TOC entry 3236 (class 2606 OID 16811)
-- Name: round fk_round_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.round
    ADD CONSTRAINT fk_round_2 FOREIGN KEY (fk_batalha_id) REFERENCES public.batalha(id) ON DELETE RESTRICT;

ALTER TABLE ONLY public.treinador_batalha
    ADD CONSTRAINT fk_treinador FOREIGN KEY (fk_treinador_id) REFERENCES public.treinador(id) ON DELETE RESTRICT;


ALTER TABLE ONLY public.treinador_batalha
    ADD CONSTRAINT fk_batalha FOREIGN KEY (fk_batalha_id) REFERENCES public.batalha(id) ON DELETE RESTRICT;

-- Completed on 2022-11-19 05:52:20 UTC

--
-- PostgreSQL database dump complete
--


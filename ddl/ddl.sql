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

connect pokemon_db

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
    id integer UNIQUE NOT NULL
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
    id integer unique NOT NULL,
    nome character varying,
    descricao character varying,
    dano integer,
    PRIMARY KEY (id)
);


ALTER TABLE public.habilidade OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16756)
-- Name: instancia_pokemon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instancia_pokemon (
    id_instancia integer unique NOT NULL,
    fk_pokemon_numero_pokedex integer,
    PRIMARY KEY (id_instancia)
);


ALTER TABLE public.instancia_pokemon OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16783)
-- Name: pokebola; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokebola (
    nivel_de_forca character varying,
    id integer unique NOT NULL,
    fk_treinador_id integer,
    PRIMARY KEY (id)
);


ALTER TABLE public.pokebola OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16741)
-- Name: pokemon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemon (
    id_pokemon integer unique NOT NULL,
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
    fk_pokebola_id integer,
    PRIMARY KEY (id_pokemon)
);


ALTER TABLE public.pokemon OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16790)
-- Name: pokemon_habilidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemon_habilidade (
    id_pokemon_habilidade integer unique NOT NULL,
    fk_pokemon_numero_pokedex integer,
    fk_habilidade_id integer,
    PRIMARY KEY (id_pokemon_habilidade)
);


ALTER TABLE public.pokemon_habilidade OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16766)
-- Name: round; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.round (
    id integer unique NOT NULL,
    fk_batalha_id integer,
    fk_instancia_pokemon_id_1 integer NOT NULL,
    fk_instancia_pokemon_id_2 integer NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (fk_batalha_id) REFERENCES public.batalha(id),
    FOREIGN KEY (fk_instancia_pokemon_id_1) REFERENCES public.instancia_pokemon(id_instancia),
    FOREIGN KEY (fk_instancia_pokemon_id_2) REFERENCES public.instancia_pokemon(id_instancia)
);


ALTER TABLE public.round OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16761)
-- Name: torneio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.torneio (
    id integer unique NOT NULL,
    nome character varying,
    PRIMARY KEY (id)
);


ALTER TABLE public.torneio OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16734)
-- Name: treinador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.treinador (
    nome character varying,
    id integer NOT NULL,
    xp integer,
    PRIMARY KEY (id)
);


ALTER TABLE public.treinador OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16793)
-- Name: treinador_batalha; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.treinador_batalha (
    id_treinador_batalha integer unique NOT NULL,
    fk_treinador_id integer,
    fk_batalha_id integer,
    PRIMARY KEY (id_treinador_batalha)
);


ALTER TABLE public.treinador_batalha OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16771)
-- Name: turno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.turno (
    id_turno integer unique NOT NULL,
    escudo_1_uso boolean,
    escudo_2_uso boolean,
    dano_causado_pokemon_1 integer,
    dano_causado_pokemon_2 integer,
    habilidade_pokemon_1 integer,
    habilidade_pokemon_2 character varying,
    fk_round_id integer,
    PRIMARY KEY (id_turno)
);


ALTER TABLE public.turno OWNER TO postgres;


ALTER TABLE ONLY public.batalha
    ADD CONSTRAINT batalha_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.pokebola
    ADD CONSTRAINT fk_treinador_pokebola FOREIGN KEY (fk_treinador_id) REFERENCES public.treinador(id);

ALTER TABLE ONLY public.treinador_batalha
    ADD CONSTRAINT fk_treinador_batalha_batalha_id FOREIGN KEY (fk_batalha_id) REFERENCES public.batalha(id),
    ADD CONSTRAINT fk_treinador_batalha_treinador_id FOREIGN KEY (fk_treinador_id) REFERENCES public.treinador(id);

ALTER TABLE ONLY public.turno
    ADD CONSTRAINT fk_turno_round FOREIGN KEY (fk_round_id) REFERENCES public.round(id),
    ADD CONSTRAINT fk_habilidade_pokemon_1 FOREIGN KEY (habilidade_pokemon_1) REFERENCES public.pokemon_habilidade(id_pokemon_habilidade),
    ADD CONSTRAINT fk_habilidade_pokemon_2 FOREIGN KEY (habilidade_pokemon_2) REFERENCES public.pokemon_habilidade(id_pokemon_habilidade),
    ALTER COLUMN habilidade_pokemon_2 TYPE integer USING (habilidade_pokemon_2::integer);

ALTER TABLE ONLY public.pokemon_habilidade
    ADD CONSTRAINT fk_pokemon_habilidade_pokemon FOREIGN KEY (fk_habilidade_id) REFERENCES public.habilidade(id);

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT fk_pokemon_pokebola FOREIGN KEY (fk_pokebola_id) REFERENCES public.pokebola(id);
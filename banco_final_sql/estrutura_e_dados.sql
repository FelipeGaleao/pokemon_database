--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Debian 15.1-1.pgdg110+1)
-- Dumped by pg_dump version 15.1 (Debian 15.1-1.pgdg110+1)

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

-- *not* creating schema, since initdb creates it


--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS '';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: batalha; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.batalha (
    id integer NOT NULL,
    fk_torneio_id integer
);


--
-- Name: evolucao; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.evolucao (
    pokemon_npokedex_evolucao integer,
    fk_pokemon_npokedex_atual integer
);


--
-- Name: habilidade; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.habilidade (
    id integer NOT NULL,
    nome character varying,
    descricao character varying,
    dano integer
);


--
-- Name: instancia_pokemon; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.instancia_pokemon (
    id_instancia integer NOT NULL,
    fk_pokemon_numero_pokedex integer,
    fk_pokebola_id integer NOT NULL
);


--
-- Name: pokebola; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pokebola (
    nivel_de_forca character varying,
    id integer NOT NULL,
    fk_treinador_id integer
);


--
-- Name: pokemon; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pokemon (
    id_pokemon integer NOT NULL,
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
    numero_pokedex integer NOT NULL
);


--
-- Name: pokemon_habilidade; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pokemon_habilidade (
    id_pokemon_habilidade integer NOT NULL,
    fk_pokemon_numero_pokedex integer,
    fk_habilidade_id integer
);


--
-- Name: round; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.round (
    id integer NOT NULL,
    fk_batalha_id integer,
    fk_instancia_pokemon_id_1 integer NOT NULL,
    fk_instancia_pokemon_id_2 integer NOT NULL,
    pokemon_1 bigint,
    pokemon_2 bigint
);


--
-- Name: torneio; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.torneio (
    id integer NOT NULL,
    nome character varying
);


--
-- Name: treinador; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.treinador (
    nome character varying,
    id integer NOT NULL,
    xp integer
);


--
-- Name: treinador_batalha; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.treinador_batalha (
    id_treinador_batalha integer NOT NULL,
    fk_treinador_id integer,
    fk_batalha_id integer
);


--
-- Name: turno; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.turno (
    id_turno integer NOT NULL,
    escudo_1_uso boolean,
    escudo_2_uso boolean,
    dano_causado_pokemon_1 integer,
    dano_causado_pokemon_2 integer,
    habilidade_pokemon_1 integer,
    habilidade_pokemon_2 integer,
    fk_round_id integer,
    id bigint,
    pokemon_1 bigint,
    pokemon_2 bigint
);


--
-- Data for Name: batalha; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.batalha VALUES (0, 1);
INSERT INTO public.batalha VALUES (1, 1);
INSERT INTO public.batalha VALUES (2, 1);
INSERT INTO public.batalha VALUES (3, 1);
INSERT INTO public.batalha VALUES (4, 1);
INSERT INTO public.batalha VALUES (5, 1);
INSERT INTO public.batalha VALUES (6, 1);
INSERT INTO public.batalha VALUES (7, 1);
INSERT INTO public.batalha VALUES (8, 1);
INSERT INTO public.batalha VALUES (9, 1);
INSERT INTO public.batalha VALUES (10, 1);
INSERT INTO public.batalha VALUES (11, 1);
INSERT INTO public.batalha VALUES (12, 1);
INSERT INTO public.batalha VALUES (13, 1);
INSERT INTO public.batalha VALUES (14, 1);
INSERT INTO public.batalha VALUES (15, 1);
INSERT INTO public.batalha VALUES (16, 1);
INSERT INTO public.batalha VALUES (17, 1);
INSERT INTO public.batalha VALUES (18, 1);
INSERT INTO public.batalha VALUES (19, 1);
INSERT INTO public.batalha VALUES (20, 1);
INSERT INTO public.batalha VALUES (21, 1);
INSERT INTO public.batalha VALUES (22, 1);
INSERT INTO public.batalha VALUES (23, 1);
INSERT INTO public.batalha VALUES (24, 1);
INSERT INTO public.batalha VALUES (25, 1);
INSERT INTO public.batalha VALUES (26, 1);
INSERT INTO public.batalha VALUES (27, 1);
INSERT INTO public.batalha VALUES (28, 1);
INSERT INTO public.batalha VALUES (29, 1);
INSERT INTO public.batalha VALUES (30, 1);
INSERT INTO public.batalha VALUES (31, 1);
INSERT INTO public.batalha VALUES (32, 1);
INSERT INTO public.batalha VALUES (33, 1);
INSERT INTO public.batalha VALUES (34, 1);
INSERT INTO public.batalha VALUES (35, 1);
INSERT INTO public.batalha VALUES (36, 1);
INSERT INTO public.batalha VALUES (37, 1);
INSERT INTO public.batalha VALUES (38, 1);
INSERT INTO public.batalha VALUES (39, 1);
INSERT INTO public.batalha VALUES (40, 1);
INSERT INTO public.batalha VALUES (41, 1);
INSERT INTO public.batalha VALUES (42, 1);
INSERT INTO public.batalha VALUES (43, 1);
INSERT INTO public.batalha VALUES (44, 1);
INSERT INTO public.batalha VALUES (45, 1);
INSERT INTO public.batalha VALUES (46, 1);
INSERT INTO public.batalha VALUES (47, 1);
INSERT INTO public.batalha VALUES (48, 1);
INSERT INTO public.batalha VALUES (49, 1);
INSERT INTO public.batalha VALUES (50, 1);
INSERT INTO public.batalha VALUES (51, 1);
INSERT INTO public.batalha VALUES (52, 1);
INSERT INTO public.batalha VALUES (53, 1);
INSERT INTO public.batalha VALUES (54, 1);
INSERT INTO public.batalha VALUES (55, 1);
INSERT INTO public.batalha VALUES (56, 1);
INSERT INTO public.batalha VALUES (57, 1);
INSERT INTO public.batalha VALUES (58, 1);
INSERT INTO public.batalha VALUES (59, 1);
INSERT INTO public.batalha VALUES (60, 1);
INSERT INTO public.batalha VALUES (61, 1);
INSERT INTO public.batalha VALUES (62, 1);
INSERT INTO public.batalha VALUES (63, 1);
INSERT INTO public.batalha VALUES (64, 1);
INSERT INTO public.batalha VALUES (65, 1);
INSERT INTO public.batalha VALUES (66, 1);
INSERT INTO public.batalha VALUES (67, 1);
INSERT INTO public.batalha VALUES (68, 1);
INSERT INTO public.batalha VALUES (69, 1);
INSERT INTO public.batalha VALUES (70, 1);
INSERT INTO public.batalha VALUES (71, 1);
INSERT INTO public.batalha VALUES (72, 1);
INSERT INTO public.batalha VALUES (73, 1);
INSERT INTO public.batalha VALUES (74, 1);
INSERT INTO public.batalha VALUES (75, 1);
INSERT INTO public.batalha VALUES (76, 1);
INSERT INTO public.batalha VALUES (77, 1);
INSERT INTO public.batalha VALUES (78, 1);
INSERT INTO public.batalha VALUES (79, 1);
INSERT INTO public.batalha VALUES (80, 1);
INSERT INTO public.batalha VALUES (81, 1);
INSERT INTO public.batalha VALUES (82, 1);
INSERT INTO public.batalha VALUES (83, 1);
INSERT INTO public.batalha VALUES (84, 1);
INSERT INTO public.batalha VALUES (85, 1);
INSERT INTO public.batalha VALUES (86, 1);
INSERT INTO public.batalha VALUES (87, 1);
INSERT INTO public.batalha VALUES (88, 1);
INSERT INTO public.batalha VALUES (89, 1);
INSERT INTO public.batalha VALUES (90, 1);
INSERT INTO public.batalha VALUES (91, 1);
INSERT INTO public.batalha VALUES (92, 1);
INSERT INTO public.batalha VALUES (93, 1);
INSERT INTO public.batalha VALUES (94, 1);
INSERT INTO public.batalha VALUES (95, 1);
INSERT INTO public.batalha VALUES (96, 1);
INSERT INTO public.batalha VALUES (97, 1);
INSERT INTO public.batalha VALUES (98, 1);
INSERT INTO public.batalha VALUES (99, 1);
INSERT INTO public.batalha VALUES (100, 1);
INSERT INTO public.batalha VALUES (101, 1);
INSERT INTO public.batalha VALUES (102, 1);
INSERT INTO public.batalha VALUES (103, 1);
INSERT INTO public.batalha VALUES (104, 1);
INSERT INTO public.batalha VALUES (105, 1);
INSERT INTO public.batalha VALUES (106, 1);
INSERT INTO public.batalha VALUES (107, 1);
INSERT INTO public.batalha VALUES (108, 1);
INSERT INTO public.batalha VALUES (109, 1);
INSERT INTO public.batalha VALUES (110, 1);
INSERT INTO public.batalha VALUES (111, 1);
INSERT INTO public.batalha VALUES (112, 1);
INSERT INTO public.batalha VALUES (113, 1);
INSERT INTO public.batalha VALUES (114, 1);
INSERT INTO public.batalha VALUES (115, 1);
INSERT INTO public.batalha VALUES (116, 1);
INSERT INTO public.batalha VALUES (117, 1);
INSERT INTO public.batalha VALUES (118, 1);
INSERT INTO public.batalha VALUES (119, 1);
INSERT INTO public.batalha VALUES (120, 1);
INSERT INTO public.batalha VALUES (121, 1);
INSERT INTO public.batalha VALUES (122, 1);
INSERT INTO public.batalha VALUES (123, 1);
INSERT INTO public.batalha VALUES (124, 1);
INSERT INTO public.batalha VALUES (125, 1);
INSERT INTO public.batalha VALUES (126, 1);
INSERT INTO public.batalha VALUES (127, 1);
INSERT INTO public.batalha VALUES (128, 1);
INSERT INTO public.batalha VALUES (129, 1);
INSERT INTO public.batalha VALUES (130, 1);
INSERT INTO public.batalha VALUES (131, 1);
INSERT INTO public.batalha VALUES (132, 1);
INSERT INTO public.batalha VALUES (133, 1);
INSERT INTO public.batalha VALUES (134, 1);
INSERT INTO public.batalha VALUES (135, 1);
INSERT INTO public.batalha VALUES (136, 1);
INSERT INTO public.batalha VALUES (137, 1);
INSERT INTO public.batalha VALUES (138, 1);
INSERT INTO public.batalha VALUES (139, 1);
INSERT INTO public.batalha VALUES (140, 1);
INSERT INTO public.batalha VALUES (141, 1);
INSERT INTO public.batalha VALUES (142, 1);
INSERT INTO public.batalha VALUES (143, 1);
INSERT INTO public.batalha VALUES (144, 1);
INSERT INTO public.batalha VALUES (145, 1);
INSERT INTO public.batalha VALUES (146, 1);
INSERT INTO public.batalha VALUES (147, 1);
INSERT INTO public.batalha VALUES (148, 1);
INSERT INTO public.batalha VALUES (149, 1);
INSERT INTO public.batalha VALUES (150, 1);
INSERT INTO public.batalha VALUES (151, 1);
INSERT INTO public.batalha VALUES (152, 1);
INSERT INTO public.batalha VALUES (153, 1);
INSERT INTO public.batalha VALUES (154, 1);
INSERT INTO public.batalha VALUES (155, 1);
INSERT INTO public.batalha VALUES (156, 1);
INSERT INTO public.batalha VALUES (157, 1);
INSERT INTO public.batalha VALUES (158, 1);
INSERT INTO public.batalha VALUES (159, 1);
INSERT INTO public.batalha VALUES (160, 1);
INSERT INTO public.batalha VALUES (161, 1);
INSERT INTO public.batalha VALUES (162, 1);
INSERT INTO public.batalha VALUES (163, 1);
INSERT INTO public.batalha VALUES (164, 1);
INSERT INTO public.batalha VALUES (165, 1);
INSERT INTO public.batalha VALUES (166, 1);
INSERT INTO public.batalha VALUES (167, 1);
INSERT INTO public.batalha VALUES (168, 1);
INSERT INTO public.batalha VALUES (169, 1);
INSERT INTO public.batalha VALUES (170, 1);
INSERT INTO public.batalha VALUES (171, 1);
INSERT INTO public.batalha VALUES (172, 1);
INSERT INTO public.batalha VALUES (173, 1);
INSERT INTO public.batalha VALUES (174, 1);
INSERT INTO public.batalha VALUES (175, 1);
INSERT INTO public.batalha VALUES (176, 1);
INSERT INTO public.batalha VALUES (177, 1);
INSERT INTO public.batalha VALUES (178, 1);
INSERT INTO public.batalha VALUES (179, 1);
INSERT INTO public.batalha VALUES (180, 1);
INSERT INTO public.batalha VALUES (181, 1);
INSERT INTO public.batalha VALUES (182, 1);
INSERT INTO public.batalha VALUES (183, 1);
INSERT INTO public.batalha VALUES (184, 1);
INSERT INTO public.batalha VALUES (185, 1);
INSERT INTO public.batalha VALUES (186, 1);
INSERT INTO public.batalha VALUES (187, 1);
INSERT INTO public.batalha VALUES (188, 1);
INSERT INTO public.batalha VALUES (189, 1);
INSERT INTO public.batalha VALUES (190, 1);
INSERT INTO public.batalha VALUES (191, 1);
INSERT INTO public.batalha VALUES (192, 1);
INSERT INTO public.batalha VALUES (193, 1);
INSERT INTO public.batalha VALUES (194, 1);
INSERT INTO public.batalha VALUES (195, 1);
INSERT INTO public.batalha VALUES (196, 1);
INSERT INTO public.batalha VALUES (197, 1);
INSERT INTO public.batalha VALUES (198, 1);
INSERT INTO public.batalha VALUES (199, 1);
INSERT INTO public.batalha VALUES (200, 1);
INSERT INTO public.batalha VALUES (201, 1);
INSERT INTO public.batalha VALUES (202, 1);
INSERT INTO public.batalha VALUES (203, 1);
INSERT INTO public.batalha VALUES (204, 1);
INSERT INTO public.batalha VALUES (205, 1);
INSERT INTO public.batalha VALUES (206, 1);
INSERT INTO public.batalha VALUES (207, 1);
INSERT INTO public.batalha VALUES (208, 1);
INSERT INTO public.batalha VALUES (209, 1);
INSERT INTO public.batalha VALUES (210, 1);
INSERT INTO public.batalha VALUES (211, 1);
INSERT INTO public.batalha VALUES (212, 1);
INSERT INTO public.batalha VALUES (213, 1);
INSERT INTO public.batalha VALUES (214, 1);
INSERT INTO public.batalha VALUES (215, 1);
INSERT INTO public.batalha VALUES (216, 1);
INSERT INTO public.batalha VALUES (217, 1);
INSERT INTO public.batalha VALUES (218, 1);
INSERT INTO public.batalha VALUES (219, 1);
INSERT INTO public.batalha VALUES (220, 1);
INSERT INTO public.batalha VALUES (221, 1);
INSERT INTO public.batalha VALUES (222, 1);
INSERT INTO public.batalha VALUES (223, 1);
INSERT INTO public.batalha VALUES (224, 1);
INSERT INTO public.batalha VALUES (225, 1);
INSERT INTO public.batalha VALUES (226, 1);
INSERT INTO public.batalha VALUES (227, 1);
INSERT INTO public.batalha VALUES (228, 1);
INSERT INTO public.batalha VALUES (229, 1);
INSERT INTO public.batalha VALUES (230, 1);
INSERT INTO public.batalha VALUES (231, 1);
INSERT INTO public.batalha VALUES (232, 1);
INSERT INTO public.batalha VALUES (233, 1);
INSERT INTO public.batalha VALUES (234, 1);
INSERT INTO public.batalha VALUES (235, 1);
INSERT INTO public.batalha VALUES (236, 1);
INSERT INTO public.batalha VALUES (237, 1);
INSERT INTO public.batalha VALUES (238, 1);
INSERT INTO public.batalha VALUES (239, 1);
INSERT INTO public.batalha VALUES (240, 1);
INSERT INTO public.batalha VALUES (241, 1);
INSERT INTO public.batalha VALUES (242, 1);
INSERT INTO public.batalha VALUES (243, 1);
INSERT INTO public.batalha VALUES (244, 1);
INSERT INTO public.batalha VALUES (245, 1);
INSERT INTO public.batalha VALUES (246, 1);
INSERT INTO public.batalha VALUES (247, 1);
INSERT INTO public.batalha VALUES (248, 1);
INSERT INTO public.batalha VALUES (249, 1);
INSERT INTO public.batalha VALUES (250, 1);
INSERT INTO public.batalha VALUES (251, 1);
INSERT INTO public.batalha VALUES (252, 1);
INSERT INTO public.batalha VALUES (253, 1);
INSERT INTO public.batalha VALUES (254, 1);


--
-- Data for Name: evolucao; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.evolucao VALUES (2, 1);
INSERT INTO public.evolucao VALUES (3, 2);
INSERT INTO public.evolucao VALUES (9999, 3);
INSERT INTO public.evolucao VALUES (5, 4);
INSERT INTO public.evolucao VALUES (6, 5);
INSERT INTO public.evolucao VALUES (9999, 6);
INSERT INTO public.evolucao VALUES (8, 7);
INSERT INTO public.evolucao VALUES (9, 8);
INSERT INTO public.evolucao VALUES (9999, 9);
INSERT INTO public.evolucao VALUES (11, 10);
INSERT INTO public.evolucao VALUES (12, 11);
INSERT INTO public.evolucao VALUES (9999, 12);
INSERT INTO public.evolucao VALUES (14, 13);
INSERT INTO public.evolucao VALUES (15, 14);
INSERT INTO public.evolucao VALUES (9999, 15);
INSERT INTO public.evolucao VALUES (17, 16);
INSERT INTO public.evolucao VALUES (18, 17);
INSERT INTO public.evolucao VALUES (9999, 18);
INSERT INTO public.evolucao VALUES (20, 19);
INSERT INTO public.evolucao VALUES (9999, 20);
INSERT INTO public.evolucao VALUES (22, 21);
INSERT INTO public.evolucao VALUES (9999, 22);
INSERT INTO public.evolucao VALUES (24, 23);
INSERT INTO public.evolucao VALUES (9999, 24);
INSERT INTO public.evolucao VALUES (25, 172);
INSERT INTO public.evolucao VALUES (26, 25);
INSERT INTO public.evolucao VALUES (9999, 26);
INSERT INTO public.evolucao VALUES (28, 27);
INSERT INTO public.evolucao VALUES (9999, 28);
INSERT INTO public.evolucao VALUES (30, 29);
INSERT INTO public.evolucao VALUES (31, 30);
INSERT INTO public.evolucao VALUES (9999, 31);
INSERT INTO public.evolucao VALUES (33, 32);
INSERT INTO public.evolucao VALUES (34, 33);
INSERT INTO public.evolucao VALUES (9999, 34);
INSERT INTO public.evolucao VALUES (35, 173);
INSERT INTO public.evolucao VALUES (36, 35);
INSERT INTO public.evolucao VALUES (9999, 36);
INSERT INTO public.evolucao VALUES (38, 37);
INSERT INTO public.evolucao VALUES (9999, 38);
INSERT INTO public.evolucao VALUES (39, 174);
INSERT INTO public.evolucao VALUES (40, 39);
INSERT INTO public.evolucao VALUES (9999, 40);
INSERT INTO public.evolucao VALUES (42, 41);
INSERT INTO public.evolucao VALUES (169, 42);
INSERT INTO public.evolucao VALUES (9999, 169);
INSERT INTO public.evolucao VALUES (44, 43);
INSERT INTO public.evolucao VALUES (45, 44);
INSERT INTO public.evolucao VALUES (9999, 45);
INSERT INTO public.evolucao VALUES (47, 46);
INSERT INTO public.evolucao VALUES (9999, 47);
INSERT INTO public.evolucao VALUES (49, 48);
INSERT INTO public.evolucao VALUES (9999, 49);
INSERT INTO public.evolucao VALUES (51, 50);
INSERT INTO public.evolucao VALUES (9999, 51);
INSERT INTO public.evolucao VALUES (53, 52);
INSERT INTO public.evolucao VALUES (9999, 53);
INSERT INTO public.evolucao VALUES (55, 54);
INSERT INTO public.evolucao VALUES (9999, 55);
INSERT INTO public.evolucao VALUES (57, 56);
INSERT INTO public.evolucao VALUES (9999, 57);
INSERT INTO public.evolucao VALUES (59, 58);
INSERT INTO public.evolucao VALUES (9999, 59);
INSERT INTO public.evolucao VALUES (61, 60);
INSERT INTO public.evolucao VALUES (62, 61);
INSERT INTO public.evolucao VALUES (9999, 62);
INSERT INTO public.evolucao VALUES (64, 63);
INSERT INTO public.evolucao VALUES (65, 64);
INSERT INTO public.evolucao VALUES (9999, 65);
INSERT INTO public.evolucao VALUES (67, 66);
INSERT INTO public.evolucao VALUES (68, 67);
INSERT INTO public.evolucao VALUES (9999, 68);
INSERT INTO public.evolucao VALUES (70, 69);
INSERT INTO public.evolucao VALUES (71, 70);
INSERT INTO public.evolucao VALUES (9999, 71);
INSERT INTO public.evolucao VALUES (73, 72);
INSERT INTO public.evolucao VALUES (9999, 73);
INSERT INTO public.evolucao VALUES (75, 74);
INSERT INTO public.evolucao VALUES (76, 75);
INSERT INTO public.evolucao VALUES (9999, 76);
INSERT INTO public.evolucao VALUES (78, 77);
INSERT INTO public.evolucao VALUES (9999, 78);
INSERT INTO public.evolucao VALUES (80, 79);
INSERT INTO public.evolucao VALUES (9999, 80);
INSERT INTO public.evolucao VALUES (82, 81);
INSERT INTO public.evolucao VALUES (462, 82);
INSERT INTO public.evolucao VALUES (9999, 462);
INSERT INTO public.evolucao VALUES (865, 83);
INSERT INTO public.evolucao VALUES (9999, 865);
INSERT INTO public.evolucao VALUES (85, 84);
INSERT INTO public.evolucao VALUES (9999, 85);
INSERT INTO public.evolucao VALUES (87, 86);
INSERT INTO public.evolucao VALUES (9999, 87);
INSERT INTO public.evolucao VALUES (89, 88);
INSERT INTO public.evolucao VALUES (9999, 89);
INSERT INTO public.evolucao VALUES (91, 90);
INSERT INTO public.evolucao VALUES (9999, 91);
INSERT INTO public.evolucao VALUES (93, 92);
INSERT INTO public.evolucao VALUES (94, 93);
INSERT INTO public.evolucao VALUES (9999, 94);
INSERT INTO public.evolucao VALUES (208, 95);
INSERT INTO public.evolucao VALUES (9999, 208);
INSERT INTO public.evolucao VALUES (97, 96);
INSERT INTO public.evolucao VALUES (9999, 97);
INSERT INTO public.evolucao VALUES (99, 98);
INSERT INTO public.evolucao VALUES (9999, 99);
INSERT INTO public.evolucao VALUES (101, 100);
INSERT INTO public.evolucao VALUES (9999, 101);
INSERT INTO public.evolucao VALUES (103, 102);
INSERT INTO public.evolucao VALUES (9999, 103);
INSERT INTO public.evolucao VALUES (105, 104);
INSERT INTO public.evolucao VALUES (9999, 105);
INSERT INTO public.evolucao VALUES (106, 236);
INSERT INTO public.evolucao VALUES (9999, 106);
INSERT INTO public.evolucao VALUES (463, 108);
INSERT INTO public.evolucao VALUES (9999, 463);
INSERT INTO public.evolucao VALUES (110, 109);
INSERT INTO public.evolucao VALUES (9999, 110);
INSERT INTO public.evolucao VALUES (112, 111);
INSERT INTO public.evolucao VALUES (464, 112);
INSERT INTO public.evolucao VALUES (9999, 464);
INSERT INTO public.evolucao VALUES (113, 440);
INSERT INTO public.evolucao VALUES (242, 113);
INSERT INTO public.evolucao VALUES (9999, 242);
INSERT INTO public.evolucao VALUES (465, 114);
INSERT INTO public.evolucao VALUES (9999, 465);
INSERT INTO public.evolucao VALUES (9999, 115);
INSERT INTO public.evolucao VALUES (9999, 115);
INSERT INTO public.evolucao VALUES (117, 116);
INSERT INTO public.evolucao VALUES (230, 117);
INSERT INTO public.evolucao VALUES (9999, 230);
INSERT INTO public.evolucao VALUES (119, 118);
INSERT INTO public.evolucao VALUES (9999, 119);
INSERT INTO public.evolucao VALUES (121, 120);
INSERT INTO public.evolucao VALUES (9999, 121);
INSERT INTO public.evolucao VALUES (122, 439);
INSERT INTO public.evolucao VALUES (866, 122);
INSERT INTO public.evolucao VALUES (9999, 866);
INSERT INTO public.evolucao VALUES (212, 123);
INSERT INTO public.evolucao VALUES (9999, 212);
INSERT INTO public.evolucao VALUES (124, 238);
INSERT INTO public.evolucao VALUES (9999, 124);
INSERT INTO public.evolucao VALUES (125, 239);
INSERT INTO public.evolucao VALUES (466, 125);
INSERT INTO public.evolucao VALUES (9999, 466);
INSERT INTO public.evolucao VALUES (126, 240);
INSERT INTO public.evolucao VALUES (467, 126);
INSERT INTO public.evolucao VALUES (9999, 467);
INSERT INTO public.evolucao VALUES (9999, 127);
INSERT INTO public.evolucao VALUES (9999, 127);
INSERT INTO public.evolucao VALUES (9999, 128);
INSERT INTO public.evolucao VALUES (9999, 128);
INSERT INTO public.evolucao VALUES (130, 129);
INSERT INTO public.evolucao VALUES (9999, 130);
INSERT INTO public.evolucao VALUES (9999, 131);
INSERT INTO public.evolucao VALUES (9999, 131);
INSERT INTO public.evolucao VALUES (9999, 132);
INSERT INTO public.evolucao VALUES (9999, 132);
INSERT INTO public.evolucao VALUES (134, 133);
INSERT INTO public.evolucao VALUES (9999, 134);
INSERT INTO public.evolucao VALUES (233, 137);
INSERT INTO public.evolucao VALUES (474, 233);
INSERT INTO public.evolucao VALUES (9999, 474);
INSERT INTO public.evolucao VALUES (139, 138);
INSERT INTO public.evolucao VALUES (9999, 139);
INSERT INTO public.evolucao VALUES (141, 140);
INSERT INTO public.evolucao VALUES (9999, 141);
INSERT INTO public.evolucao VALUES (9999, 142);
INSERT INTO public.evolucao VALUES (9999, 142);
INSERT INTO public.evolucao VALUES (143, 446);
INSERT INTO public.evolucao VALUES (9999, 143);
INSERT INTO public.evolucao VALUES (9999, 144);
INSERT INTO public.evolucao VALUES (9999, 144);
INSERT INTO public.evolucao VALUES (9999, 145);
INSERT INTO public.evolucao VALUES (9999, 145);
INSERT INTO public.evolucao VALUES (9999, 146);
INSERT INTO public.evolucao VALUES (9999, 146);
INSERT INTO public.evolucao VALUES (148, 147);
INSERT INTO public.evolucao VALUES (149, 148);
INSERT INTO public.evolucao VALUES (9999, 149);
INSERT INTO public.evolucao VALUES (9999, 150);
INSERT INTO public.evolucao VALUES (9999, 150);
INSERT INTO public.evolucao VALUES (9999, 151);
INSERT INTO public.evolucao VALUES (9999, 151);
INSERT INTO public.evolucao VALUES (2, 1);
INSERT INTO public.evolucao VALUES (3, 2);
INSERT INTO public.evolucao VALUES (9999, 3);
INSERT INTO public.evolucao VALUES (5, 4);
INSERT INTO public.evolucao VALUES (6, 5);
INSERT INTO public.evolucao VALUES (9999, 6);
INSERT INTO public.evolucao VALUES (8, 7);
INSERT INTO public.evolucao VALUES (9, 8);
INSERT INTO public.evolucao VALUES (9999, 9);
INSERT INTO public.evolucao VALUES (11, 10);
INSERT INTO public.evolucao VALUES (12, 11);
INSERT INTO public.evolucao VALUES (9999, 12);
INSERT INTO public.evolucao VALUES (14, 13);
INSERT INTO public.evolucao VALUES (15, 14);
INSERT INTO public.evolucao VALUES (9999, 15);
INSERT INTO public.evolucao VALUES (17, 16);
INSERT INTO public.evolucao VALUES (18, 17);
INSERT INTO public.evolucao VALUES (9999, 18);
INSERT INTO public.evolucao VALUES (20, 19);
INSERT INTO public.evolucao VALUES (9999, 20);
INSERT INTO public.evolucao VALUES (22, 21);
INSERT INTO public.evolucao VALUES (9999, 22);
INSERT INTO public.evolucao VALUES (24, 23);
INSERT INTO public.evolucao VALUES (9999, 24);
INSERT INTO public.evolucao VALUES (25, 172);
INSERT INTO public.evolucao VALUES (26, 25);
INSERT INTO public.evolucao VALUES (9999, 26);
INSERT INTO public.evolucao VALUES (28, 27);
INSERT INTO public.evolucao VALUES (9999, 28);
INSERT INTO public.evolucao VALUES (30, 29);
INSERT INTO public.evolucao VALUES (31, 30);
INSERT INTO public.evolucao VALUES (9999, 31);
INSERT INTO public.evolucao VALUES (33, 32);
INSERT INTO public.evolucao VALUES (34, 33);
INSERT INTO public.evolucao VALUES (9999, 34);
INSERT INTO public.evolucao VALUES (35, 173);
INSERT INTO public.evolucao VALUES (36, 35);
INSERT INTO public.evolucao VALUES (9999, 36);
INSERT INTO public.evolucao VALUES (38, 37);
INSERT INTO public.evolucao VALUES (9999, 38);
INSERT INTO public.evolucao VALUES (39, 174);
INSERT INTO public.evolucao VALUES (40, 39);
INSERT INTO public.evolucao VALUES (9999, 40);
INSERT INTO public.evolucao VALUES (42, 41);
INSERT INTO public.evolucao VALUES (169, 42);
INSERT INTO public.evolucao VALUES (9999, 169);
INSERT INTO public.evolucao VALUES (44, 43);
INSERT INTO public.evolucao VALUES (45, 44);
INSERT INTO public.evolucao VALUES (9999, 45);
INSERT INTO public.evolucao VALUES (47, 46);
INSERT INTO public.evolucao VALUES (9999, 47);
INSERT INTO public.evolucao VALUES (49, 48);
INSERT INTO public.evolucao VALUES (9999, 49);
INSERT INTO public.evolucao VALUES (51, 50);
INSERT INTO public.evolucao VALUES (9999, 51);
INSERT INTO public.evolucao VALUES (53, 52);
INSERT INTO public.evolucao VALUES (9999, 53);
INSERT INTO public.evolucao VALUES (55, 54);
INSERT INTO public.evolucao VALUES (9999, 55);
INSERT INTO public.evolucao VALUES (57, 56);
INSERT INTO public.evolucao VALUES (9999, 57);
INSERT INTO public.evolucao VALUES (59, 58);
INSERT INTO public.evolucao VALUES (9999, 59);
INSERT INTO public.evolucao VALUES (61, 60);
INSERT INTO public.evolucao VALUES (62, 61);
INSERT INTO public.evolucao VALUES (9999, 62);
INSERT INTO public.evolucao VALUES (64, 63);
INSERT INTO public.evolucao VALUES (65, 64);
INSERT INTO public.evolucao VALUES (9999, 65);
INSERT INTO public.evolucao VALUES (67, 66);
INSERT INTO public.evolucao VALUES (68, 67);
INSERT INTO public.evolucao VALUES (9999, 68);
INSERT INTO public.evolucao VALUES (70, 69);
INSERT INTO public.evolucao VALUES (71, 70);
INSERT INTO public.evolucao VALUES (9999, 71);
INSERT INTO public.evolucao VALUES (73, 72);
INSERT INTO public.evolucao VALUES (9999, 73);
INSERT INTO public.evolucao VALUES (75, 74);
INSERT INTO public.evolucao VALUES (76, 75);
INSERT INTO public.evolucao VALUES (9999, 76);
INSERT INTO public.evolucao VALUES (78, 77);
INSERT INTO public.evolucao VALUES (9999, 78);
INSERT INTO public.evolucao VALUES (80, 79);
INSERT INTO public.evolucao VALUES (9999, 80);
INSERT INTO public.evolucao VALUES (82, 81);
INSERT INTO public.evolucao VALUES (462, 82);
INSERT INTO public.evolucao VALUES (9999, 462);
INSERT INTO public.evolucao VALUES (865, 83);
INSERT INTO public.evolucao VALUES (9999, 865);
INSERT INTO public.evolucao VALUES (85, 84);
INSERT INTO public.evolucao VALUES (9999, 85);
INSERT INTO public.evolucao VALUES (87, 86);
INSERT INTO public.evolucao VALUES (9999, 87);
INSERT INTO public.evolucao VALUES (89, 88);
INSERT INTO public.evolucao VALUES (9999, 89);
INSERT INTO public.evolucao VALUES (91, 90);
INSERT INTO public.evolucao VALUES (9999, 91);
INSERT INTO public.evolucao VALUES (93, 92);
INSERT INTO public.evolucao VALUES (94, 93);
INSERT INTO public.evolucao VALUES (9999, 94);
INSERT INTO public.evolucao VALUES (208, 95);
INSERT INTO public.evolucao VALUES (9999, 208);
INSERT INTO public.evolucao VALUES (97, 96);
INSERT INTO public.evolucao VALUES (9999, 97);
INSERT INTO public.evolucao VALUES (99, 98);
INSERT INTO public.evolucao VALUES (9999, 99);
INSERT INTO public.evolucao VALUES (101, 100);
INSERT INTO public.evolucao VALUES (9999, 101);
INSERT INTO public.evolucao VALUES (103, 102);
INSERT INTO public.evolucao VALUES (9999, 103);
INSERT INTO public.evolucao VALUES (105, 104);
INSERT INTO public.evolucao VALUES (9999, 105);
INSERT INTO public.evolucao VALUES (106, 236);
INSERT INTO public.evolucao VALUES (9999, 106);
INSERT INTO public.evolucao VALUES (463, 108);
INSERT INTO public.evolucao VALUES (9999, 463);
INSERT INTO public.evolucao VALUES (110, 109);
INSERT INTO public.evolucao VALUES (9999, 110);
INSERT INTO public.evolucao VALUES (112, 111);
INSERT INTO public.evolucao VALUES (464, 112);
INSERT INTO public.evolucao VALUES (9999, 464);
INSERT INTO public.evolucao VALUES (113, 440);
INSERT INTO public.evolucao VALUES (242, 113);
INSERT INTO public.evolucao VALUES (9999, 242);
INSERT INTO public.evolucao VALUES (465, 114);
INSERT INTO public.evolucao VALUES (9999, 465);
INSERT INTO public.evolucao VALUES (9999, 115);
INSERT INTO public.evolucao VALUES (9999, 115);
INSERT INTO public.evolucao VALUES (117, 116);
INSERT INTO public.evolucao VALUES (230, 117);
INSERT INTO public.evolucao VALUES (9999, 230);
INSERT INTO public.evolucao VALUES (119, 118);
INSERT INTO public.evolucao VALUES (9999, 119);
INSERT INTO public.evolucao VALUES (121, 120);
INSERT INTO public.evolucao VALUES (9999, 121);
INSERT INTO public.evolucao VALUES (122, 439);
INSERT INTO public.evolucao VALUES (866, 122);
INSERT INTO public.evolucao VALUES (9999, 866);
INSERT INTO public.evolucao VALUES (212, 123);
INSERT INTO public.evolucao VALUES (9999, 212);
INSERT INTO public.evolucao VALUES (124, 238);
INSERT INTO public.evolucao VALUES (9999, 124);
INSERT INTO public.evolucao VALUES (125, 239);
INSERT INTO public.evolucao VALUES (466, 125);
INSERT INTO public.evolucao VALUES (9999, 466);
INSERT INTO public.evolucao VALUES (126, 240);
INSERT INTO public.evolucao VALUES (467, 126);
INSERT INTO public.evolucao VALUES (9999, 467);
INSERT INTO public.evolucao VALUES (9999, 127);
INSERT INTO public.evolucao VALUES (9999, 127);
INSERT INTO public.evolucao VALUES (9999, 128);
INSERT INTO public.evolucao VALUES (9999, 128);
INSERT INTO public.evolucao VALUES (130, 129);
INSERT INTO public.evolucao VALUES (9999, 130);
INSERT INTO public.evolucao VALUES (9999, 131);
INSERT INTO public.evolucao VALUES (9999, 131);
INSERT INTO public.evolucao VALUES (9999, 132);
INSERT INTO public.evolucao VALUES (9999, 132);
INSERT INTO public.evolucao VALUES (134, 133);
INSERT INTO public.evolucao VALUES (9999, 134);
INSERT INTO public.evolucao VALUES (233, 137);
INSERT INTO public.evolucao VALUES (474, 233);
INSERT INTO public.evolucao VALUES (9999, 474);
INSERT INTO public.evolucao VALUES (139, 138);
INSERT INTO public.evolucao VALUES (9999, 139);
INSERT INTO public.evolucao VALUES (141, 140);
INSERT INTO public.evolucao VALUES (9999, 141);
INSERT INTO public.evolucao VALUES (9999, 142);
INSERT INTO public.evolucao VALUES (9999, 142);
INSERT INTO public.evolucao VALUES (143, 446);
INSERT INTO public.evolucao VALUES (9999, 143);
INSERT INTO public.evolucao VALUES (9999, 144);
INSERT INTO public.evolucao VALUES (9999, 144);
INSERT INTO public.evolucao VALUES (9999, 145);
INSERT INTO public.evolucao VALUES (9999, 145);
INSERT INTO public.evolucao VALUES (9999, 146);
INSERT INTO public.evolucao VALUES (9999, 146);
INSERT INTO public.evolucao VALUES (148, 147);
INSERT INTO public.evolucao VALUES (149, 148);
INSERT INTO public.evolucao VALUES (9999, 149);
INSERT INTO public.evolucao VALUES (9999, 150);
INSERT INTO public.evolucao VALUES (9999, 150);
INSERT INTO public.evolucao VALUES (9999, 151);
INSERT INTO public.evolucao VALUES (9999, 151);


--
-- Data for Name: habilidade; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.habilidade VALUES (0, 'razor-wind', 'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.  User charges for one turn before attacking.

This move cannot be selected by sleep talk.', 80);
INSERT INTO public.habilidade VALUES (1, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (2, 'bind', 'Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.', 15);
INSERT INTO public.habilidade VALUES (3, 'vine-whip', 'Inflicts regular damage.', 45);
INSERT INTO public.habilidade VALUES (4, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (5, 'bind', 'Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.', 15);
INSERT INTO public.habilidade VALUES (6, 'vine-whip', 'Inflicts regular damage.', 45);
INSERT INTO public.habilidade VALUES (7, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (8, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (9, 'bind', 'Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.', 15);
INSERT INTO public.habilidade VALUES (10, 'vine-whip', 'Inflicts regular damage.', 45);
INSERT INTO public.habilidade VALUES (11, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (12, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (13, 'fire-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to burn the target.', 75);
INSERT INTO public.habilidade VALUES (14, 'thunder-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 75);
INSERT INTO public.habilidade VALUES (15, 'scratch', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (16, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (17, 'fire-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to burn the target.', 75);
INSERT INTO public.habilidade VALUES (18, 'thunder-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 75);
INSERT INTO public.habilidade VALUES (19, 'scratch', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (20, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (21, 'fire-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to burn the target.', 75);
INSERT INTO public.habilidade VALUES (22, 'thunder-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 75);
INSERT INTO public.habilidade VALUES (23, 'scratch', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (24, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (25, 'ice-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to freeze the target.', 75);
INSERT INTO public.habilidade VALUES (26, 'mega-kick', 'Inflicts regular damage.', 120);
INSERT INTO public.habilidade VALUES (27, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (28, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (29, 'ice-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to freeze the target.', 75);
INSERT INTO public.habilidade VALUES (30, 'mega-kick', 'Inflicts regular damage.', 120);
INSERT INTO public.habilidade VALUES (31, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (32, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (33, 'ice-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to freeze the target.', 75);
INSERT INTO public.habilidade VALUES (34, 'mega-kick', 'Inflicts regular damage.', 120);
INSERT INTO public.habilidade VALUES (35, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (36, 'tackle', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (37, 'snore', 'Only usable if the user is sleeping.  Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 50);
INSERT INTO public.habilidade VALUES (38, 'bug-bite', 'Inflicts regular damage.  If the target is holding a berry, this move has double power, and the user takes the berry and uses it immediately.

If the target is holding a jaboca berry or rowap berry, the berry is still removed, but has no effect.

If this move is super effective and the target is holding a berry that can reduce this move''s damage, it will do so, and will not be stolen.', 60);
INSERT INTO public.habilidade VALUES (39, 'electroweb', 'Lowers the target''s Speed by one stage.', 55);
INSERT INTO public.habilidade VALUES (40, 'bug-bite', 'Inflicts regular damage.  If the target is holding a berry, this move has double power, and the user takes the berry and uses it immediately.

If the target is holding a jaboca berry or rowap berry, the berry is still removed, but has no effect.

If this move is super effective and the target is holding a berry that can reduce this move''s damage, it will do so, and will not be stolen.', 60);
INSERT INTO public.habilidade VALUES (41, 'electroweb', 'Lowers the target''s Speed by one stage.', 55);
INSERT INTO public.habilidade VALUES (42, 'razor-wind', 'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.  User charges for one turn before attacking.

This move cannot be selected by sleep talk.', 80);
INSERT INTO public.habilidade VALUES (43, 'gust', 'Inflicts regular damage.

If the target is under the effect of bounce, fly, or sky drop, this move will hit with double power.', 40);
INSERT INTO public.habilidade VALUES (44, 'poison-sting', 'Inflicts regular damage.  Has a $effect_chance% chance to poison the target.', 15);
INSERT INTO public.habilidade VALUES (45, 'bug-bite', 'Inflicts regular damage.  If the target is holding a berry, this move has double power, and the user takes the berry and uses it immediately.

If the target is holding a jaboca berry or rowap berry, the berry is still removed, but has no effect.

If this move is super effective and the target is holding a berry that can reduce this move''s damage, it will do so, and will not be stolen.', 60);
INSERT INTO public.habilidade VALUES (46, 'electroweb', 'Lowers the target''s Speed by one stage.', 55);
INSERT INTO public.habilidade VALUES (47, 'bug-bite', 'Inflicts regular damage.  If the target is holding a berry, this move has double power, and the user takes the berry and uses it immediately.

If the target is holding a jaboca berry or rowap berry, the berry is still removed, but has no effect.

If this move is super effective and the target is holding a berry that can reduce this move''s damage, it will do so, and will not be stolen.', 60);
INSERT INTO public.habilidade VALUES (48, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (49, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (50, 'fury-attack', 'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.', 15);
INSERT INTO public.habilidade VALUES (51, 'take-down', 'Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.', 90);
INSERT INTO public.habilidade VALUES (52, 'razor-wind', 'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.  User charges for one turn before attacking.

This move cannot be selected by sleep talk.', 80);
INSERT INTO public.habilidade VALUES (53, 'gust', 'Inflicts regular damage.

If the target is under the effect of bounce, fly, or sky drop, this move will hit with double power.', 40);
INSERT INTO public.habilidade VALUES (54, 'wing-attack', 'Inflicts regular damage.', 60);
INSERT INTO public.habilidade VALUES (55, 'fly', 'Inflicts regular damage.  User flies high into the air for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, gust, hurricane, sky uppercut, smack down, thunder, twister, and whirlwind still hit the user normally.  gust and twister also have double power against the user.

The damage from hail and sandstorm still applies during the immune turn.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be used while gravity is in effect.

This move cannot be selected by sleep talk.', 90);
INSERT INTO public.habilidade VALUES (56, 'razor-wind', 'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.  User charges for one turn before attacking.

This move cannot be selected by sleep talk.', 80);
INSERT INTO public.habilidade VALUES (57, 'gust', 'Inflicts regular damage.

If the target is under the effect of bounce, fly, or sky drop, this move will hit with double power.', 40);
INSERT INTO public.habilidade VALUES (58, 'wing-attack', 'Inflicts regular damage.', 60);
INSERT INTO public.habilidade VALUES (59, 'fly', 'Inflicts regular damage.  User flies high into the air for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, gust, hurricane, sky uppercut, smack down, thunder, twister, and whirlwind still hit the user normally.  gust and twister also have double power against the user.

The damage from hail and sandstorm still applies during the immune turn.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be used while gravity is in effect.

This move cannot be selected by sleep talk.', 90);
INSERT INTO public.habilidade VALUES (60, 'razor-wind', 'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.  User charges for one turn before attacking.

This move cannot be selected by sleep talk.', 80);
INSERT INTO public.habilidade VALUES (61, 'gust', 'Inflicts regular damage.

If the target is under the effect of bounce, fly, or sky drop, this move will hit with double power.', 40);
INSERT INTO public.habilidade VALUES (62, 'wing-attack', 'Inflicts regular damage.', 60);
INSERT INTO public.habilidade VALUES (63, 'fly', 'Inflicts regular damage.  User flies high into the air for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, gust, hurricane, sky uppercut, smack down, thunder, twister, and whirlwind still hit the user normally.  gust and twister also have double power against the user.

The damage from hail and sandstorm still applies during the immune turn.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be used while gravity is in effect.

This move cannot be selected by sleep talk.', 90);
INSERT INTO public.habilidade VALUES (64, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (65, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (66, 'tackle', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (67, 'body-slam', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 85);
INSERT INTO public.habilidade VALUES (68, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (69, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (70, 'tackle', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (71, 'body-slam', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 85);
INSERT INTO public.habilidade VALUES (72, 'razor-wind', 'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.  User charges for one turn before attacking.

This move cannot be selected by sleep talk.', 80);
INSERT INTO public.habilidade VALUES (73, 'fly', 'Inflicts regular damage.  User flies high into the air for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, gust, hurricane, sky uppercut, smack down, thunder, twister, and whirlwind still hit the user normally.  gust and twister also have double power against the user.

The damage from hail and sandstorm still applies during the immune turn.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be used while gravity is in effect.

This move cannot be selected by sleep talk.', 90);
INSERT INTO public.habilidade VALUES (74, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (75, 'fury-attack', 'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.', 15);
INSERT INTO public.habilidade VALUES (76, 'razor-wind', 'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.  User charges for one turn before attacking.

This move cannot be selected by sleep talk.', 80);
INSERT INTO public.habilidade VALUES (77, 'fly', 'Inflicts regular damage.  User flies high into the air for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, gust, hurricane, sky uppercut, smack down, thunder, twister, and whirlwind still hit the user normally.  gust and twister also have double power against the user.

The damage from hail and sandstorm still applies during the immune turn.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be used while gravity is in effect.

This move cannot be selected by sleep talk.', 90);
INSERT INTO public.habilidade VALUES (78, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (79, 'fury-attack', 'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.', 15);
INSERT INTO public.habilidade VALUES (80, 'bind', 'Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.', 15);
INSERT INTO public.habilidade VALUES (81, 'slam', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (82, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (83, 'body-slam', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 85);
INSERT INTO public.habilidade VALUES (84, 'bind', 'Inflicts regular damage.  For the next 2–5 turns, the target cannot leave the field and is damaged for 1/16 its max HP at the end of each turn.  The user continues to use other moves during this time.  If the user leaves the field, this effect ends.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.

rapid spin cancels this effect.', 15);
INSERT INTO public.habilidade VALUES (85, 'slam', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (86, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (446, 'slam', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (87, 'body-slam', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 85);
INSERT INTO public.habilidade VALUES (88, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (89, 'pay-day', 'Inflicts regular damage.  After the battle ends, the winner receives five times the user''s level in extra money for each time this move was used.', 40);
INSERT INTO public.habilidade VALUES (90, 'thunder-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 75);
INSERT INTO public.habilidade VALUES (91, 'slam', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (92, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (93, 'pay-day', 'Inflicts regular damage.  After the battle ends, the winner receives five times the user''s level in extra money for each time this move was used.', 40);
INSERT INTO public.habilidade VALUES (94, 'thunder-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 75);
INSERT INTO public.habilidade VALUES (95, 'slam', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (96, 'scratch', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (97, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (98, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (99, 'body-slam', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 85);
INSERT INTO public.habilidade VALUES (100, 'scratch', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (101, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (102, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (103, 'body-slam', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 85);
INSERT INTO public.habilidade VALUES (104, 'scratch', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (105, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (106, 'double-kick', 'Inflicts regular damage.  Hits twice in one turn.', 30);
INSERT INTO public.habilidade VALUES (107, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (108, 'scratch', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (109, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (110, 'double-kick', 'Inflicts regular damage.  Hits twice in one turn.', 30);
INSERT INTO public.habilidade VALUES (111, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (112, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (113, 'pay-day', 'Inflicts regular damage.  After the battle ends, the winner receives five times the user''s level in extra money for each time this move was used.', 40);
INSERT INTO public.habilidade VALUES (114, 'fire-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to burn the target.', 75);
INSERT INTO public.habilidade VALUES (115, 'ice-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to freeze the target.', 75);
INSERT INTO public.habilidade VALUES (116, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (117, 'double-kick', 'Inflicts regular damage.  Hits twice in one turn.', 30);
INSERT INTO public.habilidade VALUES (118, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (119, 'horn-attack', 'Inflicts regular damage.', 65);
INSERT INTO public.habilidade VALUES (120, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (121, 'double-kick', 'Inflicts regular damage.  Hits twice in one turn.', 30);
INSERT INTO public.habilidade VALUES (122, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (123, 'horn-attack', 'Inflicts regular damage.', 65);
INSERT INTO public.habilidade VALUES (124, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (125, 'pay-day', 'Inflicts regular damage.  After the battle ends, the winner receives five times the user''s level in extra money for each time this move was used.', 40);
INSERT INTO public.habilidade VALUES (126, 'fire-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to burn the target.', 75);
INSERT INTO public.habilidade VALUES (127, 'ice-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to freeze the target.', 75);
INSERT INTO public.habilidade VALUES (128, 'pound', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (129, 'double-slap', 'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.', 15);
INSERT INTO public.habilidade VALUES (130, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (131, 'fire-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to burn the target.', 75);
INSERT INTO public.habilidade VALUES (132, 'pound', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (133, 'double-slap', 'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.', 15);
INSERT INTO public.habilidade VALUES (134, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (135, 'fire-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to burn the target.', 75);
INSERT INTO public.habilidade VALUES (136, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (137, 'tackle', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (138, 'body-slam', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 85);
INSERT INTO public.habilidade VALUES (139, 'take-down', 'Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.', 90);
INSERT INTO public.habilidade VALUES (140, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (141, 'tackle', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (142, 'body-slam', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 85);
INSERT INTO public.habilidade VALUES (143, 'take-down', 'Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.', 90);
INSERT INTO public.habilidade VALUES (144, 'pound', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (145, 'double-slap', 'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.', 15);
INSERT INTO public.habilidade VALUES (146, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (147, 'fire-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to burn the target.', 75);
INSERT INTO public.habilidade VALUES (148, 'pound', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (149, 'double-slap', 'Inflicts regular damage.  Hits 2–5 times in one turn.

Has a 3/8 chance each to hit 2 or 3 times, and a 1/8 chance each to hit 4 or 5 times.  Averages to 3 hits per use.', 15);
INSERT INTO public.habilidade VALUES (150, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (151, 'fire-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to burn the target.', 75);
INSERT INTO public.habilidade VALUES (152, 'razor-wind', 'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.  User charges for one turn before attacking.

This move cannot be selected by sleep talk.', 80);
INSERT INTO public.habilidade VALUES (153, 'gust', 'Inflicts regular damage.

If the target is under the effect of bounce, fly, or sky drop, this move will hit with double power.', 40);
INSERT INTO public.habilidade VALUES (154, 'wing-attack', 'Inflicts regular damage.', 60);
INSERT INTO public.habilidade VALUES (215, 'fire-punch', 'Inflicts regular damage.  Has a $effect_chance% chance to burn the target.', 75);
INSERT INTO public.habilidade VALUES (216, 'karate-chop', 'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.', 50);
INSERT INTO public.habilidade VALUES (217, 'mega-punch', 'Inflicts regular damage.', 80);
INSERT INTO public.habilidade VALUES (155, 'fly', 'Inflicts regular damage.  User flies high into the air for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, gust, hurricane, sky uppercut, smack down, thunder, twister, and whirlwind still hit the user normally.  gust and twister also have double power against the user.

The damage from hail and sandstorm still applies during the immune turn.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be used while gravity is in effect.

This move cannot be selected by sleep talk.', 90);
INSERT INTO public.habilidade VALUES (156, 'razor-wind', 'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.  User charges for one turn before attacking.

This move cannot be selected by sleep talk.', 80);
INSERT INTO public.habilidade VALUES (157, 'wing-attack', 'Inflicts regular damage.', 60);
INSERT INTO public.habilidade VALUES (158, 'fly', 'Inflicts regular damage.  User flies high into the air for one turn, becoming immune to attack, and hits on the second turn.

During the immune turn, gust, hurricane, sky uppercut, smack down, thunder, twister, and whirlwind still hit the user normally.  gust and twister also have double power against the user.

The damage from hail and sandstorm still applies during the immune turn.

The user may be hit during its immune turn if under the effect of lock on, mind reader, or no guard.

This move cannot be used while gravity is in effect.

This move cannot be selected by sleep talk.', 90);
INSERT INTO public.habilidade VALUES (159, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (160, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (161, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (162, 'take-down', 'Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.', 90);
INSERT INTO public.habilidade VALUES (163, 'double-edge', 'Inflicts regular damage.  User takes 1/3 the damage it inflicts in recoil.', 120);
INSERT INTO public.habilidade VALUES (164, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (165, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (166, 'take-down', 'Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.', 90);
INSERT INTO public.habilidade VALUES (167, 'double-edge', 'Inflicts regular damage.  User takes 1/3 the damage it inflicts in recoil.', 120);
INSERT INTO public.habilidade VALUES (168, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (169, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (170, 'body-slam', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 85);
INSERT INTO public.habilidade VALUES (171, 'take-down', 'Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.', 90);
INSERT INTO public.habilidade VALUES (172, 'scratch', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (173, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (174, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (175, 'body-slam', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 85);
INSERT INTO public.habilidade VALUES (176, 'scratch', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (177, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (178, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (179, 'body-slam', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 85);
INSERT INTO public.habilidade VALUES (180, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (181, 'tackle', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (182, 'take-down', 'Inflicts regular damage.  User takes 1/4 the damage it inflicts in recoil.', 90);
INSERT INTO public.habilidade VALUES (183, 'double-edge', 'Inflicts regular damage.  User takes 1/3 the damage it inflicts in recoil.', 120);
INSERT INTO public.habilidade VALUES (184, 'razor-wind', 'Inflicts regular damage.  User''s critical hit rate is one level higher when using this move.  User charges for one turn before attacking.

This move cannot be selected by sleep talk.', 80);
INSERT INTO public.habilidade VALUES (185, 'gust', 'Inflicts regular damage.

If the target is under the effect of bounce, fly, or sky drop, this move will hit with double power.', 40);
INSERT INTO public.habilidade VALUES (186, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (187, 'tackle', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (188, 'scratch', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (189, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (190, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (191, 'body-slam', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 85);
INSERT INTO public.habilidade VALUES (192, 'scratch', 'Inflicts regular damage.', 40);
INSERT INTO public.habilidade VALUES (193, 'cut', 'Inflicts regular damage.', 50);
INSERT INTO public.habilidade VALUES (194, 'headbutt', 'Inflicts regular damage.  Has a $effect_chance% chance to make the target flinch.', 70);
INSERT INTO public.habilidade VALUES (195, 'body-slam', 'Inflicts regular damage.  Has a $effect_chance% chance to paralyze the target.', 85);


--
-- Data for Name: instancia_pokemon; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.instancia_pokemon VALUES (0, 16, 0);
INSERT INTO public.instancia_pokemon VALUES (1, 21, 1);
INSERT INTO public.instancia_pokemon VALUES (2, 39, 2);
INSERT INTO public.instancia_pokemon VALUES (3, 84, 3);
INSERT INTO public.instancia_pokemon VALUES (4, 16, 4);
INSERT INTO public.instancia_pokemon VALUES (5, 21, 5);
INSERT INTO public.instancia_pokemon VALUES (6, 39, 6);
INSERT INTO public.instancia_pokemon VALUES (7, 84, 7);
INSERT INTO public.instancia_pokemon VALUES (8, 16, 8);
INSERT INTO public.instancia_pokemon VALUES (9, 21, 9);
INSERT INTO public.instancia_pokemon VALUES (10, 39, 10);
INSERT INTO public.instancia_pokemon VALUES (11, 84, 11);
INSERT INTO public.instancia_pokemon VALUES (12, 16, 12);
INSERT INTO public.instancia_pokemon VALUES (13, 21, 13);
INSERT INTO public.instancia_pokemon VALUES (14, 39, 14);
INSERT INTO public.instancia_pokemon VALUES (15, 84, 15);
INSERT INTO public.instancia_pokemon VALUES (16, 16, 16);
INSERT INTO public.instancia_pokemon VALUES (17, 21, 17);
INSERT INTO public.instancia_pokemon VALUES (18, 39, 18);
INSERT INTO public.instancia_pokemon VALUES (19, 84, 19);
INSERT INTO public.instancia_pokemon VALUES (20, 16, 20);
INSERT INTO public.instancia_pokemon VALUES (21, 21, 21);
INSERT INTO public.instancia_pokemon VALUES (22, 39, 22);
INSERT INTO public.instancia_pokemon VALUES (23, 84, 23);
INSERT INTO public.instancia_pokemon VALUES (24, 16, 24);
INSERT INTO public.instancia_pokemon VALUES (25, 21, 25);
INSERT INTO public.instancia_pokemon VALUES (26, 39, 26);
INSERT INTO public.instancia_pokemon VALUES (27, 84, 27);
INSERT INTO public.instancia_pokemon VALUES (28, 16, 28);
INSERT INTO public.instancia_pokemon VALUES (29, 21, 29);
INSERT INTO public.instancia_pokemon VALUES (30, 39, 30);
INSERT INTO public.instancia_pokemon VALUES (31, 84, 31);
INSERT INTO public.instancia_pokemon VALUES (32, 16, 32);
INSERT INTO public.instancia_pokemon VALUES (33, 21, 33);
INSERT INTO public.instancia_pokemon VALUES (34, 39, 34);
INSERT INTO public.instancia_pokemon VALUES (35, 84, 35);
INSERT INTO public.instancia_pokemon VALUES (36, 16, 36);
INSERT INTO public.instancia_pokemon VALUES (37, 21, 37);
INSERT INTO public.instancia_pokemon VALUES (38, 39, 38);
INSERT INTO public.instancia_pokemon VALUES (39, 84, 39);
INSERT INTO public.instancia_pokemon VALUES (40, 16, 40);
INSERT INTO public.instancia_pokemon VALUES (41, 21, 41);
INSERT INTO public.instancia_pokemon VALUES (42, 39, 42);
INSERT INTO public.instancia_pokemon VALUES (43, 84, 43);
INSERT INTO public.instancia_pokemon VALUES (44, 16, 44);
INSERT INTO public.instancia_pokemon VALUES (45, 21, 45);
INSERT INTO public.instancia_pokemon VALUES (46, 39, 46);
INSERT INTO public.instancia_pokemon VALUES (47, 84, 47);
INSERT INTO public.instancia_pokemon VALUES (48, 16, 48);
INSERT INTO public.instancia_pokemon VALUES (49, 21, 49);
INSERT INTO public.instancia_pokemon VALUES (50, 39, 50);
INSERT INTO public.instancia_pokemon VALUES (51, 84, 51);
INSERT INTO public.instancia_pokemon VALUES (52, 16, 52);
INSERT INTO public.instancia_pokemon VALUES (53, 21, 53);
INSERT INTO public.instancia_pokemon VALUES (54, 39, 54);
INSERT INTO public.instancia_pokemon VALUES (55, 84, 55);
INSERT INTO public.instancia_pokemon VALUES (56, 16, 56);
INSERT INTO public.instancia_pokemon VALUES (57, 21, 57);
INSERT INTO public.instancia_pokemon VALUES (58, 39, 58);
INSERT INTO public.instancia_pokemon VALUES (59, 84, 59);
INSERT INTO public.instancia_pokemon VALUES (60, 16, 60);
INSERT INTO public.instancia_pokemon VALUES (61, 21, 61);
INSERT INTO public.instancia_pokemon VALUES (62, 39, 62);
INSERT INTO public.instancia_pokemon VALUES (63, 84, 63);
INSERT INTO public.instancia_pokemon VALUES (64, 16, 64);
INSERT INTO public.instancia_pokemon VALUES (65, 21, 65);
INSERT INTO public.instancia_pokemon VALUES (66, 39, 66);
INSERT INTO public.instancia_pokemon VALUES (67, 84, 67);
INSERT INTO public.instancia_pokemon VALUES (68, 16, 68);
INSERT INTO public.instancia_pokemon VALUES (69, 21, 69);
INSERT INTO public.instancia_pokemon VALUES (70, 39, 70);
INSERT INTO public.instancia_pokemon VALUES (71, 84, 71);
INSERT INTO public.instancia_pokemon VALUES (72, 16, 72);
INSERT INTO public.instancia_pokemon VALUES (73, 21, 73);
INSERT INTO public.instancia_pokemon VALUES (74, 39, 74);
INSERT INTO public.instancia_pokemon VALUES (75, 84, 75);
INSERT INTO public.instancia_pokemon VALUES (76, 16, 76);
INSERT INTO public.instancia_pokemon VALUES (77, 21, 77);
INSERT INTO public.instancia_pokemon VALUES (78, 39, 78);
INSERT INTO public.instancia_pokemon VALUES (79, 84, 79);
INSERT INTO public.instancia_pokemon VALUES (80, 16, 80);
INSERT INTO public.instancia_pokemon VALUES (81, 21, 81);
INSERT INTO public.instancia_pokemon VALUES (82, 39, 82);
INSERT INTO public.instancia_pokemon VALUES (83, 84, 83);
INSERT INTO public.instancia_pokemon VALUES (84, 16, 84);
INSERT INTO public.instancia_pokemon VALUES (85, 21, 85);
INSERT INTO public.instancia_pokemon VALUES (86, 39, 86);
INSERT INTO public.instancia_pokemon VALUES (87, 84, 87);
INSERT INTO public.instancia_pokemon VALUES (88, 16, 88);
INSERT INTO public.instancia_pokemon VALUES (89, 21, 89);
INSERT INTO public.instancia_pokemon VALUES (90, 39, 90);
INSERT INTO public.instancia_pokemon VALUES (91, 84, 91);
INSERT INTO public.instancia_pokemon VALUES (92, 16, 92);
INSERT INTO public.instancia_pokemon VALUES (93, 21, 93);
INSERT INTO public.instancia_pokemon VALUES (94, 39, 94);
INSERT INTO public.instancia_pokemon VALUES (95, 84, 95);
INSERT INTO public.instancia_pokemon VALUES (96, 16, 96);
INSERT INTO public.instancia_pokemon VALUES (97, 21, 97);
INSERT INTO public.instancia_pokemon VALUES (98, 39, 98);
INSERT INTO public.instancia_pokemon VALUES (99, 84, 99);
INSERT INTO public.instancia_pokemon VALUES (100, 16, 100);
INSERT INTO public.instancia_pokemon VALUES (101, 21, 101);
INSERT INTO public.instancia_pokemon VALUES (102, 39, 102);
INSERT INTO public.instancia_pokemon VALUES (103, 84, 103);
INSERT INTO public.instancia_pokemon VALUES (104, 16, 104);
INSERT INTO public.instancia_pokemon VALUES (105, 21, 105);
INSERT INTO public.instancia_pokemon VALUES (106, 39, 106);
INSERT INTO public.instancia_pokemon VALUES (107, 84, 107);
INSERT INTO public.instancia_pokemon VALUES (108, 16, 108);
INSERT INTO public.instancia_pokemon VALUES (109, 21, 109);
INSERT INTO public.instancia_pokemon VALUES (110, 39, 110);
INSERT INTO public.instancia_pokemon VALUES (111, 84, 111);
INSERT INTO public.instancia_pokemon VALUES (112, 16, 112);
INSERT INTO public.instancia_pokemon VALUES (113, 21, 113);
INSERT INTO public.instancia_pokemon VALUES (114, 39, 114);
INSERT INTO public.instancia_pokemon VALUES (115, 84, 115);
INSERT INTO public.instancia_pokemon VALUES (116, 16, 116);
INSERT INTO public.instancia_pokemon VALUES (117, 21, 117);
INSERT INTO public.instancia_pokemon VALUES (118, 39, 118);
INSERT INTO public.instancia_pokemon VALUES (119, 84, 119);
INSERT INTO public.instancia_pokemon VALUES (120, 16, 120);
INSERT INTO public.instancia_pokemon VALUES (121, 21, 121);
INSERT INTO public.instancia_pokemon VALUES (122, 39, 122);
INSERT INTO public.instancia_pokemon VALUES (123, 84, 123);
INSERT INTO public.instancia_pokemon VALUES (124, 16, 124);
INSERT INTO public.instancia_pokemon VALUES (125, 21, 125);
INSERT INTO public.instancia_pokemon VALUES (126, 39, 126);
INSERT INTO public.instancia_pokemon VALUES (127, 84, 127);
INSERT INTO public.instancia_pokemon VALUES (128, 16, 128);
INSERT INTO public.instancia_pokemon VALUES (129, 21, 129);
INSERT INTO public.instancia_pokemon VALUES (130, 39, 130);
INSERT INTO public.instancia_pokemon VALUES (131, 84, 131);
INSERT INTO public.instancia_pokemon VALUES (132, 16, 132);
INSERT INTO public.instancia_pokemon VALUES (133, 21, 133);
INSERT INTO public.instancia_pokemon VALUES (134, 39, 134);
INSERT INTO public.instancia_pokemon VALUES (135, 84, 135);
INSERT INTO public.instancia_pokemon VALUES (136, 16, 136);
INSERT INTO public.instancia_pokemon VALUES (137, 21, 137);
INSERT INTO public.instancia_pokemon VALUES (138, 39, 138);
INSERT INTO public.instancia_pokemon VALUES (139, 84, 139);
INSERT INTO public.instancia_pokemon VALUES (140, 16, 140);
INSERT INTO public.instancia_pokemon VALUES (141, 21, 141);
INSERT INTO public.instancia_pokemon VALUES (142, 39, 142);
INSERT INTO public.instancia_pokemon VALUES (143, 84, 143);
INSERT INTO public.instancia_pokemon VALUES (144, 16, 144);
INSERT INTO public.instancia_pokemon VALUES (145, 21, 145);
INSERT INTO public.instancia_pokemon VALUES (146, 39, 146);
INSERT INTO public.instancia_pokemon VALUES (147, 84, 147);
INSERT INTO public.instancia_pokemon VALUES (148, 16, 148);
INSERT INTO public.instancia_pokemon VALUES (149, 21, 149);
INSERT INTO public.instancia_pokemon VALUES (150, 39, 150);
INSERT INTO public.instancia_pokemon VALUES (151, 84, 151);
INSERT INTO public.instancia_pokemon VALUES (152, 16, 152);
INSERT INTO public.instancia_pokemon VALUES (153, 21, 153);
INSERT INTO public.instancia_pokemon VALUES (154, 39, 154);
INSERT INTO public.instancia_pokemon VALUES (155, 84, 155);
INSERT INTO public.instancia_pokemon VALUES (156, 16, 156);
INSERT INTO public.instancia_pokemon VALUES (157, 21, 157);
INSERT INTO public.instancia_pokemon VALUES (158, 39, 158);
INSERT INTO public.instancia_pokemon VALUES (159, 84, 159);
INSERT INTO public.instancia_pokemon VALUES (160, 16, 160);
INSERT INTO public.instancia_pokemon VALUES (161, 21, 161);
INSERT INTO public.instancia_pokemon VALUES (162, 39, 162);
INSERT INTO public.instancia_pokemon VALUES (163, 84, 163);
INSERT INTO public.instancia_pokemon VALUES (164, 16, 164);
INSERT INTO public.instancia_pokemon VALUES (165, 21, 165);
INSERT INTO public.instancia_pokemon VALUES (166, 39, 166);
INSERT INTO public.instancia_pokemon VALUES (167, 84, 167);
INSERT INTO public.instancia_pokemon VALUES (168, 16, 168);
INSERT INTO public.instancia_pokemon VALUES (169, 21, 169);
INSERT INTO public.instancia_pokemon VALUES (170, 39, 170);
INSERT INTO public.instancia_pokemon VALUES (171, 84, 171);
INSERT INTO public.instancia_pokemon VALUES (172, 16, 172);
INSERT INTO public.instancia_pokemon VALUES (173, 21, 173);
INSERT INTO public.instancia_pokemon VALUES (174, 39, 174);
INSERT INTO public.instancia_pokemon VALUES (175, 84, 175);
INSERT INTO public.instancia_pokemon VALUES (176, 16, 176);
INSERT INTO public.instancia_pokemon VALUES (177, 21, 177);
INSERT INTO public.instancia_pokemon VALUES (178, 39, 178);
INSERT INTO public.instancia_pokemon VALUES (179, 84, 179);
INSERT INTO public.instancia_pokemon VALUES (180, 16, 180);
INSERT INTO public.instancia_pokemon VALUES (181, 21, 181);
INSERT INTO public.instancia_pokemon VALUES (182, 39, 182);
INSERT INTO public.instancia_pokemon VALUES (183, 84, 183);
INSERT INTO public.instancia_pokemon VALUES (184, 16, 184);
INSERT INTO public.instancia_pokemon VALUES (185, 21, 185);
INSERT INTO public.instancia_pokemon VALUES (186, 39, 186);
INSERT INTO public.instancia_pokemon VALUES (187, 84, 187);
INSERT INTO public.instancia_pokemon VALUES (188, 16, 188);
INSERT INTO public.instancia_pokemon VALUES (189, 21, 189);
INSERT INTO public.instancia_pokemon VALUES (190, 39, 190);
INSERT INTO public.instancia_pokemon VALUES (191, 84, 191);
INSERT INTO public.instancia_pokemon VALUES (192, 16, 192);
INSERT INTO public.instancia_pokemon VALUES (193, 21, 193);
INSERT INTO public.instancia_pokemon VALUES (194, 39, 194);
INSERT INTO public.instancia_pokemon VALUES (195, 84, 195);
INSERT INTO public.instancia_pokemon VALUES (196, 16, 196);
INSERT INTO public.instancia_pokemon VALUES (197, 21, 197);
INSERT INTO public.instancia_pokemon VALUES (198, 39, 198);
INSERT INTO public.instancia_pokemon VALUES (199, 84, 199);
INSERT INTO public.instancia_pokemon VALUES (200, 16, 200);
INSERT INTO public.instancia_pokemon VALUES (201, 21, 201);
INSERT INTO public.instancia_pokemon VALUES (202, 39, 202);
INSERT INTO public.instancia_pokemon VALUES (203, 84, 203);
INSERT INTO public.instancia_pokemon VALUES (204, 16, 204);
INSERT INTO public.instancia_pokemon VALUES (205, 21, 205);
INSERT INTO public.instancia_pokemon VALUES (206, 39, 206);
INSERT INTO public.instancia_pokemon VALUES (207, 84, 207);
INSERT INTO public.instancia_pokemon VALUES (208, 16, 208);
INSERT INTO public.instancia_pokemon VALUES (209, 21, 209);
INSERT INTO public.instancia_pokemon VALUES (210, 39, 210);
INSERT INTO public.instancia_pokemon VALUES (211, 84, 211);
INSERT INTO public.instancia_pokemon VALUES (212, 16, 212);
INSERT INTO public.instancia_pokemon VALUES (213, 21, 213);
INSERT INTO public.instancia_pokemon VALUES (214, 39, 214);
INSERT INTO public.instancia_pokemon VALUES (215, 84, 215);
INSERT INTO public.instancia_pokemon VALUES (216, 16, 216);
INSERT INTO public.instancia_pokemon VALUES (217, 21, 217);
INSERT INTO public.instancia_pokemon VALUES (218, 39, 218);
INSERT INTO public.instancia_pokemon VALUES (219, 84, 219);
INSERT INTO public.instancia_pokemon VALUES (220, 16, 220);
INSERT INTO public.instancia_pokemon VALUES (221, 21, 221);
INSERT INTO public.instancia_pokemon VALUES (222, 39, 222);
INSERT INTO public.instancia_pokemon VALUES (223, 84, 223);
INSERT INTO public.instancia_pokemon VALUES (224, 16, 224);
INSERT INTO public.instancia_pokemon VALUES (225, 21, 225);
INSERT INTO public.instancia_pokemon VALUES (226, 39, 226);
INSERT INTO public.instancia_pokemon VALUES (227, 84, 227);
INSERT INTO public.instancia_pokemon VALUES (228, 16, 228);
INSERT INTO public.instancia_pokemon VALUES (229, 21, 229);
INSERT INTO public.instancia_pokemon VALUES (230, 39, 230);
INSERT INTO public.instancia_pokemon VALUES (231, 84, 231);
INSERT INTO public.instancia_pokemon VALUES (232, 16, 232);
INSERT INTO public.instancia_pokemon VALUES (233, 21, 233);
INSERT INTO public.instancia_pokemon VALUES (234, 39, 234);
INSERT INTO public.instancia_pokemon VALUES (235, 84, 235);
INSERT INTO public.instancia_pokemon VALUES (236, 16, 236);
INSERT INTO public.instancia_pokemon VALUES (237, 21, 237);
INSERT INTO public.instancia_pokemon VALUES (238, 39, 238);
INSERT INTO public.instancia_pokemon VALUES (239, 84, 239);
INSERT INTO public.instancia_pokemon VALUES (240, 16, 240);
INSERT INTO public.instancia_pokemon VALUES (241, 21, 241);
INSERT INTO public.instancia_pokemon VALUES (242, 39, 242);
INSERT INTO public.instancia_pokemon VALUES (243, 84, 243);
INSERT INTO public.instancia_pokemon VALUES (244, 16, 244);
INSERT INTO public.instancia_pokemon VALUES (245, 21, 245);
INSERT INTO public.instancia_pokemon VALUES (246, 39, 246);
INSERT INTO public.instancia_pokemon VALUES (247, 84, 247);
INSERT INTO public.instancia_pokemon VALUES (248, 16, 248);
INSERT INTO public.instancia_pokemon VALUES (249, 21, 249);
INSERT INTO public.instancia_pokemon VALUES (250, 39, 250);
INSERT INTO public.instancia_pokemon VALUES (251, 84, 251);
INSERT INTO public.instancia_pokemon VALUES (252, 16, 252);
INSERT INTO public.instancia_pokemon VALUES (253, 21, 253);
INSERT INTO public.instancia_pokemon VALUES (254, 39, 254);
INSERT INTO public.instancia_pokemon VALUES (255, 84, 255);
INSERT INTO public.instancia_pokemon VALUES (256, 16, 256);
INSERT INTO public.instancia_pokemon VALUES (257, 21, 257);
INSERT INTO public.instancia_pokemon VALUES (258, 39, 258);
INSERT INTO public.instancia_pokemon VALUES (259, 84, 259);
INSERT INTO public.instancia_pokemon VALUES (260, 16, 260);
INSERT INTO public.instancia_pokemon VALUES (261, 21, 261);
INSERT INTO public.instancia_pokemon VALUES (262, 39, 262);
INSERT INTO public.instancia_pokemon VALUES (263, 84, 263);
INSERT INTO public.instancia_pokemon VALUES (264, 16, 264);
INSERT INTO public.instancia_pokemon VALUES (265, 21, 265);
INSERT INTO public.instancia_pokemon VALUES (266, 39, 266);
INSERT INTO public.instancia_pokemon VALUES (267, 84, 267);
INSERT INTO public.instancia_pokemon VALUES (268, 16, 268);
INSERT INTO public.instancia_pokemon VALUES (269, 21, 269);
INSERT INTO public.instancia_pokemon VALUES (270, 39, 270);
INSERT INTO public.instancia_pokemon VALUES (271, 84, 271);
INSERT INTO public.instancia_pokemon VALUES (272, 16, 272);
INSERT INTO public.instancia_pokemon VALUES (273, 21, 273);
INSERT INTO public.instancia_pokemon VALUES (274, 39, 274);
INSERT INTO public.instancia_pokemon VALUES (275, 84, 275);
INSERT INTO public.instancia_pokemon VALUES (276, 16, 276);
INSERT INTO public.instancia_pokemon VALUES (277, 21, 277);
INSERT INTO public.instancia_pokemon VALUES (278, 39, 278);
INSERT INTO public.instancia_pokemon VALUES (279, 84, 279);
INSERT INTO public.instancia_pokemon VALUES (280, 16, 280);
INSERT INTO public.instancia_pokemon VALUES (281, 21, 281);
INSERT INTO public.instancia_pokemon VALUES (282, 39, 282);
INSERT INTO public.instancia_pokemon VALUES (283, 84, 283);
INSERT INTO public.instancia_pokemon VALUES (284, 16, 284);
INSERT INTO public.instancia_pokemon VALUES (285, 21, 285);
INSERT INTO public.instancia_pokemon VALUES (286, 39, 286);
INSERT INTO public.instancia_pokemon VALUES (287, 84, 287);
INSERT INTO public.instancia_pokemon VALUES (288, 16, 288);
INSERT INTO public.instancia_pokemon VALUES (289, 21, 289);
INSERT INTO public.instancia_pokemon VALUES (290, 39, 290);
INSERT INTO public.instancia_pokemon VALUES (291, 84, 291);
INSERT INTO public.instancia_pokemon VALUES (292, 16, 292);
INSERT INTO public.instancia_pokemon VALUES (293, 21, 293);
INSERT INTO public.instancia_pokemon VALUES (294, 39, 294);
INSERT INTO public.instancia_pokemon VALUES (295, 84, 295);
INSERT INTO public.instancia_pokemon VALUES (296, 16, 296);
INSERT INTO public.instancia_pokemon VALUES (297, 21, 297);
INSERT INTO public.instancia_pokemon VALUES (298, 39, 298);
INSERT INTO public.instancia_pokemon VALUES (299, 84, 299);
INSERT INTO public.instancia_pokemon VALUES (300, 16, 300);
INSERT INTO public.instancia_pokemon VALUES (301, 21, 301);
INSERT INTO public.instancia_pokemon VALUES (302, 39, 302);
INSERT INTO public.instancia_pokemon VALUES (303, 84, 303);
INSERT INTO public.instancia_pokemon VALUES (304, 16, 304);
INSERT INTO public.instancia_pokemon VALUES (305, 21, 305);
INSERT INTO public.instancia_pokemon VALUES (306, 39, 306);
INSERT INTO public.instancia_pokemon VALUES (307, 84, 307);
INSERT INTO public.instancia_pokemon VALUES (308, 16, 308);
INSERT INTO public.instancia_pokemon VALUES (309, 21, 309);
INSERT INTO public.instancia_pokemon VALUES (310, 39, 310);
INSERT INTO public.instancia_pokemon VALUES (311, 84, 311);
INSERT INTO public.instancia_pokemon VALUES (312, 16, 312);
INSERT INTO public.instancia_pokemon VALUES (313, 21, 313);
INSERT INTO public.instancia_pokemon VALUES (314, 39, 314);
INSERT INTO public.instancia_pokemon VALUES (315, 84, 315);
INSERT INTO public.instancia_pokemon VALUES (316, 16, 316);
INSERT INTO public.instancia_pokemon VALUES (317, 21, 317);
INSERT INTO public.instancia_pokemon VALUES (318, 39, 318);
INSERT INTO public.instancia_pokemon VALUES (319, 84, 319);
INSERT INTO public.instancia_pokemon VALUES (320, 16, 320);
INSERT INTO public.instancia_pokemon VALUES (321, 21, 321);
INSERT INTO public.instancia_pokemon VALUES (322, 39, 322);
INSERT INTO public.instancia_pokemon VALUES (323, 84, 323);
INSERT INTO public.instancia_pokemon VALUES (324, 16, 324);
INSERT INTO public.instancia_pokemon VALUES (325, 21, 325);
INSERT INTO public.instancia_pokemon VALUES (326, 39, 326);
INSERT INTO public.instancia_pokemon VALUES (327, 84, 327);
INSERT INTO public.instancia_pokemon VALUES (328, 16, 328);
INSERT INTO public.instancia_pokemon VALUES (329, 21, 329);
INSERT INTO public.instancia_pokemon VALUES (330, 39, 330);
INSERT INTO public.instancia_pokemon VALUES (331, 84, 331);
INSERT INTO public.instancia_pokemon VALUES (332, 16, 332);
INSERT INTO public.instancia_pokemon VALUES (333, 21, 333);
INSERT INTO public.instancia_pokemon VALUES (334, 39, 334);
INSERT INTO public.instancia_pokemon VALUES (335, 84, 335);
INSERT INTO public.instancia_pokemon VALUES (336, 16, 336);
INSERT INTO public.instancia_pokemon VALUES (337, 21, 337);
INSERT INTO public.instancia_pokemon VALUES (338, 39, 338);
INSERT INTO public.instancia_pokemon VALUES (339, 84, 339);
INSERT INTO public.instancia_pokemon VALUES (340, 16, 340);
INSERT INTO public.instancia_pokemon VALUES (341, 21, 341);
INSERT INTO public.instancia_pokemon VALUES (342, 39, 342);
INSERT INTO public.instancia_pokemon VALUES (343, 84, 343);
INSERT INTO public.instancia_pokemon VALUES (344, 16, 344);
INSERT INTO public.instancia_pokemon VALUES (345, 21, 345);
INSERT INTO public.instancia_pokemon VALUES (346, 39, 346);
INSERT INTO public.instancia_pokemon VALUES (347, 84, 347);
INSERT INTO public.instancia_pokemon VALUES (348, 16, 348);
INSERT INTO public.instancia_pokemon VALUES (349, 21, 349);
INSERT INTO public.instancia_pokemon VALUES (350, 39, 350);
INSERT INTO public.instancia_pokemon VALUES (351, 84, 351);
INSERT INTO public.instancia_pokemon VALUES (352, 16, 352);
INSERT INTO public.instancia_pokemon VALUES (353, 21, 353);
INSERT INTO public.instancia_pokemon VALUES (354, 39, 354);
INSERT INTO public.instancia_pokemon VALUES (355, 84, 355);
INSERT INTO public.instancia_pokemon VALUES (356, 16, 356);
INSERT INTO public.instancia_pokemon VALUES (357, 21, 357);
INSERT INTO public.instancia_pokemon VALUES (358, 39, 358);
INSERT INTO public.instancia_pokemon VALUES (359, 84, 359);
INSERT INTO public.instancia_pokemon VALUES (360, 16, 360);
INSERT INTO public.instancia_pokemon VALUES (361, 21, 361);
INSERT INTO public.instancia_pokemon VALUES (362, 39, 362);
INSERT INTO public.instancia_pokemon VALUES (363, 84, 363);
INSERT INTO public.instancia_pokemon VALUES (364, 16, 364);
INSERT INTO public.instancia_pokemon VALUES (365, 21, 365);
INSERT INTO public.instancia_pokemon VALUES (366, 39, 366);
INSERT INTO public.instancia_pokemon VALUES (367, 84, 367);
INSERT INTO public.instancia_pokemon VALUES (368, 16, 368);
INSERT INTO public.instancia_pokemon VALUES (369, 21, 369);
INSERT INTO public.instancia_pokemon VALUES (370, 39, 370);
INSERT INTO public.instancia_pokemon VALUES (371, 84, 371);
INSERT INTO public.instancia_pokemon VALUES (372, 16, 372);
INSERT INTO public.instancia_pokemon VALUES (373, 21, 373);
INSERT INTO public.instancia_pokemon VALUES (374, 39, 374);
INSERT INTO public.instancia_pokemon VALUES (375, 84, 375);
INSERT INTO public.instancia_pokemon VALUES (376, 16, 376);
INSERT INTO public.instancia_pokemon VALUES (377, 21, 377);
INSERT INTO public.instancia_pokemon VALUES (378, 39, 378);
INSERT INTO public.instancia_pokemon VALUES (379, 84, 379);
INSERT INTO public.instancia_pokemon VALUES (380, 16, 380);
INSERT INTO public.instancia_pokemon VALUES (381, 21, 381);
INSERT INTO public.instancia_pokemon VALUES (382, 39, 382);
INSERT INTO public.instancia_pokemon VALUES (383, 84, 383);
INSERT INTO public.instancia_pokemon VALUES (384, 16, 384);
INSERT INTO public.instancia_pokemon VALUES (385, 21, 385);
INSERT INTO public.instancia_pokemon VALUES (386, 39, 386);
INSERT INTO public.instancia_pokemon VALUES (387, 84, 387);
INSERT INTO public.instancia_pokemon VALUES (388, 16, 388);
INSERT INTO public.instancia_pokemon VALUES (389, 21, 389);
INSERT INTO public.instancia_pokemon VALUES (390, 39, 390);
INSERT INTO public.instancia_pokemon VALUES (391, 84, 391);
INSERT INTO public.instancia_pokemon VALUES (392, 16, 392);
INSERT INTO public.instancia_pokemon VALUES (393, 21, 393);
INSERT INTO public.instancia_pokemon VALUES (394, 39, 394);
INSERT INTO public.instancia_pokemon VALUES (395, 84, 395);
INSERT INTO public.instancia_pokemon VALUES (396, 16, 396);
INSERT INTO public.instancia_pokemon VALUES (397, 21, 397);
INSERT INTO public.instancia_pokemon VALUES (398, 39, 398);
INSERT INTO public.instancia_pokemon VALUES (399, 84, 399);
INSERT INTO public.instancia_pokemon VALUES (400, 16, 400);
INSERT INTO public.instancia_pokemon VALUES (401, 21, 401);
INSERT INTO public.instancia_pokemon VALUES (402, 39, 402);
INSERT INTO public.instancia_pokemon VALUES (403, 84, 403);
INSERT INTO public.instancia_pokemon VALUES (404, 16, 404);
INSERT INTO public.instancia_pokemon VALUES (405, 21, 405);
INSERT INTO public.instancia_pokemon VALUES (406, 39, 406);
INSERT INTO public.instancia_pokemon VALUES (407, 84, 407);
INSERT INTO public.instancia_pokemon VALUES (408, 16, 408);
INSERT INTO public.instancia_pokemon VALUES (409, 21, 409);
INSERT INTO public.instancia_pokemon VALUES (410, 39, 410);
INSERT INTO public.instancia_pokemon VALUES (411, 84, 411);
INSERT INTO public.instancia_pokemon VALUES (412, 16, 412);
INSERT INTO public.instancia_pokemon VALUES (413, 21, 413);
INSERT INTO public.instancia_pokemon VALUES (414, 39, 414);
INSERT INTO public.instancia_pokemon VALUES (415, 84, 415);
INSERT INTO public.instancia_pokemon VALUES (416, 16, 416);
INSERT INTO public.instancia_pokemon VALUES (417, 21, 417);
INSERT INTO public.instancia_pokemon VALUES (418, 39, 418);
INSERT INTO public.instancia_pokemon VALUES (419, 84, 419);
INSERT INTO public.instancia_pokemon VALUES (420, 16, 420);
INSERT INTO public.instancia_pokemon VALUES (421, 21, 421);
INSERT INTO public.instancia_pokemon VALUES (422, 39, 422);
INSERT INTO public.instancia_pokemon VALUES (423, 84, 423);
INSERT INTO public.instancia_pokemon VALUES (424, 16, 424);
INSERT INTO public.instancia_pokemon VALUES (425, 21, 425);
INSERT INTO public.instancia_pokemon VALUES (426, 39, 426);
INSERT INTO public.instancia_pokemon VALUES (427, 84, 427);
INSERT INTO public.instancia_pokemon VALUES (428, 16, 428);
INSERT INTO public.instancia_pokemon VALUES (429, 21, 429);
INSERT INTO public.instancia_pokemon VALUES (430, 39, 430);
INSERT INTO public.instancia_pokemon VALUES (431, 84, 431);
INSERT INTO public.instancia_pokemon VALUES (432, 16, 432);
INSERT INTO public.instancia_pokemon VALUES (433, 21, 433);
INSERT INTO public.instancia_pokemon VALUES (434, 39, 434);
INSERT INTO public.instancia_pokemon VALUES (435, 84, 435);
INSERT INTO public.instancia_pokemon VALUES (436, 16, 436);
INSERT INTO public.instancia_pokemon VALUES (437, 21, 437);
INSERT INTO public.instancia_pokemon VALUES (438, 39, 438);
INSERT INTO public.instancia_pokemon VALUES (439, 84, 439);
INSERT INTO public.instancia_pokemon VALUES (440, 16, 440);
INSERT INTO public.instancia_pokemon VALUES (441, 21, 441);
INSERT INTO public.instancia_pokemon VALUES (442, 39, 442);
INSERT INTO public.instancia_pokemon VALUES (443, 84, 443);
INSERT INTO public.instancia_pokemon VALUES (444, 16, 444);
INSERT INTO public.instancia_pokemon VALUES (445, 21, 445);
INSERT INTO public.instancia_pokemon VALUES (446, 39, 446);
INSERT INTO public.instancia_pokemon VALUES (447, 84, 447);
INSERT INTO public.instancia_pokemon VALUES (448, 16, 448);
INSERT INTO public.instancia_pokemon VALUES (449, 21, 449);
INSERT INTO public.instancia_pokemon VALUES (450, 39, 450);
INSERT INTO public.instancia_pokemon VALUES (451, 84, 451);
INSERT INTO public.instancia_pokemon VALUES (452, 16, 452);
INSERT INTO public.instancia_pokemon VALUES (453, 21, 453);
INSERT INTO public.instancia_pokemon VALUES (454, 39, 454);
INSERT INTO public.instancia_pokemon VALUES (455, 84, 455);
INSERT INTO public.instancia_pokemon VALUES (456, 16, 456);
INSERT INTO public.instancia_pokemon VALUES (457, 21, 457);
INSERT INTO public.instancia_pokemon VALUES (458, 39, 458);
INSERT INTO public.instancia_pokemon VALUES (459, 84, 459);
INSERT INTO public.instancia_pokemon VALUES (460, 16, 460);
INSERT INTO public.instancia_pokemon VALUES (461, 21, 461);
INSERT INTO public.instancia_pokemon VALUES (462, 39, 462);
INSERT INTO public.instancia_pokemon VALUES (463, 84, 463);
INSERT INTO public.instancia_pokemon VALUES (464, 16, 464);
INSERT INTO public.instancia_pokemon VALUES (465, 21, 465);
INSERT INTO public.instancia_pokemon VALUES (466, 39, 466);
INSERT INTO public.instancia_pokemon VALUES (467, 84, 467);
INSERT INTO public.instancia_pokemon VALUES (468, 16, 468);
INSERT INTO public.instancia_pokemon VALUES (469, 21, 469);
INSERT INTO public.instancia_pokemon VALUES (470, 39, 470);
INSERT INTO public.instancia_pokemon VALUES (471, 84, 471);
INSERT INTO public.instancia_pokemon VALUES (472, 16, 472);
INSERT INTO public.instancia_pokemon VALUES (473, 21, 473);
INSERT INTO public.instancia_pokemon VALUES (474, 39, 474);
INSERT INTO public.instancia_pokemon VALUES (475, 84, 475);
INSERT INTO public.instancia_pokemon VALUES (476, 16, 476);
INSERT INTO public.instancia_pokemon VALUES (477, 21, 477);
INSERT INTO public.instancia_pokemon VALUES (478, 39, 478);
INSERT INTO public.instancia_pokemon VALUES (479, 84, 479);
INSERT INTO public.instancia_pokemon VALUES (480, 16, 480);
INSERT INTO public.instancia_pokemon VALUES (481, 21, 481);
INSERT INTO public.instancia_pokemon VALUES (482, 39, 482);
INSERT INTO public.instancia_pokemon VALUES (483, 84, 483);
INSERT INTO public.instancia_pokemon VALUES (484, 16, 484);
INSERT INTO public.instancia_pokemon VALUES (485, 21, 485);
INSERT INTO public.instancia_pokemon VALUES (486, 39, 486);
INSERT INTO public.instancia_pokemon VALUES (487, 84, 487);
INSERT INTO public.instancia_pokemon VALUES (488, 16, 488);
INSERT INTO public.instancia_pokemon VALUES (489, 21, 489);
INSERT INTO public.instancia_pokemon VALUES (490, 39, 490);
INSERT INTO public.instancia_pokemon VALUES (491, 84, 491);
INSERT INTO public.instancia_pokemon VALUES (492, 16, 492);
INSERT INTO public.instancia_pokemon VALUES (493, 21, 493);
INSERT INTO public.instancia_pokemon VALUES (494, 39, 494);
INSERT INTO public.instancia_pokemon VALUES (495, 84, 495);
INSERT INTO public.instancia_pokemon VALUES (496, 16, 496);
INSERT INTO public.instancia_pokemon VALUES (497, 21, 497);
INSERT INTO public.instancia_pokemon VALUES (498, 39, 498);
INSERT INTO public.instancia_pokemon VALUES (499, 84, 499);
INSERT INTO public.instancia_pokemon VALUES (500, 16, 500);
INSERT INTO public.instancia_pokemon VALUES (501, 21, 501);
INSERT INTO public.instancia_pokemon VALUES (502, 39, 502);
INSERT INTO public.instancia_pokemon VALUES (503, 84, 503);
INSERT INTO public.instancia_pokemon VALUES (504, 16, 504);
INSERT INTO public.instancia_pokemon VALUES (505, 21, 505);
INSERT INTO public.instancia_pokemon VALUES (506, 39, 506);
INSERT INTO public.instancia_pokemon VALUES (507, 84, 507);
INSERT INTO public.instancia_pokemon VALUES (508, 16, 508);
INSERT INTO public.instancia_pokemon VALUES (509, 21, 509);
INSERT INTO public.instancia_pokemon VALUES (510, 39, 510);
INSERT INTO public.instancia_pokemon VALUES (511, 84, 511);
INSERT INTO public.instancia_pokemon VALUES (512, 16, 512);
INSERT INTO public.instancia_pokemon VALUES (513, 21, 513);
INSERT INTO public.instancia_pokemon VALUES (514, 39, 514);
INSERT INTO public.instancia_pokemon VALUES (515, 84, 515);


--
-- Data for Name: pokebola; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pokebola VALUES ('normal', 0, 0);
INSERT INTO public.pokebola VALUES ('great ball', 1, 0);
INSERT INTO public.pokebola VALUES ('ultra ball', 2, 0);
INSERT INTO public.pokebola VALUES ('master ball', 3, 0);
INSERT INTO public.pokebola VALUES ('normal', 4, 1);
INSERT INTO public.pokebola VALUES ('great ball', 5, 1);
INSERT INTO public.pokebola VALUES ('ultra ball', 6, 1);
INSERT INTO public.pokebola VALUES ('master ball', 7, 1);
INSERT INTO public.pokebola VALUES ('normal', 8, 2);
INSERT INTO public.pokebola VALUES ('great ball', 9, 2);
INSERT INTO public.pokebola VALUES ('ultra ball', 10, 2);
INSERT INTO public.pokebola VALUES ('master ball', 11, 2);
INSERT INTO public.pokebola VALUES ('normal', 12, 3);
INSERT INTO public.pokebola VALUES ('great ball', 13, 3);
INSERT INTO public.pokebola VALUES ('ultra ball', 14, 3);
INSERT INTO public.pokebola VALUES ('master ball', 15, 3);
INSERT INTO public.pokebola VALUES ('normal', 16, 4);
INSERT INTO public.pokebola VALUES ('great ball', 17, 4);
INSERT INTO public.pokebola VALUES ('ultra ball', 18, 4);
INSERT INTO public.pokebola VALUES ('master ball', 19, 4);
INSERT INTO public.pokebola VALUES ('normal', 20, 5);
INSERT INTO public.pokebola VALUES ('great ball', 21, 5);
INSERT INTO public.pokebola VALUES ('ultra ball', 22, 5);
INSERT INTO public.pokebola VALUES ('master ball', 23, 5);
INSERT INTO public.pokebola VALUES ('normal', 24, 6);
INSERT INTO public.pokebola VALUES ('great ball', 25, 6);
INSERT INTO public.pokebola VALUES ('ultra ball', 26, 6);
INSERT INTO public.pokebola VALUES ('master ball', 27, 6);
INSERT INTO public.pokebola VALUES ('normal', 28, 7);
INSERT INTO public.pokebola VALUES ('great ball', 29, 7);
INSERT INTO public.pokebola VALUES ('ultra ball', 30, 7);
INSERT INTO public.pokebola VALUES ('master ball', 31, 7);
INSERT INTO public.pokebola VALUES ('normal', 32, 8);
INSERT INTO public.pokebola VALUES ('great ball', 33, 8);
INSERT INTO public.pokebola VALUES ('ultra ball', 34, 8);
INSERT INTO public.pokebola VALUES ('master ball', 35, 8);
INSERT INTO public.pokebola VALUES ('normal', 36, 9);
INSERT INTO public.pokebola VALUES ('great ball', 37, 9);
INSERT INTO public.pokebola VALUES ('ultra ball', 38, 9);
INSERT INTO public.pokebola VALUES ('master ball', 39, 9);
INSERT INTO public.pokebola VALUES ('normal', 40, 10);
INSERT INTO public.pokebola VALUES ('great ball', 41, 10);
INSERT INTO public.pokebola VALUES ('ultra ball', 42, 10);
INSERT INTO public.pokebola VALUES ('master ball', 43, 10);
INSERT INTO public.pokebola VALUES ('normal', 44, 11);
INSERT INTO public.pokebola VALUES ('great ball', 45, 11);
INSERT INTO public.pokebola VALUES ('ultra ball', 46, 11);
INSERT INTO public.pokebola VALUES ('master ball', 47, 11);
INSERT INTO public.pokebola VALUES ('normal', 48, 12);
INSERT INTO public.pokebola VALUES ('great ball', 49, 12);
INSERT INTO public.pokebola VALUES ('ultra ball', 50, 12);
INSERT INTO public.pokebola VALUES ('master ball', 51, 12);
INSERT INTO public.pokebola VALUES ('normal', 52, 13);
INSERT INTO public.pokebola VALUES ('great ball', 53, 13);
INSERT INTO public.pokebola VALUES ('ultra ball', 54, 13);
INSERT INTO public.pokebola VALUES ('master ball', 55, 13);
INSERT INTO public.pokebola VALUES ('normal', 56, 14);
INSERT INTO public.pokebola VALUES ('great ball', 57, 14);
INSERT INTO public.pokebola VALUES ('ultra ball', 58, 14);
INSERT INTO public.pokebola VALUES ('master ball', 59, 14);
INSERT INTO public.pokebola VALUES ('normal', 60, 15);
INSERT INTO public.pokebola VALUES ('great ball', 61, 15);
INSERT INTO public.pokebola VALUES ('ultra ball', 62, 15);
INSERT INTO public.pokebola VALUES ('master ball', 63, 15);
INSERT INTO public.pokebola VALUES ('normal', 64, 16);
INSERT INTO public.pokebola VALUES ('great ball', 65, 16);
INSERT INTO public.pokebola VALUES ('ultra ball', 66, 16);
INSERT INTO public.pokebola VALUES ('master ball', 67, 16);
INSERT INTO public.pokebola VALUES ('normal', 68, 17);
INSERT INTO public.pokebola VALUES ('great ball', 69, 17);
INSERT INTO public.pokebola VALUES ('ultra ball', 70, 17);
INSERT INTO public.pokebola VALUES ('master ball', 71, 17);
INSERT INTO public.pokebola VALUES ('normal', 72, 18);
INSERT INTO public.pokebola VALUES ('great ball', 73, 18);
INSERT INTO public.pokebola VALUES ('ultra ball', 74, 18);
INSERT INTO public.pokebola VALUES ('master ball', 75, 18);
INSERT INTO public.pokebola VALUES ('normal', 76, 19);
INSERT INTO public.pokebola VALUES ('great ball', 77, 19);
INSERT INTO public.pokebola VALUES ('ultra ball', 78, 19);
INSERT INTO public.pokebola VALUES ('master ball', 79, 19);
INSERT INTO public.pokebola VALUES ('normal', 80, 20);
INSERT INTO public.pokebola VALUES ('great ball', 81, 20);
INSERT INTO public.pokebola VALUES ('ultra ball', 82, 20);
INSERT INTO public.pokebola VALUES ('master ball', 83, 20);
INSERT INTO public.pokebola VALUES ('normal', 84, 21);
INSERT INTO public.pokebola VALUES ('great ball', 85, 21);
INSERT INTO public.pokebola VALUES ('ultra ball', 86, 21);
INSERT INTO public.pokebola VALUES ('master ball', 87, 21);
INSERT INTO public.pokebola VALUES ('normal', 88, 22);
INSERT INTO public.pokebola VALUES ('great ball', 89, 22);
INSERT INTO public.pokebola VALUES ('ultra ball', 90, 22);
INSERT INTO public.pokebola VALUES ('master ball', 91, 22);
INSERT INTO public.pokebola VALUES ('normal', 92, 23);
INSERT INTO public.pokebola VALUES ('great ball', 93, 23);
INSERT INTO public.pokebola VALUES ('ultra ball', 94, 23);
INSERT INTO public.pokebola VALUES ('master ball', 95, 23);
INSERT INTO public.pokebola VALUES ('normal', 96, 24);
INSERT INTO public.pokebola VALUES ('great ball', 97, 24);
INSERT INTO public.pokebola VALUES ('ultra ball', 98, 24);
INSERT INTO public.pokebola VALUES ('master ball', 99, 24);
INSERT INTO public.pokebola VALUES ('normal', 100, 25);
INSERT INTO public.pokebola VALUES ('great ball', 101, 25);
INSERT INTO public.pokebola VALUES ('ultra ball', 102, 25);
INSERT INTO public.pokebola VALUES ('master ball', 103, 25);
INSERT INTO public.pokebola VALUES ('normal', 104, 26);
INSERT INTO public.pokebola VALUES ('great ball', 105, 26);
INSERT INTO public.pokebola VALUES ('ultra ball', 106, 26);
INSERT INTO public.pokebola VALUES ('master ball', 107, 26);
INSERT INTO public.pokebola VALUES ('normal', 108, 27);
INSERT INTO public.pokebola VALUES ('great ball', 109, 27);
INSERT INTO public.pokebola VALUES ('ultra ball', 110, 27);
INSERT INTO public.pokebola VALUES ('master ball', 111, 27);
INSERT INTO public.pokebola VALUES ('normal', 112, 28);
INSERT INTO public.pokebola VALUES ('great ball', 113, 28);
INSERT INTO public.pokebola VALUES ('ultra ball', 114, 28);
INSERT INTO public.pokebola VALUES ('master ball', 115, 28);
INSERT INTO public.pokebola VALUES ('normal', 116, 29);
INSERT INTO public.pokebola VALUES ('great ball', 117, 29);
INSERT INTO public.pokebola VALUES ('ultra ball', 118, 29);
INSERT INTO public.pokebola VALUES ('master ball', 119, 29);
INSERT INTO public.pokebola VALUES ('normal', 120, 30);
INSERT INTO public.pokebola VALUES ('great ball', 121, 30);
INSERT INTO public.pokebola VALUES ('ultra ball', 122, 30);
INSERT INTO public.pokebola VALUES ('master ball', 123, 30);
INSERT INTO public.pokebola VALUES ('normal', 124, 31);
INSERT INTO public.pokebola VALUES ('great ball', 125, 31);
INSERT INTO public.pokebola VALUES ('ultra ball', 126, 31);
INSERT INTO public.pokebola VALUES ('master ball', 127, 31);
INSERT INTO public.pokebola VALUES ('normal', 128, 32);
INSERT INTO public.pokebola VALUES ('great ball', 129, 32);
INSERT INTO public.pokebola VALUES ('ultra ball', 130, 32);
INSERT INTO public.pokebola VALUES ('master ball', 131, 32);
INSERT INTO public.pokebola VALUES ('normal', 132, 33);
INSERT INTO public.pokebola VALUES ('great ball', 133, 33);
INSERT INTO public.pokebola VALUES ('ultra ball', 134, 33);
INSERT INTO public.pokebola VALUES ('master ball', 135, 33);
INSERT INTO public.pokebola VALUES ('normal', 136, 34);
INSERT INTO public.pokebola VALUES ('great ball', 137, 34);
INSERT INTO public.pokebola VALUES ('ultra ball', 138, 34);
INSERT INTO public.pokebola VALUES ('master ball', 139, 34);
INSERT INTO public.pokebola VALUES ('normal', 140, 35);
INSERT INTO public.pokebola VALUES ('great ball', 141, 35);
INSERT INTO public.pokebola VALUES ('ultra ball', 142, 35);
INSERT INTO public.pokebola VALUES ('master ball', 143, 35);
INSERT INTO public.pokebola VALUES ('normal', 144, 36);
INSERT INTO public.pokebola VALUES ('great ball', 145, 36);
INSERT INTO public.pokebola VALUES ('ultra ball', 146, 36);
INSERT INTO public.pokebola VALUES ('master ball', 147, 36);
INSERT INTO public.pokebola VALUES ('normal', 148, 37);
INSERT INTO public.pokebola VALUES ('great ball', 149, 37);
INSERT INTO public.pokebola VALUES ('ultra ball', 150, 37);
INSERT INTO public.pokebola VALUES ('master ball', 151, 37);
INSERT INTO public.pokebola VALUES ('normal', 152, 38);
INSERT INTO public.pokebola VALUES ('great ball', 153, 38);
INSERT INTO public.pokebola VALUES ('ultra ball', 154, 38);
INSERT INTO public.pokebola VALUES ('master ball', 155, 38);
INSERT INTO public.pokebola VALUES ('normal', 156, 39);
INSERT INTO public.pokebola VALUES ('great ball', 157, 39);
INSERT INTO public.pokebola VALUES ('ultra ball', 158, 39);
INSERT INTO public.pokebola VALUES ('master ball', 159, 39);
INSERT INTO public.pokebola VALUES ('normal', 160, 40);
INSERT INTO public.pokebola VALUES ('great ball', 161, 40);
INSERT INTO public.pokebola VALUES ('ultra ball', 162, 40);
INSERT INTO public.pokebola VALUES ('master ball', 163, 40);
INSERT INTO public.pokebola VALUES ('normal', 164, 41);
INSERT INTO public.pokebola VALUES ('great ball', 165, 41);
INSERT INTO public.pokebola VALUES ('ultra ball', 166, 41);
INSERT INTO public.pokebola VALUES ('master ball', 167, 41);
INSERT INTO public.pokebola VALUES ('normal', 168, 42);
INSERT INTO public.pokebola VALUES ('great ball', 169, 42);
INSERT INTO public.pokebola VALUES ('ultra ball', 170, 42);
INSERT INTO public.pokebola VALUES ('master ball', 171, 42);
INSERT INTO public.pokebola VALUES ('normal', 172, 43);
INSERT INTO public.pokebola VALUES ('great ball', 173, 43);
INSERT INTO public.pokebola VALUES ('ultra ball', 174, 43);
INSERT INTO public.pokebola VALUES ('master ball', 175, 43);
INSERT INTO public.pokebola VALUES ('normal', 176, 44);
INSERT INTO public.pokebola VALUES ('great ball', 177, 44);
INSERT INTO public.pokebola VALUES ('ultra ball', 178, 44);
INSERT INTO public.pokebola VALUES ('master ball', 179, 44);
INSERT INTO public.pokebola VALUES ('normal', 180, 45);
INSERT INTO public.pokebola VALUES ('great ball', 181, 45);
INSERT INTO public.pokebola VALUES ('ultra ball', 182, 45);
INSERT INTO public.pokebola VALUES ('master ball', 183, 45);
INSERT INTO public.pokebola VALUES ('normal', 184, 46);
INSERT INTO public.pokebola VALUES ('great ball', 185, 46);
INSERT INTO public.pokebola VALUES ('ultra ball', 186, 46);
INSERT INTO public.pokebola VALUES ('master ball', 187, 46);
INSERT INTO public.pokebola VALUES ('normal', 188, 47);
INSERT INTO public.pokebola VALUES ('great ball', 189, 47);
INSERT INTO public.pokebola VALUES ('ultra ball', 190, 47);
INSERT INTO public.pokebola VALUES ('master ball', 191, 47);
INSERT INTO public.pokebola VALUES ('normal', 192, 48);
INSERT INTO public.pokebola VALUES ('great ball', 193, 48);
INSERT INTO public.pokebola VALUES ('ultra ball', 194, 48);
INSERT INTO public.pokebola VALUES ('master ball', 195, 48);
INSERT INTO public.pokebola VALUES ('normal', 196, 49);
INSERT INTO public.pokebola VALUES ('great ball', 197, 49);
INSERT INTO public.pokebola VALUES ('ultra ball', 198, 49);
INSERT INTO public.pokebola VALUES ('master ball', 199, 49);
INSERT INTO public.pokebola VALUES ('normal', 200, 50);
INSERT INTO public.pokebola VALUES ('great ball', 201, 50);
INSERT INTO public.pokebola VALUES ('ultra ball', 202, 50);
INSERT INTO public.pokebola VALUES ('master ball', 203, 50);
INSERT INTO public.pokebola VALUES ('normal', 204, 51);
INSERT INTO public.pokebola VALUES ('great ball', 205, 51);
INSERT INTO public.pokebola VALUES ('ultra ball', 206, 51);
INSERT INTO public.pokebola VALUES ('master ball', 207, 51);
INSERT INTO public.pokebola VALUES ('normal', 208, 52);
INSERT INTO public.pokebola VALUES ('great ball', 209, 52);
INSERT INTO public.pokebola VALUES ('ultra ball', 210, 52);
INSERT INTO public.pokebola VALUES ('master ball', 211, 52);
INSERT INTO public.pokebola VALUES ('normal', 212, 53);
INSERT INTO public.pokebola VALUES ('great ball', 213, 53);
INSERT INTO public.pokebola VALUES ('ultra ball', 214, 53);
INSERT INTO public.pokebola VALUES ('master ball', 215, 53);
INSERT INTO public.pokebola VALUES ('normal', 216, 54);
INSERT INTO public.pokebola VALUES ('great ball', 217, 54);
INSERT INTO public.pokebola VALUES ('ultra ball', 218, 54);
INSERT INTO public.pokebola VALUES ('master ball', 219, 54);
INSERT INTO public.pokebola VALUES ('normal', 220, 55);
INSERT INTO public.pokebola VALUES ('great ball', 221, 55);
INSERT INTO public.pokebola VALUES ('ultra ball', 222, 55);
INSERT INTO public.pokebola VALUES ('master ball', 223, 55);
INSERT INTO public.pokebola VALUES ('normal', 224, 56);
INSERT INTO public.pokebola VALUES ('great ball', 225, 56);
INSERT INTO public.pokebola VALUES ('ultra ball', 226, 56);
INSERT INTO public.pokebola VALUES ('master ball', 227, 56);
INSERT INTO public.pokebola VALUES ('normal', 228, 57);
INSERT INTO public.pokebola VALUES ('great ball', 229, 57);
INSERT INTO public.pokebola VALUES ('ultra ball', 230, 57);
INSERT INTO public.pokebola VALUES ('master ball', 231, 57);
INSERT INTO public.pokebola VALUES ('normal', 232, 58);
INSERT INTO public.pokebola VALUES ('great ball', 233, 58);
INSERT INTO public.pokebola VALUES ('ultra ball', 234, 58);
INSERT INTO public.pokebola VALUES ('master ball', 235, 58);
INSERT INTO public.pokebola VALUES ('normal', 236, 59);
INSERT INTO public.pokebola VALUES ('great ball', 237, 59);
INSERT INTO public.pokebola VALUES ('ultra ball', 238, 59);
INSERT INTO public.pokebola VALUES ('master ball', 239, 59);
INSERT INTO public.pokebola VALUES ('normal', 240, 60);
INSERT INTO public.pokebola VALUES ('great ball', 241, 60);
INSERT INTO public.pokebola VALUES ('ultra ball', 242, 60);
INSERT INTO public.pokebola VALUES ('master ball', 243, 60);
INSERT INTO public.pokebola VALUES ('normal', 244, 61);
INSERT INTO public.pokebola VALUES ('great ball', 245, 61);
INSERT INTO public.pokebola VALUES ('ultra ball', 246, 61);
INSERT INTO public.pokebola VALUES ('master ball', 247, 61);
INSERT INTO public.pokebola VALUES ('normal', 248, 62);
INSERT INTO public.pokebola VALUES ('great ball', 249, 62);
INSERT INTO public.pokebola VALUES ('ultra ball', 250, 62);
INSERT INTO public.pokebola VALUES ('master ball', 251, 62);
INSERT INTO public.pokebola VALUES ('normal', 252, 63);
INSERT INTO public.pokebola VALUES ('great ball', 253, 63);
INSERT INTO public.pokebola VALUES ('ultra ball', 254, 63);
INSERT INTO public.pokebola VALUES ('master ball', 255, 63);
INSERT INTO public.pokebola VALUES ('normal', 256, 64);
INSERT INTO public.pokebola VALUES ('great ball', 257, 64);
INSERT INTO public.pokebola VALUES ('ultra ball', 258, 64);
INSERT INTO public.pokebola VALUES ('master ball', 259, 64);
INSERT INTO public.pokebola VALUES ('normal', 260, 65);
INSERT INTO public.pokebola VALUES ('great ball', 261, 65);
INSERT INTO public.pokebola VALUES ('ultra ball', 262, 65);
INSERT INTO public.pokebola VALUES ('master ball', 263, 65);
INSERT INTO public.pokebola VALUES ('normal', 264, 66);
INSERT INTO public.pokebola VALUES ('great ball', 265, 66);
INSERT INTO public.pokebola VALUES ('ultra ball', 266, 66);
INSERT INTO public.pokebola VALUES ('master ball', 267, 66);
INSERT INTO public.pokebola VALUES ('normal', 268, 67);
INSERT INTO public.pokebola VALUES ('great ball', 269, 67);
INSERT INTO public.pokebola VALUES ('ultra ball', 270, 67);
INSERT INTO public.pokebola VALUES ('master ball', 271, 67);
INSERT INTO public.pokebola VALUES ('normal', 272, 68);
INSERT INTO public.pokebola VALUES ('great ball', 273, 68);
INSERT INTO public.pokebola VALUES ('ultra ball', 274, 68);
INSERT INTO public.pokebola VALUES ('master ball', 275, 68);
INSERT INTO public.pokebola VALUES ('normal', 276, 69);
INSERT INTO public.pokebola VALUES ('great ball', 277, 69);
INSERT INTO public.pokebola VALUES ('ultra ball', 278, 69);
INSERT INTO public.pokebola VALUES ('master ball', 279, 69);
INSERT INTO public.pokebola VALUES ('normal', 280, 70);
INSERT INTO public.pokebola VALUES ('great ball', 281, 70);
INSERT INTO public.pokebola VALUES ('ultra ball', 282, 70);
INSERT INTO public.pokebola VALUES ('master ball', 283, 70);
INSERT INTO public.pokebola VALUES ('normal', 284, 71);
INSERT INTO public.pokebola VALUES ('great ball', 285, 71);
INSERT INTO public.pokebola VALUES ('ultra ball', 286, 71);
INSERT INTO public.pokebola VALUES ('master ball', 287, 71);
INSERT INTO public.pokebola VALUES ('normal', 288, 72);
INSERT INTO public.pokebola VALUES ('great ball', 289, 72);
INSERT INTO public.pokebola VALUES ('ultra ball', 290, 72);
INSERT INTO public.pokebola VALUES ('master ball', 291, 72);
INSERT INTO public.pokebola VALUES ('normal', 292, 73);
INSERT INTO public.pokebola VALUES ('great ball', 293, 73);
INSERT INTO public.pokebola VALUES ('ultra ball', 294, 73);
INSERT INTO public.pokebola VALUES ('master ball', 295, 73);
INSERT INTO public.pokebola VALUES ('normal', 296, 74);
INSERT INTO public.pokebola VALUES ('great ball', 297, 74);
INSERT INTO public.pokebola VALUES ('ultra ball', 298, 74);
INSERT INTO public.pokebola VALUES ('master ball', 299, 74);
INSERT INTO public.pokebola VALUES ('normal', 300, 75);
INSERT INTO public.pokebola VALUES ('great ball', 301, 75);
INSERT INTO public.pokebola VALUES ('ultra ball', 302, 75);
INSERT INTO public.pokebola VALUES ('master ball', 303, 75);
INSERT INTO public.pokebola VALUES ('normal', 304, 76);
INSERT INTO public.pokebola VALUES ('great ball', 305, 76);
INSERT INTO public.pokebola VALUES ('ultra ball', 306, 76);
INSERT INTO public.pokebola VALUES ('master ball', 307, 76);
INSERT INTO public.pokebola VALUES ('normal', 308, 77);
INSERT INTO public.pokebola VALUES ('great ball', 309, 77);
INSERT INTO public.pokebola VALUES ('ultra ball', 310, 77);
INSERT INTO public.pokebola VALUES ('master ball', 311, 77);
INSERT INTO public.pokebola VALUES ('normal', 312, 78);
INSERT INTO public.pokebola VALUES ('great ball', 313, 78);
INSERT INTO public.pokebola VALUES ('ultra ball', 314, 78);
INSERT INTO public.pokebola VALUES ('master ball', 315, 78);
INSERT INTO public.pokebola VALUES ('normal', 316, 79);
INSERT INTO public.pokebola VALUES ('great ball', 317, 79);
INSERT INTO public.pokebola VALUES ('ultra ball', 318, 79);
INSERT INTO public.pokebola VALUES ('master ball', 319, 79);
INSERT INTO public.pokebola VALUES ('normal', 320, 80);
INSERT INTO public.pokebola VALUES ('great ball', 321, 80);
INSERT INTO public.pokebola VALUES ('ultra ball', 322, 80);
INSERT INTO public.pokebola VALUES ('master ball', 323, 80);
INSERT INTO public.pokebola VALUES ('normal', 324, 81);
INSERT INTO public.pokebola VALUES ('great ball', 325, 81);
INSERT INTO public.pokebola VALUES ('ultra ball', 326, 81);
INSERT INTO public.pokebola VALUES ('master ball', 327, 81);
INSERT INTO public.pokebola VALUES ('normal', 328, 82);
INSERT INTO public.pokebola VALUES ('great ball', 329, 82);
INSERT INTO public.pokebola VALUES ('ultra ball', 330, 82);
INSERT INTO public.pokebola VALUES ('master ball', 331, 82);
INSERT INTO public.pokebola VALUES ('normal', 332, 83);
INSERT INTO public.pokebola VALUES ('great ball', 333, 83);
INSERT INTO public.pokebola VALUES ('ultra ball', 334, 83);
INSERT INTO public.pokebola VALUES ('master ball', 335, 83);
INSERT INTO public.pokebola VALUES ('normal', 336, 84);
INSERT INTO public.pokebola VALUES ('great ball', 337, 84);
INSERT INTO public.pokebola VALUES ('ultra ball', 338, 84);
INSERT INTO public.pokebola VALUES ('master ball', 339, 84);
INSERT INTO public.pokebola VALUES ('normal', 340, 85);
INSERT INTO public.pokebola VALUES ('great ball', 341, 85);
INSERT INTO public.pokebola VALUES ('ultra ball', 342, 85);
INSERT INTO public.pokebola VALUES ('master ball', 343, 85);
INSERT INTO public.pokebola VALUES ('normal', 344, 86);
INSERT INTO public.pokebola VALUES ('great ball', 345, 86);
INSERT INTO public.pokebola VALUES ('ultra ball', 346, 86);
INSERT INTO public.pokebola VALUES ('master ball', 347, 86);
INSERT INTO public.pokebola VALUES ('normal', 348, 87);
INSERT INTO public.pokebola VALUES ('great ball', 349, 87);
INSERT INTO public.pokebola VALUES ('ultra ball', 350, 87);
INSERT INTO public.pokebola VALUES ('master ball', 351, 87);
INSERT INTO public.pokebola VALUES ('normal', 352, 88);
INSERT INTO public.pokebola VALUES ('great ball', 353, 88);
INSERT INTO public.pokebola VALUES ('ultra ball', 354, 88);
INSERT INTO public.pokebola VALUES ('master ball', 355, 88);
INSERT INTO public.pokebola VALUES ('normal', 356, 89);
INSERT INTO public.pokebola VALUES ('great ball', 357, 89);
INSERT INTO public.pokebola VALUES ('ultra ball', 358, 89);
INSERT INTO public.pokebola VALUES ('master ball', 359, 89);
INSERT INTO public.pokebola VALUES ('normal', 360, 90);
INSERT INTO public.pokebola VALUES ('great ball', 361, 90);
INSERT INTO public.pokebola VALUES ('ultra ball', 362, 90);
INSERT INTO public.pokebola VALUES ('master ball', 363, 90);
INSERT INTO public.pokebola VALUES ('normal', 364, 91);
INSERT INTO public.pokebola VALUES ('great ball', 365, 91);
INSERT INTO public.pokebola VALUES ('ultra ball', 366, 91);
INSERT INTO public.pokebola VALUES ('master ball', 367, 91);
INSERT INTO public.pokebola VALUES ('normal', 368, 92);
INSERT INTO public.pokebola VALUES ('great ball', 369, 92);
INSERT INTO public.pokebola VALUES ('ultra ball', 370, 92);
INSERT INTO public.pokebola VALUES ('master ball', 371, 92);
INSERT INTO public.pokebola VALUES ('normal', 372, 93);
INSERT INTO public.pokebola VALUES ('great ball', 373, 93);
INSERT INTO public.pokebola VALUES ('ultra ball', 374, 93);
INSERT INTO public.pokebola VALUES ('master ball', 375, 93);
INSERT INTO public.pokebola VALUES ('normal', 376, 94);
INSERT INTO public.pokebola VALUES ('great ball', 377, 94);
INSERT INTO public.pokebola VALUES ('ultra ball', 378, 94);
INSERT INTO public.pokebola VALUES ('master ball', 379, 94);
INSERT INTO public.pokebola VALUES ('normal', 380, 95);
INSERT INTO public.pokebola VALUES ('great ball', 381, 95);
INSERT INTO public.pokebola VALUES ('ultra ball', 382, 95);
INSERT INTO public.pokebola VALUES ('master ball', 383, 95);
INSERT INTO public.pokebola VALUES ('normal', 384, 96);
INSERT INTO public.pokebola VALUES ('great ball', 385, 96);
INSERT INTO public.pokebola VALUES ('ultra ball', 386, 96);
INSERT INTO public.pokebola VALUES ('master ball', 387, 96);
INSERT INTO public.pokebola VALUES ('normal', 388, 97);
INSERT INTO public.pokebola VALUES ('great ball', 389, 97);
INSERT INTO public.pokebola VALUES ('ultra ball', 390, 97);
INSERT INTO public.pokebola VALUES ('master ball', 391, 97);
INSERT INTO public.pokebola VALUES ('normal', 392, 98);
INSERT INTO public.pokebola VALUES ('great ball', 393, 98);
INSERT INTO public.pokebola VALUES ('ultra ball', 394, 98);
INSERT INTO public.pokebola VALUES ('master ball', 395, 98);
INSERT INTO public.pokebola VALUES ('normal', 396, 99);
INSERT INTO public.pokebola VALUES ('great ball', 397, 99);
INSERT INTO public.pokebola VALUES ('ultra ball', 398, 99);
INSERT INTO public.pokebola VALUES ('master ball', 399, 99);
INSERT INTO public.pokebola VALUES ('normal', 400, 100);
INSERT INTO public.pokebola VALUES ('great ball', 401, 100);
INSERT INTO public.pokebola VALUES ('ultra ball', 402, 100);
INSERT INTO public.pokebola VALUES ('master ball', 403, 100);
INSERT INTO public.pokebola VALUES ('normal', 404, 101);
INSERT INTO public.pokebola VALUES ('great ball', 405, 101);
INSERT INTO public.pokebola VALUES ('ultra ball', 406, 101);
INSERT INTO public.pokebola VALUES ('master ball', 407, 101);
INSERT INTO public.pokebola VALUES ('normal', 408, 102);
INSERT INTO public.pokebola VALUES ('great ball', 409, 102);
INSERT INTO public.pokebola VALUES ('ultra ball', 410, 102);
INSERT INTO public.pokebola VALUES ('master ball', 411, 102);
INSERT INTO public.pokebola VALUES ('normal', 412, 103);
INSERT INTO public.pokebola VALUES ('great ball', 413, 103);
INSERT INTO public.pokebola VALUES ('ultra ball', 414, 103);
INSERT INTO public.pokebola VALUES ('master ball', 415, 103);
INSERT INTO public.pokebola VALUES ('normal', 416, 104);
INSERT INTO public.pokebola VALUES ('great ball', 417, 104);
INSERT INTO public.pokebola VALUES ('ultra ball', 418, 104);
INSERT INTO public.pokebola VALUES ('master ball', 419, 104);
INSERT INTO public.pokebola VALUES ('normal', 420, 105);
INSERT INTO public.pokebola VALUES ('great ball', 421, 105);
INSERT INTO public.pokebola VALUES ('ultra ball', 422, 105);
INSERT INTO public.pokebola VALUES ('master ball', 423, 105);
INSERT INTO public.pokebola VALUES ('normal', 424, 106);
INSERT INTO public.pokebola VALUES ('great ball', 425, 106);
INSERT INTO public.pokebola VALUES ('ultra ball', 426, 106);
INSERT INTO public.pokebola VALUES ('master ball', 427, 106);
INSERT INTO public.pokebola VALUES ('normal', 428, 107);
INSERT INTO public.pokebola VALUES ('great ball', 429, 107);
INSERT INTO public.pokebola VALUES ('ultra ball', 430, 107);
INSERT INTO public.pokebola VALUES ('master ball', 431, 107);
INSERT INTO public.pokebola VALUES ('normal', 432, 108);
INSERT INTO public.pokebola VALUES ('great ball', 433, 108);
INSERT INTO public.pokebola VALUES ('ultra ball', 434, 108);
INSERT INTO public.pokebola VALUES ('master ball', 435, 108);
INSERT INTO public.pokebola VALUES ('normal', 436, 109);
INSERT INTO public.pokebola VALUES ('great ball', 437, 109);
INSERT INTO public.pokebola VALUES ('ultra ball', 438, 109);
INSERT INTO public.pokebola VALUES ('master ball', 439, 109);
INSERT INTO public.pokebola VALUES ('normal', 440, 110);
INSERT INTO public.pokebola VALUES ('great ball', 441, 110);
INSERT INTO public.pokebola VALUES ('ultra ball', 442, 110);
INSERT INTO public.pokebola VALUES ('master ball', 443, 110);
INSERT INTO public.pokebola VALUES ('normal', 444, 111);
INSERT INTO public.pokebola VALUES ('great ball', 445, 111);
INSERT INTO public.pokebola VALUES ('ultra ball', 446, 111);
INSERT INTO public.pokebola VALUES ('master ball', 447, 111);
INSERT INTO public.pokebola VALUES ('normal', 448, 112);
INSERT INTO public.pokebola VALUES ('great ball', 449, 112);
INSERT INTO public.pokebola VALUES ('ultra ball', 450, 112);
INSERT INTO public.pokebola VALUES ('master ball', 451, 112);
INSERT INTO public.pokebola VALUES ('normal', 452, 113);
INSERT INTO public.pokebola VALUES ('great ball', 453, 113);
INSERT INTO public.pokebola VALUES ('ultra ball', 454, 113);
INSERT INTO public.pokebola VALUES ('master ball', 455, 113);
INSERT INTO public.pokebola VALUES ('normal', 456, 114);
INSERT INTO public.pokebola VALUES ('great ball', 457, 114);
INSERT INTO public.pokebola VALUES ('ultra ball', 458, 114);
INSERT INTO public.pokebola VALUES ('master ball', 459, 114);
INSERT INTO public.pokebola VALUES ('normal', 460, 115);
INSERT INTO public.pokebola VALUES ('great ball', 461, 115);
INSERT INTO public.pokebola VALUES ('ultra ball', 462, 115);
INSERT INTO public.pokebola VALUES ('master ball', 463, 115);
INSERT INTO public.pokebola VALUES ('normal', 464, 116);
INSERT INTO public.pokebola VALUES ('great ball', 465, 116);
INSERT INTO public.pokebola VALUES ('ultra ball', 466, 116);
INSERT INTO public.pokebola VALUES ('master ball', 467, 116);
INSERT INTO public.pokebola VALUES ('normal', 468, 117);
INSERT INTO public.pokebola VALUES ('great ball', 469, 117);
INSERT INTO public.pokebola VALUES ('ultra ball', 470, 117);
INSERT INTO public.pokebola VALUES ('master ball', 471, 117);
INSERT INTO public.pokebola VALUES ('normal', 472, 118);
INSERT INTO public.pokebola VALUES ('great ball', 473, 118);
INSERT INTO public.pokebola VALUES ('ultra ball', 474, 118);
INSERT INTO public.pokebola VALUES ('master ball', 475, 118);
INSERT INTO public.pokebola VALUES ('normal', 476, 119);
INSERT INTO public.pokebola VALUES ('great ball', 477, 119);
INSERT INTO public.pokebola VALUES ('ultra ball', 478, 119);
INSERT INTO public.pokebola VALUES ('master ball', 479, 119);
INSERT INTO public.pokebola VALUES ('normal', 480, 120);
INSERT INTO public.pokebola VALUES ('great ball', 481, 120);
INSERT INTO public.pokebola VALUES ('ultra ball', 482, 120);
INSERT INTO public.pokebola VALUES ('master ball', 483, 120);
INSERT INTO public.pokebola VALUES ('normal', 484, 121);
INSERT INTO public.pokebola VALUES ('great ball', 485, 121);
INSERT INTO public.pokebola VALUES ('ultra ball', 486, 121);
INSERT INTO public.pokebola VALUES ('master ball', 487, 121);
INSERT INTO public.pokebola VALUES ('normal', 488, 122);
INSERT INTO public.pokebola VALUES ('great ball', 489, 122);
INSERT INTO public.pokebola VALUES ('ultra ball', 490, 122);
INSERT INTO public.pokebola VALUES ('master ball', 491, 122);
INSERT INTO public.pokebola VALUES ('normal', 492, 123);
INSERT INTO public.pokebola VALUES ('great ball', 493, 123);
INSERT INTO public.pokebola VALUES ('ultra ball', 494, 123);
INSERT INTO public.pokebola VALUES ('master ball', 495, 123);
INSERT INTO public.pokebola VALUES ('normal', 496, 124);
INSERT INTO public.pokebola VALUES ('great ball', 497, 124);
INSERT INTO public.pokebola VALUES ('ultra ball', 498, 124);
INSERT INTO public.pokebola VALUES ('master ball', 499, 124);
INSERT INTO public.pokebola VALUES ('normal', 500, 125);
INSERT INTO public.pokebola VALUES ('great ball', 501, 125);
INSERT INTO public.pokebola VALUES ('ultra ball', 502, 125);
INSERT INTO public.pokebola VALUES ('master ball', 503, 125);
INSERT INTO public.pokebola VALUES ('normal', 504, 126);
INSERT INTO public.pokebola VALUES ('great ball', 505, 126);
INSERT INTO public.pokebola VALUES ('ultra ball', 506, 126);
INSERT INTO public.pokebola VALUES ('master ball', 507, 126);
INSERT INTO public.pokebola VALUES ('normal', 508, 127);
INSERT INTO public.pokebola VALUES ('great ball', 509, 127);
INSERT INTO public.pokebola VALUES ('ultra ball', 510, 127);
INSERT INTO public.pokebola VALUES ('master ball', 511, 127);
INSERT INTO public.pokebola VALUES ('normal', 512, 128);
INSERT INTO public.pokebola VALUES ('great ball', 513, 128);
INSERT INTO public.pokebola VALUES ('ultra ball', 514, 128);
INSERT INTO public.pokebola VALUES ('master ball', 515, 128);


--
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pokemon VALUES (1, 'bulbasaur', 7, 69, 45, 49, 49, 65, 65, 45, 'grass', 'poison', 1);
INSERT INTO public.pokemon VALUES (2, 'ivysaur', 10, 130, 60, 62, 63, 80, 80, 60, 'grass', 'poison', 2);
INSERT INTO public.pokemon VALUES (3, 'venusaur', 20, 1000, 80, 82, 83, 100, 100, 80, 'grass', 'poison', 3);
INSERT INTO public.pokemon VALUES (6, 'charizard', 17, 905, 78, 84, 78, 109, 85, 100, 'fire', 'flying', 6);
INSERT INTO public.pokemon VALUES (12, 'butterfree', 11, 320, 60, 45, 50, 90, 80, 70, 'bug', 'flying', 12);
INSERT INTO public.pokemon VALUES (13, 'weedle', 3, 32, 40, 35, 30, 20, 20, 50, 'bug', 'poison', 13);
INSERT INTO public.pokemon VALUES (14, 'kakuna', 6, 100, 45, 25, 50, 25, 25, 35, 'bug', 'poison', 14);
INSERT INTO public.pokemon VALUES (15, 'beedrill', 10, 295, 65, 90, 40, 45, 80, 75, 'bug', 'poison', 15);
INSERT INTO public.pokemon VALUES (16, 'pidgey', 3, 18, 40, 45, 40, 35, 35, 56, 'normal', 'flying', 16);
INSERT INTO public.pokemon VALUES (17, 'pidgeotto', 11, 300, 63, 60, 55, 50, 50, 71, 'normal', 'flying', 17);
INSERT INTO public.pokemon VALUES (18, 'pidgeot', 15, 395, 83, 80, 75, 70, 70, 101, 'normal', 'flying', 18);
INSERT INTO public.pokemon VALUES (21, 'spearow', 3, 20, 40, 60, 30, 31, 31, 70, 'normal', 'flying', 21);
INSERT INTO public.pokemon VALUES (22, 'fearow', 12, 380, 65, 90, 65, 61, 61, 100, 'normal', 'flying', 22);
INSERT INTO public.pokemon VALUES (31, 'nidoqueen', 13, 600, 90, 92, 87, 75, 85, 76, 'poison', 'ground', 31);
INSERT INTO public.pokemon VALUES (34, 'nidoking', 14, 620, 81, 102, 77, 85, 75, 85, 'poison', 'ground', 34);
INSERT INTO public.pokemon VALUES (39, 'jigglypuff', 5, 55, 115, 45, 20, 45, 25, 20, 'normal', 'fairy', 39);
INSERT INTO public.pokemon VALUES (40, 'wigglytuff', 10, 120, 140, 70, 45, 85, 50, 45, 'normal', 'fairy', 40);
INSERT INTO public.pokemon VALUES (41, 'zubat', 8, 75, 40, 45, 35, 30, 40, 55, 'poison', 'flying', 41);
INSERT INTO public.pokemon VALUES (42, 'golbat', 16, 550, 75, 80, 70, 65, 75, 90, 'poison', 'flying', 42);
INSERT INTO public.pokemon VALUES (43, 'oddish', 5, 54, 45, 50, 55, 75, 65, 30, 'grass', 'poison', 43);
INSERT INTO public.pokemon VALUES (44, 'gloom', 8, 86, 60, 65, 70, 85, 75, 40, 'grass', 'poison', 44);
INSERT INTO public.pokemon VALUES (45, 'vileplume', 12, 186, 75, 80, 85, 110, 90, 50, 'grass', 'poison', 45);
INSERT INTO public.pokemon VALUES (46, 'paras', 3, 54, 35, 70, 55, 45, 55, 25, 'bug', 'grass', 46);
INSERT INTO public.pokemon VALUES (47, 'parasect', 10, 295, 60, 95, 80, 60, 80, 30, 'bug', 'grass', 47);
INSERT INTO public.pokemon VALUES (48, 'venonat', 10, 300, 60, 55, 50, 40, 55, 45, 'bug', 'poison', 48);
INSERT INTO public.pokemon VALUES (49, 'venomoth', 15, 125, 70, 65, 60, 90, 75, 90, 'bug', 'poison', 49);
INSERT INTO public.pokemon VALUES (62, 'poliwrath', 13, 540, 90, 95, 95, 70, 90, 70, 'water', 'fighting', 62);
INSERT INTO public.pokemon VALUES (69, 'bellsprout', 7, 40, 50, 75, 35, 70, 30, 40, 'grass', 'poison', 69);
INSERT INTO public.pokemon VALUES (70, 'weepinbell', 10, 64, 65, 90, 50, 85, 45, 55, 'grass', 'poison', 70);
INSERT INTO public.pokemon VALUES (71, 'victreebel', 17, 155, 80, 105, 65, 100, 70, 70, 'grass', 'poison', 71);
INSERT INTO public.pokemon VALUES (72, 'tentacool', 9, 455, 40, 40, 35, 50, 100, 70, 'water', 'poison', 72);
INSERT INTO public.pokemon VALUES (73, 'tentacruel', 16, 550, 80, 70, 65, 80, 120, 100, 'water', 'poison', 73);
INSERT INTO public.pokemon VALUES (74, 'geodude', 4, 200, 40, 80, 100, 30, 30, 20, 'rock', 'ground', 74);
INSERT INTO public.pokemon VALUES (75, 'graveler', 10, 1050, 55, 95, 115, 45, 45, 35, 'rock', 'ground', 75);
INSERT INTO public.pokemon VALUES (76, 'golem', 14, 3000, 80, 120, 130, 55, 65, 45, 'rock', 'ground', 76);
INSERT INTO public.pokemon VALUES (79, 'slowpoke', 12, 360, 90, 65, 65, 40, 40, 15, 'water', 'psychic', 79);
INSERT INTO public.pokemon VALUES (80, 'slowbro', 16, 785, 95, 75, 110, 100, 80, 30, 'water', 'psychic', 80);
INSERT INTO public.pokemon VALUES (81, 'magnemite', 3, 60, 25, 35, 70, 95, 55, 45, 'electric', 'steel', 81);
INSERT INTO public.pokemon VALUES (82, 'magneton', 10, 600, 50, 60, 95, 120, 70, 70, 'electric', 'steel', 82);
INSERT INTO public.pokemon VALUES (83, 'farfetchd', 8, 150, 52, 90, 55, 58, 62, 60, 'normal', 'flying', 83);
INSERT INTO public.pokemon VALUES (84, 'doduo', 14, 392, 35, 85, 45, 35, 35, 75, 'normal', 'flying', 84);
INSERT INTO public.pokemon VALUES (85, 'dodrio', 18, 852, 60, 110, 70, 60, 60, 110, 'normal', 'flying', 85);
INSERT INTO public.pokemon VALUES (87, 'dewgong', 17, 1200, 90, 70, 80, 70, 95, 70, 'water', 'ice', 87);
INSERT INTO public.pokemon VALUES (91, 'cloyster', 15, 1325, 50, 95, 180, 85, 45, 70, 'water', 'ice', 91);
INSERT INTO public.pokemon VALUES (92, 'gastly', 13, 1, 30, 35, 30, 100, 35, 80, 'ghost', 'poison', 92);
INSERT INTO public.pokemon VALUES (93, 'haunter', 16, 1, 45, 50, 45, 115, 55, 95, 'ghost', 'poison', 93);
INSERT INTO public.pokemon VALUES (94, 'gengar', 15, 405, 60, 65, 60, 130, 75, 110, 'ghost', 'poison', 94);
INSERT INTO public.pokemon VALUES (95, 'onix', 88, 2100, 35, 45, 160, 30, 45, 70, 'rock', 'ground', 95);
INSERT INTO public.pokemon VALUES (102, 'exeggcute', 4, 25, 60, 40, 80, 60, 45, 40, 'grass', 'psychic', 102);
INSERT INTO public.pokemon VALUES (103, 'exeggutor', 20, 1200, 95, 95, 85, 125, 75, 55, 'grass', 'psychic', 103);
INSERT INTO public.pokemon VALUES (111, 'rhyhorn', 10, 1150, 80, 85, 95, 30, 30, 25, 'ground', 'rock', 111);
INSERT INTO public.pokemon VALUES (112, 'rhydon', 19, 1200, 105, 130, 120, 45, 45, 40, 'ground', 'rock', 112);
INSERT INTO public.pokemon VALUES (121, 'starmie', 11, 800, 60, 75, 85, 100, 85, 115, 'water', 'psychic', 121);
INSERT INTO public.pokemon VALUES (122, 'mr-mime', 13, 545, 40, 45, 65, 100, 120, 90, 'psychic', 'fairy', 122);
INSERT INTO public.pokemon VALUES (123, 'scyther', 15, 560, 70, 110, 80, 55, 80, 105, 'bug', 'flying', 123);
INSERT INTO public.pokemon VALUES (124, 'jynx', 14, 406, 65, 50, 35, 115, 95, 95, 'ice', 'psychic', 124);
INSERT INTO public.pokemon VALUES (130, 'gyarados', 65, 2350, 95, 125, 79, 60, 100, 81, 'water', 'flying', 130);
INSERT INTO public.pokemon VALUES (131, 'lapras', 25, 2200, 130, 85, 80, 85, 95, 60, 'water', 'ice', 131);
INSERT INTO public.pokemon VALUES (138, 'omanyte', 4, 75, 35, 40, 100, 90, 55, 35, 'rock', 'water', 138);
INSERT INTO public.pokemon VALUES (139, 'omastar', 10, 350, 70, 60, 125, 115, 70, 55, 'rock', 'water', 139);
INSERT INTO public.pokemon VALUES (140, 'kabuto', 5, 115, 30, 80, 90, 55, 45, 55, 'rock', 'water', 140);
INSERT INTO public.pokemon VALUES (141, 'kabutops', 13, 405, 60, 115, 105, 65, 70, 80, 'rock', 'water', 141);
INSERT INTO public.pokemon VALUES (142, 'aerodactyl', 18, 590, 80, 105, 65, 60, 75, 130, 'rock', 'flying', 142);
INSERT INTO public.pokemon VALUES (144, 'articuno', 17, 554, 90, 85, 100, 95, 125, 85, 'ice', 'flying', 144);
INSERT INTO public.pokemon VALUES (145, 'zapdos', 16, 526, 90, 90, 85, 125, 90, 100, 'electric', 'flying', 145);
INSERT INTO public.pokemon VALUES (146, 'moltres', 20, 600, 90, 100, 90, 125, 85, 90, 'fire', 'flying', 146);
INSERT INTO public.pokemon VALUES (149, 'dragonite', 22, 2100, 91, 134, 95, 100, 100, 80, 'dragon', 'flying', 149);


--
-- Data for Name: pokemon_habilidade; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pokemon_habilidade VALUES (0, 1, 0);
INSERT INTO public.pokemon_habilidade VALUES (1, 1, 1);
INSERT INTO public.pokemon_habilidade VALUES (2, 1, 2);
INSERT INTO public.pokemon_habilidade VALUES (3, 1, 3);
INSERT INTO public.pokemon_habilidade VALUES (4, 2, 4);
INSERT INTO public.pokemon_habilidade VALUES (5, 2, 5);
INSERT INTO public.pokemon_habilidade VALUES (6, 2, 6);
INSERT INTO public.pokemon_habilidade VALUES (7, 2, 7);
INSERT INTO public.pokemon_habilidade VALUES (8, 3, 8);
INSERT INTO public.pokemon_habilidade VALUES (9, 3, 9);
INSERT INTO public.pokemon_habilidade VALUES (10, 3, 10);
INSERT INTO public.pokemon_habilidade VALUES (11, 3, 11);
INSERT INTO public.pokemon_habilidade VALUES (20, 6, 20);
INSERT INTO public.pokemon_habilidade VALUES (21, 6, 21);
INSERT INTO public.pokemon_habilidade VALUES (22, 6, 22);
INSERT INTO public.pokemon_habilidade VALUES (23, 6, 23);
INSERT INTO public.pokemon_habilidade VALUES (42, 12, 42);
INSERT INTO public.pokemon_habilidade VALUES (43, 12, 43);
INSERT INTO public.pokemon_habilidade VALUES (44, 13, 44);
INSERT INTO public.pokemon_habilidade VALUES (45, 13, 45);
INSERT INTO public.pokemon_habilidade VALUES (46, 13, 46);
INSERT INTO public.pokemon_habilidade VALUES (47, 14, 47);
INSERT INTO public.pokemon_habilidade VALUES (48, 15, 48);
INSERT INTO public.pokemon_habilidade VALUES (49, 15, 49);
INSERT INTO public.pokemon_habilidade VALUES (50, 15, 50);
INSERT INTO public.pokemon_habilidade VALUES (51, 15, 51);
INSERT INTO public.pokemon_habilidade VALUES (52, 16, 52);
INSERT INTO public.pokemon_habilidade VALUES (53, 16, 53);
INSERT INTO public.pokemon_habilidade VALUES (54, 16, 54);
INSERT INTO public.pokemon_habilidade VALUES (55, 16, 55);
INSERT INTO public.pokemon_habilidade VALUES (56, 17, 56);
INSERT INTO public.pokemon_habilidade VALUES (57, 17, 57);
INSERT INTO public.pokemon_habilidade VALUES (58, 17, 58);
INSERT INTO public.pokemon_habilidade VALUES (59, 17, 59);
INSERT INTO public.pokemon_habilidade VALUES (60, 18, 60);
INSERT INTO public.pokemon_habilidade VALUES (61, 18, 61);
INSERT INTO public.pokemon_habilidade VALUES (62, 18, 62);
INSERT INTO public.pokemon_habilidade VALUES (63, 18, 63);
INSERT INTO public.pokemon_habilidade VALUES (72, 21, 72);
INSERT INTO public.pokemon_habilidade VALUES (73, 21, 73);
INSERT INTO public.pokemon_habilidade VALUES (74, 21, 74);
INSERT INTO public.pokemon_habilidade VALUES (75, 21, 75);
INSERT INTO public.pokemon_habilidade VALUES (76, 22, 76);
INSERT INTO public.pokemon_habilidade VALUES (77, 22, 77);
INSERT INTO public.pokemon_habilidade VALUES (78, 22, 78);
INSERT INTO public.pokemon_habilidade VALUES (79, 22, 79);
INSERT INTO public.pokemon_habilidade VALUES (112, 31, 112);
INSERT INTO public.pokemon_habilidade VALUES (113, 31, 113);
INSERT INTO public.pokemon_habilidade VALUES (114, 31, 114);
INSERT INTO public.pokemon_habilidade VALUES (115, 31, 115);
INSERT INTO public.pokemon_habilidade VALUES (124, 34, 124);
INSERT INTO public.pokemon_habilidade VALUES (125, 34, 125);
INSERT INTO public.pokemon_habilidade VALUES (126, 34, 126);
INSERT INTO public.pokemon_habilidade VALUES (127, 34, 127);
INSERT INTO public.pokemon_habilidade VALUES (144, 39, 144);
INSERT INTO public.pokemon_habilidade VALUES (145, 39, 145);
INSERT INTO public.pokemon_habilidade VALUES (146, 39, 146);
INSERT INTO public.pokemon_habilidade VALUES (147, 39, 147);
INSERT INTO public.pokemon_habilidade VALUES (148, 40, 148);
INSERT INTO public.pokemon_habilidade VALUES (149, 40, 149);
INSERT INTO public.pokemon_habilidade VALUES (150, 40, 150);
INSERT INTO public.pokemon_habilidade VALUES (151, 40, 151);
INSERT INTO public.pokemon_habilidade VALUES (152, 41, 152);
INSERT INTO public.pokemon_habilidade VALUES (153, 41, 153);
INSERT INTO public.pokemon_habilidade VALUES (154, 41, 154);
INSERT INTO public.pokemon_habilidade VALUES (155, 41, 155);
INSERT INTO public.pokemon_habilidade VALUES (156, 42, 156);
INSERT INTO public.pokemon_habilidade VALUES (157, 42, 157);
INSERT INTO public.pokemon_habilidade VALUES (158, 42, 158);
INSERT INTO public.pokemon_habilidade VALUES (159, 42, 159);
INSERT INTO public.pokemon_habilidade VALUES (160, 43, 160);
INSERT INTO public.pokemon_habilidade VALUES (161, 43, 161);
INSERT INTO public.pokemon_habilidade VALUES (162, 43, 162);
INSERT INTO public.pokemon_habilidade VALUES (163, 43, 163);
INSERT INTO public.pokemon_habilidade VALUES (164, 44, 164);
INSERT INTO public.pokemon_habilidade VALUES (165, 44, 165);
INSERT INTO public.pokemon_habilidade VALUES (166, 44, 166);
INSERT INTO public.pokemon_habilidade VALUES (167, 44, 167);
INSERT INTO public.pokemon_habilidade VALUES (168, 45, 168);
INSERT INTO public.pokemon_habilidade VALUES (169, 45, 169);
INSERT INTO public.pokemon_habilidade VALUES (170, 45, 170);
INSERT INTO public.pokemon_habilidade VALUES (171, 45, 171);
INSERT INTO public.pokemon_habilidade VALUES (172, 46, 172);
INSERT INTO public.pokemon_habilidade VALUES (173, 46, 173);
INSERT INTO public.pokemon_habilidade VALUES (174, 46, 174);
INSERT INTO public.pokemon_habilidade VALUES (175, 46, 175);
INSERT INTO public.pokemon_habilidade VALUES (176, 47, 176);
INSERT INTO public.pokemon_habilidade VALUES (177, 47, 177);
INSERT INTO public.pokemon_habilidade VALUES (178, 47, 178);
INSERT INTO public.pokemon_habilidade VALUES (179, 47, 179);
INSERT INTO public.pokemon_habilidade VALUES (180, 48, 180);
INSERT INTO public.pokemon_habilidade VALUES (181, 48, 181);
INSERT INTO public.pokemon_habilidade VALUES (182, 48, 182);
INSERT INTO public.pokemon_habilidade VALUES (183, 48, 183);
INSERT INTO public.pokemon_habilidade VALUES (184, 49, 184);
INSERT INTO public.pokemon_habilidade VALUES (185, 49, 185);
INSERT INTO public.pokemon_habilidade VALUES (186, 49, 186);
INSERT INTO public.pokemon_habilidade VALUES (187, 49, 187);


--
-- Data for Name: round; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.round VALUES (1, 1, 46, 36, NULL, NULL);
INSERT INTO public.round VALUES (2, 2, 27, 111, NULL, NULL);
INSERT INTO public.round VALUES (3, 3, 54, 121, NULL, NULL);
INSERT INTO public.round VALUES (4, 4, 20, 57, NULL, NULL);
INSERT INTO public.round VALUES (5, 5, 148, 105, NULL, NULL);
INSERT INTO public.round VALUES (6, 6, 42, 101, NULL, NULL);
INSERT INTO public.round VALUES (7, 7, 72, 67, NULL, NULL);
INSERT INTO public.round VALUES (8, 8, 89, 137, NULL, NULL);
INSERT INTO public.round VALUES (9, 9, 118, 7, NULL, NULL);
INSERT INTO public.round VALUES (10, 10, 21, 83, NULL, NULL);
INSERT INTO public.round VALUES (11, 11, 64, 16, NULL, NULL);
INSERT INTO public.round VALUES (12, 12, 86, 12, NULL, NULL);
INSERT INTO public.round VALUES (13, 13, 140, 97, NULL, NULL);
INSERT INTO public.round VALUES (14, 14, 84, 46, NULL, NULL);
INSERT INTO public.round VALUES (15, 15, 145, 78, NULL, NULL);
INSERT INTO public.round VALUES (16, 16, 102, 73, NULL, NULL);
INSERT INTO public.round VALUES (17, 17, 79, 113, NULL, NULL);
INSERT INTO public.round VALUES (18, 18, 37, 42, NULL, NULL);
INSERT INTO public.round VALUES (19, 19, 9, 94, NULL, NULL);
INSERT INTO public.round VALUES (20, 20, 55, 59, NULL, NULL);
INSERT INTO public.round VALUES (21, 21, 11, 110, NULL, NULL);
INSERT INTO public.round VALUES (22, 22, 54, 149, NULL, NULL);
INSERT INTO public.round VALUES (23, 23, 24, 43, NULL, NULL);
INSERT INTO public.round VALUES (24, 24, 106, 141, NULL, NULL);
INSERT INTO public.round VALUES (25, 25, 129, 84, NULL, NULL);
INSERT INTO public.round VALUES (26, 26, 25, 53, NULL, NULL);
INSERT INTO public.round VALUES (27, 27, 134, 142, NULL, NULL);
INSERT INTO public.round VALUES (28, 28, 113, 89, NULL, NULL);
INSERT INTO public.round VALUES (29, 29, 111, 62, NULL, NULL);
INSERT INTO public.round VALUES (30, 30, 47, 70, NULL, NULL);
INSERT INTO public.round VALUES (31, 31, 145, 111, NULL, NULL);
INSERT INTO public.round VALUES (32, 32, 37, 15, NULL, NULL);
INSERT INTO public.round VALUES (33, 33, 38, 2, NULL, NULL);
INSERT INTO public.round VALUES (34, 34, 45, 75, NULL, NULL);
INSERT INTO public.round VALUES (35, 35, 65, 86, NULL, NULL);
INSERT INTO public.round VALUES (36, 36, 22, 19, NULL, NULL);
INSERT INTO public.round VALUES (37, 37, 73, 2, NULL, NULL);
INSERT INTO public.round VALUES (38, 38, 75, 117, NULL, NULL);
INSERT INTO public.round VALUES (39, 39, 104, 86, NULL, NULL);
INSERT INTO public.round VALUES (40, 40, 70, 78, NULL, NULL);
INSERT INTO public.round VALUES (41, 41, 129, 115, NULL, NULL);
INSERT INTO public.round VALUES (42, 42, 79, 28, NULL, NULL);
INSERT INTO public.round VALUES (43, 43, 25, 12, NULL, NULL);
INSERT INTO public.round VALUES (44, 44, 57, 67, NULL, NULL);
INSERT INTO public.round VALUES (45, 45, 42, 26, NULL, NULL);
INSERT INTO public.round VALUES (46, 46, 70, 76, NULL, NULL);
INSERT INTO public.round VALUES (47, 47, 141, 69, NULL, NULL);
INSERT INTO public.round VALUES (48, 48, 60, 119, NULL, NULL);
INSERT INTO public.round VALUES (49, 49, 8, 136, NULL, NULL);
INSERT INTO public.round VALUES (50, 50, 68, 101, NULL, NULL);
INSERT INTO public.round VALUES (51, 51, 35, 71, NULL, NULL);
INSERT INTO public.round VALUES (52, 52, 37, 69, NULL, NULL);
INSERT INTO public.round VALUES (53, 53, 34, 17, NULL, NULL);
INSERT INTO public.round VALUES (54, 54, 124, 12, NULL, NULL);
INSERT INTO public.round VALUES (55, 55, 66, 38, NULL, NULL);
INSERT INTO public.round VALUES (56, 56, 22, 104, NULL, NULL);
INSERT INTO public.round VALUES (57, 57, 129, 59, NULL, NULL);
INSERT INTO public.round VALUES (58, 58, 112, 27, NULL, NULL);
INSERT INTO public.round VALUES (59, 59, 64, 83, NULL, NULL);
INSERT INTO public.round VALUES (60, 60, 132, 9, NULL, NULL);
INSERT INTO public.round VALUES (61, 61, 17, 68, NULL, NULL);
INSERT INTO public.round VALUES (62, 62, 109, 147, NULL, NULL);
INSERT INTO public.round VALUES (63, 63, 46, 121, NULL, NULL);
INSERT INTO public.round VALUES (64, 64, 60, 84, NULL, NULL);
INSERT INTO public.round VALUES (65, 65, 62, 108, NULL, NULL);
INSERT INTO public.round VALUES (66, 66, 143, 73, NULL, NULL);
INSERT INTO public.round VALUES (67, 67, 29, 1, NULL, NULL);
INSERT INTO public.round VALUES (68, 68, 109, 7, NULL, NULL);
INSERT INTO public.round VALUES (69, 69, 136, 129, NULL, NULL);
INSERT INTO public.round VALUES (70, 70, 61, 84, NULL, NULL);
INSERT INTO public.round VALUES (71, 71, 146, 126, NULL, NULL);
INSERT INTO public.round VALUES (72, 72, 28, 27, NULL, NULL);
INSERT INTO public.round VALUES (73, 73, 135, 105, NULL, NULL);
INSERT INTO public.round VALUES (74, 74, 72, 35, NULL, NULL);
INSERT INTO public.round VALUES (75, 75, 134, 74, NULL, NULL);
INSERT INTO public.round VALUES (76, 76, 73, 96, NULL, NULL);
INSERT INTO public.round VALUES (77, 77, 3, 35, NULL, NULL);
INSERT INTO public.round VALUES (78, 78, 139, 80, NULL, NULL);
INSERT INTO public.round VALUES (79, 79, 57, 7, NULL, NULL);
INSERT INTO public.round VALUES (80, 80, 143, 7, NULL, NULL);
INSERT INTO public.round VALUES (81, 81, 88, 22, NULL, NULL);
INSERT INTO public.round VALUES (82, 82, 78, 4, NULL, NULL);
INSERT INTO public.round VALUES (83, 83, 117, 62, NULL, NULL);
INSERT INTO public.round VALUES (84, 84, 106, 13, NULL, NULL);
INSERT INTO public.round VALUES (85, 85, 121, 88, NULL, NULL);
INSERT INTO public.round VALUES (86, 86, 110, 132, NULL, NULL);
INSERT INTO public.round VALUES (87, 87, 16, 51, NULL, NULL);
INSERT INTO public.round VALUES (88, 88, 59, 101, NULL, NULL);
INSERT INTO public.round VALUES (89, 89, 116, 81, NULL, NULL);
INSERT INTO public.round VALUES (90, 90, 90, 65, NULL, NULL);
INSERT INTO public.round VALUES (91, 91, 130, 71, NULL, NULL);
INSERT INTO public.round VALUES (92, 92, 104, 77, NULL, NULL);
INSERT INTO public.round VALUES (93, 93, 117, 44, NULL, NULL);
INSERT INTO public.round VALUES (94, 94, 147, 107, NULL, NULL);
INSERT INTO public.round VALUES (95, 95, 2, 79, NULL, NULL);
INSERT INTO public.round VALUES (96, 96, 28, 20, NULL, NULL);
INSERT INTO public.round VALUES (97, 97, 30, 130, NULL, NULL);
INSERT INTO public.round VALUES (98, 98, 111, 44, NULL, NULL);
INSERT INTO public.round VALUES (99, 99, 70, 31, NULL, NULL);
INSERT INTO public.round VALUES (100, 100, 64, 79, NULL, NULL);
INSERT INTO public.round VALUES (101, 101, 81, 146, NULL, NULL);
INSERT INTO public.round VALUES (102, 102, 1, 27, NULL, NULL);
INSERT INTO public.round VALUES (103, 103, 81, 84, NULL, NULL);
INSERT INTO public.round VALUES (104, 104, 85, 40, NULL, NULL);
INSERT INTO public.round VALUES (105, 105, 89, 126, NULL, NULL);
INSERT INTO public.round VALUES (106, 106, 130, 19, NULL, NULL);
INSERT INTO public.round VALUES (107, 107, 142, 105, NULL, NULL);
INSERT INTO public.round VALUES (108, 108, 42, 62, NULL, NULL);
INSERT INTO public.round VALUES (109, 109, 16, 27, NULL, NULL);
INSERT INTO public.round VALUES (110, 110, 36, 17, NULL, NULL);
INSERT INTO public.round VALUES (111, 111, 86, 70, NULL, NULL);
INSERT INTO public.round VALUES (112, 112, 54, 115, NULL, NULL);
INSERT INTO public.round VALUES (113, 113, 15, 14, NULL, NULL);
INSERT INTO public.round VALUES (114, 114, 32, 12, NULL, NULL);
INSERT INTO public.round VALUES (115, 115, 110, 61, NULL, NULL);
INSERT INTO public.round VALUES (116, 116, 112, 27, NULL, NULL);
INSERT INTO public.round VALUES (117, 117, 105, 148, NULL, NULL);
INSERT INTO public.round VALUES (118, 118, 84, 41, NULL, NULL);
INSERT INTO public.round VALUES (119, 119, 100, 39, NULL, NULL);
INSERT INTO public.round VALUES (120, 120, 143, 95, NULL, NULL);
INSERT INTO public.round VALUES (121, 121, 17, 82, NULL, NULL);
INSERT INTO public.round VALUES (122, 122, 32, 3, NULL, NULL);
INSERT INTO public.round VALUES (123, 123, 39, 24, NULL, NULL);
INSERT INTO public.round VALUES (124, 124, 111, 77, NULL, NULL);
INSERT INTO public.round VALUES (125, 125, 54, 61, NULL, NULL);
INSERT INTO public.round VALUES (126, 126, 26, 115, NULL, NULL);
INSERT INTO public.round VALUES (127, 127, 7, 71, NULL, NULL);
INSERT INTO public.round VALUES (128, 128, 73, 131, NULL, NULL);
INSERT INTO public.round VALUES (129, 129, 85, 54, NULL, NULL);
INSERT INTO public.round VALUES (130, 130, 120, 113, NULL, NULL);
INSERT INTO public.round VALUES (131, 131, 108, 51, NULL, NULL);
INSERT INTO public.round VALUES (132, 132, 66, 15, NULL, NULL);
INSERT INTO public.round VALUES (133, 133, 83, 135, NULL, NULL);
INSERT INTO public.round VALUES (134, 134, 39, 39, NULL, NULL);
INSERT INTO public.round VALUES (135, 135, 37, 44, NULL, NULL);
INSERT INTO public.round VALUES (136, 136, 90, 44, NULL, NULL);
INSERT INTO public.round VALUES (137, 137, 83, 94, NULL, NULL);
INSERT INTO public.round VALUES (138, 138, 114, 149, NULL, NULL);
INSERT INTO public.round VALUES (139, 139, 127, 42, NULL, NULL);
INSERT INTO public.round VALUES (140, 140, 48, 107, NULL, NULL);
INSERT INTO public.round VALUES (141, 141, 51, 146, NULL, NULL);
INSERT INTO public.round VALUES (142, 142, 107, 134, NULL, NULL);
INSERT INTO public.round VALUES (143, 143, 106, 83, NULL, NULL);
INSERT INTO public.round VALUES (144, 144, 89, 37, NULL, NULL);
INSERT INTO public.round VALUES (145, 145, 84, 30, NULL, NULL);
INSERT INTO public.round VALUES (146, 146, 77, 59, NULL, NULL);
INSERT INTO public.round VALUES (147, 147, 129, 143, NULL, NULL);
INSERT INTO public.round VALUES (148, 148, 4, 63, NULL, NULL);
INSERT INTO public.round VALUES (149, 149, 111, 15, NULL, NULL);
INSERT INTO public.round VALUES (150, 150, 140, 17, NULL, NULL);
INSERT INTO public.round VALUES (151, 151, 50, 64, NULL, NULL);
INSERT INTO public.round VALUES (152, 152, 107, 62, NULL, NULL);
INSERT INTO public.round VALUES (153, 153, 27, 39, NULL, NULL);
INSERT INTO public.round VALUES (154, 154, 12, 88, NULL, NULL);
INSERT INTO public.round VALUES (155, 155, 85, 140, NULL, NULL);
INSERT INTO public.round VALUES (156, 156, 31, 137, NULL, NULL);
INSERT INTO public.round VALUES (157, 157, 81, 5, NULL, NULL);
INSERT INTO public.round VALUES (158, 158, 34, 64, NULL, NULL);
INSERT INTO public.round VALUES (159, 159, 37, 62, NULL, NULL);
INSERT INTO public.round VALUES (160, 160, 137, 58, NULL, NULL);
INSERT INTO public.round VALUES (161, 161, 86, 131, NULL, NULL);
INSERT INTO public.round VALUES (162, 162, 112, 134, NULL, NULL);
INSERT INTO public.round VALUES (163, 163, 100, 21, NULL, NULL);
INSERT INTO public.round VALUES (164, 164, 44, 98, NULL, NULL);
INSERT INTO public.round VALUES (165, 165, 115, 82, NULL, NULL);
INSERT INTO public.round VALUES (166, 166, 118, 93, NULL, NULL);
INSERT INTO public.round VALUES (167, 167, 89, 82, NULL, NULL);
INSERT INTO public.round VALUES (168, 168, 55, 114, NULL, NULL);


--
-- Data for Name: torneio; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.torneio VALUES (1, 'Torneio da UFMS');
INSERT INTO public.torneio VALUES (2, 'Torneio da UNICAMP');
INSERT INTO public.torneio VALUES (3, 'Torneio do Terrinha - Santo Amaro');


--
-- Data for Name: treinador; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.treinador VALUES ('Ash Ketchum', 0, 999);
INSERT INTO public.treinador VALUES ('João Pedro', 1, 350);
INSERT INTO public.treinador VALUES ('Maycon Felipe', 2, 200);
INSERT INTO public.treinador VALUES ('Vítor Oliveira', 3, 275);
INSERT INTO public.treinador VALUES ('Marcio', 4, 100);
INSERT INTO public.treinador VALUES ('Baianinho de Mauá', 5, 717);
INSERT INTO public.treinador VALUES ('Cleitão', 6, 908);
INSERT INTO public.treinador VALUES ('David Costa', 7, 260);
INSERT INTO public.treinador VALUES ('Malik Freitas', 8, 342);
INSERT INTO public.treinador VALUES ('Tiger dos Santos', 9, 562);
INSERT INTO public.treinador VALUES ('Guinevere Bastos', 10, 438);
INSERT INTO public.treinador VALUES ('Debra Lemos', 11, 722);
INSERT INTO public.treinador VALUES ('Nathan Moraes', 12, 9);
INSERT INTO public.treinador VALUES ('Scarlett Bezerra', 13, 674);
INSERT INTO public.treinador VALUES ('Chancellor de Araujo', 14, 243);
INSERT INTO public.treinador VALUES ('Rinah Cunha', 15, 68);
INSERT INTO public.treinador VALUES ('Mufutau Das Gracas', 16, 33);
INSERT INTO public.treinador VALUES ('Nelle de Santana', 17, 483);
INSERT INTO public.treinador VALUES ('Benjamin Andrade', 18, 403);
INSERT INTO public.treinador VALUES ('Finn Pereira', 19, 947);
INSERT INTO public.treinador VALUES ('Addison Mendes', 20, 47);
INSERT INTO public.treinador VALUES ('Madeson Henrique', 21, 72);
INSERT INTO public.treinador VALUES ('Akeem Inacio', 22, 422);
INSERT INTO public.treinador VALUES ('Jaquelyn de Barros', 23, 267);
INSERT INTO public.treinador VALUES ('Jailson Mendes', 24, 26);
INSERT INTO public.treinador VALUES ('Vernon Bento', 25, 646);
INSERT INTO public.treinador VALUES ('Jasmine Campos', 26, 167);
INSERT INTO public.treinador VALUES ('Cody Pinto', 27, 366);
INSERT INTO public.treinador VALUES ('Justina Gomes', 28, 343);
INSERT INTO public.treinador VALUES ('Bell Galdino', 29, 416);
INSERT INTO public.treinador VALUES ('Cade de Araujo', 30, 129);
INSERT INTO public.treinador VALUES ('Nathaniel dos Santos', 31, 824);
INSERT INTO public.treinador VALUES ('Ronan de Andrade', 32, 285);
INSERT INTO public.treinador VALUES ('Jocelyn Neves', 33, 639);
INSERT INTO public.treinador VALUES ('Signe Firmino', 34, 827);
INSERT INTO public.treinador VALUES ('Alec Franca', 35, 710);
INSERT INTO public.treinador VALUES ('Keefe Moura', 36, 351);
INSERT INTO public.treinador VALUES ('Veda de Castro', 37, 717);
INSERT INTO public.treinador VALUES ('Allegra de Souza', 38, 441);
INSERT INTO public.treinador VALUES ('Nero Magalhaes', 39, 641);
INSERT INTO public.treinador VALUES ('Judith Franco', 40, 962);
INSERT INTO public.treinador VALUES ('Shad Pacheco', 41, 660);
INSERT INTO public.treinador VALUES ('Vincent Aparecido', 42, 161);
INSERT INTO public.treinador VALUES ('Wing Correia', 43, 944);
INSERT INTO public.treinador VALUES ('Tyler Monteiro', 44, 449);
INSERT INTO public.treinador VALUES ('Walter Macedo', 45, 586);
INSERT INTO public.treinador VALUES ('Cassandra de Souza', 46, 534);
INSERT INTO public.treinador VALUES ('Brenden Firmino', 47, 880);
INSERT INTO public.treinador VALUES ('Gay Bezerra', 48, 321);
INSERT INTO public.treinador VALUES ('Dolan Vaz', 49, 786);
INSERT INTO public.treinador VALUES ('Aquila Silveira', 50, 339);
INSERT INTO public.treinador VALUES ('Nelle Reis', 51, 424);
INSERT INTO public.treinador VALUES ('Igor Leal', 52, 567);
INSERT INTO public.treinador VALUES ('Chadwick Carvalho', 53, 328);
INSERT INTO public.treinador VALUES ('Garth Garcia', 54, 240);
INSERT INTO public.treinador VALUES ('Cody Bento', 55, 816);
INSERT INTO public.treinador VALUES ('Yvonne Cavalcante', 56, 851);
INSERT INTO public.treinador VALUES ('Uta Sántos', 57, 337);
INSERT INTO public.treinador VALUES ('Zachery Lemos', 58, 750);
INSERT INTO public.treinador VALUES ('Rana Pacheco', 59, 426);
INSERT INTO public.treinador VALUES ('Eric Torres', 60, 837);
INSERT INTO public.treinador VALUES ('Wallace Fernandes', 61, 195);
INSERT INTO public.treinador VALUES ('Benjamin Marinho', 62, 108);
INSERT INTO public.treinador VALUES ('Nasim Morais', 63, 506);
INSERT INTO public.treinador VALUES ('Kellie Matos', 64, 878);
INSERT INTO public.treinador VALUES ('Jada Barboza', 65, 292);
INSERT INTO public.treinador VALUES ('Patrick de Assis', 66, 210);
INSERT INTO public.treinador VALUES ('Georgia Freitas', 67, 758);
INSERT INTO public.treinador VALUES ('Glenna Matos', 68, 37);
INSERT INTO public.treinador VALUES ('Luke Amaral', 69, 626);
INSERT INTO public.treinador VALUES ('Driscoll Pinheiro', 70, 557);
INSERT INTO public.treinador VALUES ('Raven da Luz', 71, 546);
INSERT INTO public.treinador VALUES ('Scott Bastos', 72, 905);
INSERT INTO public.treinador VALUES ('Troy Domingues', 73, 18);
INSERT INTO public.treinador VALUES ('Mercedes da Rocha', 74, 384);
INSERT INTO public.treinador VALUES ('Jesse Siqueira', 75, 950);
INSERT INTO public.treinador VALUES ('Rebekah de Jesus', 76, 83);
INSERT INTO public.treinador VALUES ('Brenda Azevedo', 77, 84);
INSERT INTO public.treinador VALUES ('Harper Fernandes', 78, 576);
INSERT INTO public.treinador VALUES ('Britanney Maciel', 79, 45);
INSERT INTO public.treinador VALUES ('Alec Simoes', 80, 829);
INSERT INTO public.treinador VALUES ('Hayden Teodoro', 81, 153);
INSERT INTO public.treinador VALUES ('Cassandra Inacio', 82, 346);
INSERT INTO public.treinador VALUES ('Idola Torres', 83, 971);
INSERT INTO public.treinador VALUES ('Arden Henrique', 84, 364);
INSERT INTO public.treinador VALUES ('Ina Borges', 85, 144);
INSERT INTO public.treinador VALUES ('Kellie Ramos', 86, 637);
INSERT INTO public.treinador VALUES ('Cairo Coutinho', 87, 935);
INSERT INTO public.treinador VALUES ('Aristotle Pinto', 88, 868);
INSERT INTO public.treinador VALUES ('Kaitlin Almeida', 89, 459);
INSERT INTO public.treinador VALUES ('Virginia Domingos', 90, 170);
INSERT INTO public.treinador VALUES ('Hasad Mendonca', 91, 844);
INSERT INTO public.treinador VALUES ('Ira Souza', 92, 676);
INSERT INTO public.treinador VALUES ('Kimberley de Moraes', 93, 248);
INSERT INTO public.treinador VALUES ('Karly de Moura', 94, 357);
INSERT INTO public.treinador VALUES ('Herman Santos', 95, 636);
INSERT INTO public.treinador VALUES ('Norman Santos', 96, 828);
INSERT INTO public.treinador VALUES ('Lee Vasconcelos', 97, 983);
INSERT INTO public.treinador VALUES ('Rahim Nascimento', 98, 893);
INSERT INTO public.treinador VALUES ('Harper de Jesus', 99, 197);
INSERT INTO public.treinador VALUES ('Kennedy Dutra', 100, 772);
INSERT INTO public.treinador VALUES ('Adria Souza', 101, 478);
INSERT INTO public.treinador VALUES ('Zenaida Carvalho', 102, 724);
INSERT INTO public.treinador VALUES ('Xenos Monteiro', 103, 855);
INSERT INTO public.treinador VALUES ('Arsenio Candido', 104, 321);
INSERT INTO public.treinador VALUES ('Flynn Evangelista', 105, 461);
INSERT INTO public.treinador VALUES ('Zelenia de Fatima', 106, 80);
INSERT INTO public.treinador VALUES ('Jamal Fagundes', 107, 378);
INSERT INTO public.treinador VALUES ('Reese Sousa', 108, 109);
INSERT INTO public.treinador VALUES ('Guinevere da Cunha', 109, 97);
INSERT INTO public.treinador VALUES ('Yardley Pinheiro', 110, 518);
INSERT INTO public.treinador VALUES ('Ferdinand Neves', 111, 916);
INSERT INTO public.treinador VALUES ('Graiden Morais', 112, 69);
INSERT INTO public.treinador VALUES ('Brody Barbosa', 113, 56);
INSERT INTO public.treinador VALUES ('Christian Farias', 114, 998);
INSERT INTO public.treinador VALUES ('Aurelia Vaz', 115, 821);
INSERT INTO public.treinador VALUES ('Shannon Dantas', 116, 90);
INSERT INTO public.treinador VALUES ('Kim Coutinho', 117, 605);
INSERT INTO public.treinador VALUES ('Jasmine Santiago', 118, 864);
INSERT INTO public.treinador VALUES ('Maryam Bueno', 119, 906);
INSERT INTO public.treinador VALUES ('Raven Silveira', 120, 826);
INSERT INTO public.treinador VALUES ('Dominic Gonçalves', 121, 294);
INSERT INTO public.treinador VALUES ('Cora Sales', 122, 622);
INSERT INTO public.treinador VALUES ('Rhona Chaves', 123, 579);
INSERT INTO public.treinador VALUES ('Regan Bispo', 124, 139);
INSERT INTO public.treinador VALUES ('Otto Pereira', 125, 193);
INSERT INTO public.treinador VALUES ('Keegan Chaves', 126, 405);
INSERT INTO public.treinador VALUES ('Vera Rezende', 127, 33);
INSERT INTO public.treinador VALUES ('Hamilton Mendes', 128, 507);


--
-- Data for Name: treinador_batalha; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: turno; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.turno VALUES (54, true, true, 17, 39, 3, 63, 6, NULL, NULL, NULL);
INSERT INTO public.turno VALUES (62, false, true, 74, 47, 56, 156, 164, NULL, NULL, NULL);
INSERT INTO public.turno VALUES (92, false, false, 91, 23, 112, 162, 107, NULL, NULL, NULL);
INSERT INTO public.turno VALUES (109, true, true, 8, 17, 151, 22, 3, NULL, NULL, NULL);
INSERT INTO public.turno VALUES (138, false, true, 22, 73, 43, 152, 89, NULL, NULL, NULL);
INSERT INTO public.turno VALUES (150, false, false, 68, 97, 146, 55, 115, NULL, NULL, NULL);
INSERT INTO public.turno VALUES (156, false, true, 77, 15, 78, 60, 8, NULL, NULL, NULL);
INSERT INTO public.turno VALUES (135, false, false, 61, 15, 42, 145, 29, NULL, NULL, NULL);


--
-- Name: batalha batalha_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.batalha
    ADD CONSTRAINT batalha_id_key UNIQUE (id);


--
-- Name: batalha batalha_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.batalha
    ADD CONSTRAINT batalha_pkey PRIMARY KEY (id);


--
-- Name: habilidade habilidade_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.habilidade
    ADD CONSTRAINT habilidade_pkey PRIMARY KEY (id);


--
-- Name: instancia_pokemon instancia_pokemon_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instancia_pokemon
    ADD CONSTRAINT instancia_pokemon_pkey PRIMARY KEY (id_instancia);


--
-- Name: pokebola pokebola_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pokebola
    ADD CONSTRAINT pokebola_pkey PRIMARY KEY (id);


--
-- Name: pokemon_habilidade pokemon_habilidade_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pokemon_habilidade
    ADD CONSTRAINT pokemon_habilidade_pkey PRIMARY KEY (id_pokemon_habilidade);


--
-- Name: pokemon pokemon_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (id_pokemon);


--
-- Name: round round_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.round
    ADD CONSTRAINT round_pkey PRIMARY KEY (id);


--
-- Name: torneio torneio_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.torneio
    ADD CONSTRAINT torneio_pkey PRIMARY KEY (id);


--
-- Name: treinador_batalha treinador_batalha_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.treinador_batalha
    ADD CONSTRAINT treinador_batalha_pkey PRIMARY KEY (id_treinador_batalha);


--
-- Name: treinador treinador_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.treinador
    ADD CONSTRAINT treinador_pkey PRIMARY KEY (id);


--
-- Name: turno turno_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.turno
    ADD CONSTRAINT turno_pkey PRIMARY KEY (id_turno);


--
-- Name: turno fk_habilidade_pokemon_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.turno
    ADD CONSTRAINT fk_habilidade_pokemon_1 FOREIGN KEY (habilidade_pokemon_1) REFERENCES public.pokemon_habilidade(id_pokemon_habilidade);


--
-- Name: turno fk_habilidade_pokemon_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.turno
    ADD CONSTRAINT fk_habilidade_pokemon_2 FOREIGN KEY (habilidade_pokemon_2) REFERENCES public.pokemon_habilidade(id_pokemon_habilidade);


--
-- Name: instancia_pokemon fk_instancia_pokemon_pokemon; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instancia_pokemon
    ADD CONSTRAINT fk_instancia_pokemon_pokemon FOREIGN KEY (fk_pokebola_id) REFERENCES public.pokebola(id);


--
-- Name: pokemon_habilidade fk_pokemon_habilidade_pokemon; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pokemon_habilidade
    ADD CONSTRAINT fk_pokemon_habilidade_pokemon FOREIGN KEY (fk_habilidade_id) REFERENCES public.habilidade(id);


--
-- Name: pokemon_habilidade fk_pokemon_numero_pokedex; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pokemon_habilidade
    ADD CONSTRAINT fk_pokemon_numero_pokedex FOREIGN KEY (fk_pokemon_numero_pokedex) REFERENCES public.pokemon(id_pokemon);


--
-- Name: batalha fk_torneio_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.batalha
    ADD CONSTRAINT fk_torneio_id FOREIGN KEY (fk_torneio_id) REFERENCES public.torneio(id);


--
-- Name: treinador_batalha fk_treinador_batalha_batalha_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.treinador_batalha
    ADD CONSTRAINT fk_treinador_batalha_batalha_id FOREIGN KEY (fk_batalha_id) REFERENCES public.batalha(id);


--
-- Name: treinador_batalha fk_treinador_batalha_treinador_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.treinador_batalha
    ADD CONSTRAINT fk_treinador_batalha_treinador_id FOREIGN KEY (fk_treinador_id) REFERENCES public.treinador(id);


--
-- Name: pokebola fk_treinador_pokebola; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pokebola
    ADD CONSTRAINT fk_treinador_pokebola FOREIGN KEY (fk_treinador_id) REFERENCES public.treinador(id);


--
-- Name: turno fk_turno_round; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.turno
    ADD CONSTRAINT fk_turno_round FOREIGN KEY (fk_round_id) REFERENCES public.round(id);


--
-- Name: round round_fk_batalha_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.round
    ADD CONSTRAINT round_fk_batalha_id_fkey FOREIGN KEY (fk_batalha_id) REFERENCES public.batalha(id);


--
-- Name: round round_fk_instancia_pokemon_id_1_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.round
    ADD CONSTRAINT round_fk_instancia_pokemon_id_1_fkey FOREIGN KEY (fk_instancia_pokemon_id_1) REFERENCES public.instancia_pokemon(id_instancia);


--
-- Name: round round_fk_instancia_pokemon_id_2_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.round
    ADD CONSTRAINT round_fk_instancia_pokemon_id_2_fkey FOREIGN KEY (fk_instancia_pokemon_id_2) REFERENCES public.instancia_pokemon(id_instancia);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: -
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


--
-- PostgreSQL database dump complete
--


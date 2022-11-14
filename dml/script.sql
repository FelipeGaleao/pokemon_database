CREATE DATABASE [PokemonDB];
GO
USE [PokemonDB];
GO


-- Path: dml\script.sql

-- relacionamento:   CONSTRAINT fk_author FOREIGN KEY(author_id) REFERENCES author(id)

-- Criar tabela Pokemon
CREATE TABLE pokemon(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    altura FLOAT NOT NULL,
    peso FLOAT NOT NULL,
    numero_pokedex INT NOT NULL,
    hp FLOAT NOT NULL,
    ataque FLOAT NOT NULL,
    defesa FLOAT NOT NULL,
    ataque_especial FLOAT NOT NULL,
    defesa_especial FLOAT NOT NULL,
    tipo_1 VARCHAR(50) NOT NULL,
    tipo_2 VARCHAR(50) NULL,
    velocidade FLOAT NOT NULL,
    habilidade VARCHAR(50) NOT NULL
)

-- Criar tabela treinador 
CREATE TABLE treinador(
    nome VARCHAR(50) NOT NULL,
    id INT PRIMARY KEY NOT NULL,
    xp INT NOT NULL
)

-- Criar tabela pokebola
CREATE TABLE pokebola(
    nivel_de_forca VARCHAR(50) NOT NULL,
    id INT PRIMARY KEY NOT NULL,
    id_pokemon INT NOT NULL,
    id_treinador INT NOT NULL,
    CONSTRAINT id_pokemon FOREIGN KEY(id_pokemon) REFERENCES pokemon(id),
    CONSTRAINT id_treinador FOREIGN KEY(id_treinador) REFERENCES treinador(id)
)

-- Criar tabela Habilidades
CREATE TABLE habilidades(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(50) NOT NULL,
    dano float NOT NULL,
    id_pokemon INT NOT NULL,
    CONSTRAINT fk_habilidade_pokemon FOREIGN KEY(id_pokemon) REFERENCES pokemon(id)
)

-- Criar tabela Pokemon_Habilidades
CREATE TABLE pokemon_habilidades(
    id_pokemon INT NOT NULL,
    id_habilidade INT NOT NULL,
    CONSTRAINT fk_pokemon_habilidades_pokemon FOREIGN KEY(id_pokemon) REFERENCES pokemon(id),
    CONSTRAINT fk_pokemon_habilidades_habilidade FOREIGN KEY(id_habilidade) REFERENCES habilidades(id)
)

-- Criar tabela Evolucao
CREATE TABLE evolucao(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    id_pokemon INT NOT NULL,
    CONSTRAINT fk_evolucao_pokemon FOREIGN KEY(id_pokemon) REFERENCES pokemon(id)
)

-- Criar tabela Torneio
CREATE TABLE torneio(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
)

-- Criar tabela Torneio_Batalha

CREATE TABLE torneio_batalha(
    id_torneio INT NOT NULL,
    id_batalha INT NOT NULL,
    CONSTRAINT fk_torneio_batalha_torneio FOREIGN KEY(id_torneio) REFERENCES torneio(id),
    CONSTRAINT fk_torneio_batalha_batalha FOREIGN KEY(id_batalha) REFERENCES batalha(id)
)

-- Criar tabela Batalha
CREATE TABLE batalha(
    id SERIAL PRIMARY KEY,
    treinador_1 INT NOT NULL,
    treinador_2 INT NOT NULL,
    pokemon_1 INT NOT NULL,
    pokemon_2 INT NOT NULL,
    CONSTRAINT fk_batalha_treinador_1 FOREIGN KEY(treinador_1) REFERENCES treinador(id),
    CONSTRAINT fk_batalha_treinador_2 FOREIGN KEY(treinador_2) REFERENCES treinador(id),
)

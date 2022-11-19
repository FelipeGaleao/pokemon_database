/* Lógico_1: */

CREATE TABLE treinador (
    nome VARCHAR,
    id INTEGER PRIMARY KEY,
    xp INTEGER
);

CREATE TABLE pokemon (
    nome VARCHAR,
    altura FLOAT,
    peso FLOAT,
    hp INTEGER,
    ataque INTEGER,
    defesa INTEGER,
    ataque_especial INTEGER,
    defesa_especial INTEGER,
    velocidade FLOAT,
    tipo_1 VARCHAR,
    tipo_2 VARCHAR,
    numero_pokedex INTEGER PRIMARY KEY,
    fk_pokebola_id INTEGER
);

CREATE TABLE batalha (
    id INTEGER PRIMARY KEY
);

CREATE TABLE evolucao (
    pokemon_npokedex_evolucao INTEGER,
    fk_pokemon_npokedex_atual INTEGER
);

CREATE TABLE instancia_pokemon (
    id_instancia INTEGER PRIMARY KEY,
    fk_pokemon_numero_pokedex INTEGER
);

CREATE TABLE torneio (
    nome VARCHAR
);

CREATE TABLE round (
    id INTEGER,
    fk_batalha_id INTEGER,
    fk_instancia_pokemon_id_1 INTEGER,
    fk_instancia_pokemon_id_2 INTEGER,
    PRIMARY KEY (id, fk_instancia_pokemon_id_1, fk_instancia_pokemon_id_2)
);

CREATE TABLE turno (
    escudo_1_uso BOOLEAN,
    escudo_2_uso BOOLEAN,
    dano_causado_pokemon_1 INTEGER,
    dano_causado_pokemon_2 INTEGER,
    habilidade_pokemon_1 INTEGER,
    habilidade_pokemon_2 VARCHAR,
    fk_round_id INTEGER
);

CREATE TABLE habilidade (
    id INTEGER PRIMARY KEY,
    nome VARCHAR,
    descricao VARCHAR,
    dano INTEGER
);

CREATE TABLE pokebola (
    nivel_de_forca VARCHAR,
    id INTEGER PRIMARY KEY,
    fk_treinador_id INTEGER
);

CREATE TABLE pokemon_habilidade (
    fk_pokemon_numero_pokedex INTEGER,
    fk_habilidade_id INTEGER
);

CREATE TABLE treinador_batalha (
    fk_treinador_id INTEGER,
    fk_batalha_id INTEGER
);
 
ALTER TABLE pokemon ADD CONSTRAINT FK_pokemon_2
    FOREIGN KEY (fk_pokebola_id)
    REFERENCES pokebola (id)
    ON DELETE CASCADE;
 
ALTER TABLE evolucao ADD CONSTRAINT FK_evolucao_1
    FOREIGN KEY (fk_pokemon_npokedex_atual)
    REFERENCES pokemon (numero_pokedex)
    ON DELETE CASCADE;
 
ALTER TABLE instancia_pokemon ADD CONSTRAINT FK_instancia_pokemon_2
    FOREIGN KEY (fk_pokemon_numero_pokedex)
    REFERENCES pokemon (numero_pokedex)
    ON DELETE RESTRICT;
 
ALTER TABLE round ADD CONSTRAINT FK_round_2
    FOREIGN KEY (fk_batalha_id)
    REFERENCES batalha (id)
    ON DELETE RESTRICT;
 
ALTER TABLE round ADD CONSTRAINT FK_round
    FOREIGN KEY (fk_instancia_pokemon_id_1, fk_instancia_pokemon_id_2, fk_instancia_pokemon_id_2)
    REFERENCES instancia_pokemon (id_instancia, id_instancia, id_instancia);
 
ALTER TABLE turno ADD CONSTRAINT FK_turno
    FOREIGN KEY (fk_round_id, habilidade_pokemon_1, habilidade_pokemon_2)
    REFERENCES round (id, habilidade_pokemon_1, habilidade_pokemon_2)
    ON DELETE RESTRICT;
 
ALTER TABLE pokebola ADD CONSTRAINT FK_pokebola_2
    FOREIGN KEY (fk_treinador_id)
    REFERENCES treinador (id)
    ON DELETE CASCADE;
 
ALTER TABLE pokemon_habilidade ADD CONSTRAINT FK_pokemon_habilidade_1
    FOREIGN KEY (fk_pokemon_numero_pokedex)
    REFERENCES pokemon (numero_pokedex)
    ON DELETE RESTRICT;
 
ALTER TABLE pokemon_habilidade ADD CONSTRAINT FK_pokemon_habilidade_2
    FOREIGN KEY (fk_habilidade_id)
    REFERENCES habilidade (id)
    ON DELETE RESTRICT;
 
ALTER TABLE treinador_batalha ADD CONSTRAINT FK_treinador_batalha_1
    FOREIGN KEY (fk_treinador_id)
    REFERENCES treinador (id)
    ON DELETE RESTRICT;
 
ALTER TABLE treinador_batalha ADD CONSTRAINT FK_treinador_batalha_2
    FOREIGN KEY (fk_batalha_id)
    REFERENCES batalha (id)
    ON DELETE SET NULL;

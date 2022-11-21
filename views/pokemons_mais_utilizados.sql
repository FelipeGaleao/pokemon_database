create
or replace view pokemons_mais_utilizados_2 as
SELECT
    count(*) AS count,
    pokemon.nome
FROM
    (
        (
            SELECT
                round.fk_instancia_pokemon_id_1 AS pokemon_id
            FROM
                round
            UNION
            SELECT
                round.fk_instancia_pokemon_id_2 AS pokemon_id
            FROM
                round
        ) pokemons_usados
        JOIN pokemon ON (
            (pokemon.id_pokemon = pokemons_usados.pokemon_id)
        )
    )
GROUP BY
    pokemon.nome;
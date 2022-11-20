CREATE OR REPLACE FUNCTION evoluir(pok_inst_id integer)
RETURNS void
as
$$
update instancia_pokemon
set fk_pokemon_numero_pokedex =(select numero_pokedex from pokemon
inner join evolucao
on pokemon.numero_pokedex = evolucao.pokemon_npokedex_evolucao
where instancia_pokemon.fk_pokemon_numero_pokedex = pokemon.numero_pokedex
and instancia_pokemon.id_instancia = pok_inst_id)
where instancia_pokemon.id_instancia = pok_inst_id
$$
LANGUAGE SQL;
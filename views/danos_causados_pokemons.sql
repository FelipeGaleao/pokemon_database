create
or replace view danos_causados_pokemons as
select
    sum(dano_causado) as total_dano,
    nome
from
    (
        select
            rounds.dano_causado_pokemon_1 as dano_causado,
            t.nome
        from
            (
                select
                    r.id as round_id,
                    r.fk_batalha_id as round_batalha_id,
                    b.id as batalha_id,
                    turno.dano_causado_pokemon_1,
                    turno.dano_causado_pokemon_2
                from
                    round r
                    inner join turno on r.id = turno.fk_round_id
                    inner join batalha b on r.fk_batalha_id = b.id
            ) rounds
            inner join treinador_batalha tb on tb.fk_batalha_id = rounds.batalha_id
            inner join treinador t on tb.fk_treinador_id = t.id
        union
        select
            rounds.dano_causado_pokemon_2 as dano_causado,
            t.nome
        from
            (
                select
                    r.id as round_id,
                    r.fk_batalha_id as round_batalha_id,
                    b.id as batalha_id,
                    turno.dano_causado_pokemon_1,
                    turno.dano_causado_pokemon_2
                from
                    round r
                    inner join turno on r.id = turno.fk_round_id
                    inner join batalha b on r.fk_batalha_id = b.id
            ) rounds
            inner join treinador_batalha tb on tb.fk_batalha_id = rounds.batalha_id
            inner join treinador t on tb.fk_treinador_id = t.id
    ) danos_totais
group by
    nome
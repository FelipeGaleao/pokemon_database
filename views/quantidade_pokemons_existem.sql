create or replace view quantidade_pokemons_tipos as 
select count(tipo) as qtde_tipos_pokemons, tipo from (

select tipo_1 as tipo from pokemon p 
union all
select tipo_2 as tipo from pokemon p 

) tipos

group by tipo
order by qtde_tipos_pokemons desc
/*create table vendas(id_vendas serial primary key,
				   produto varchar(50) not null,
				   valor_venda numeric);
				  
insert into vendas(produto, valor_venda) values
('Camiseta', 24.99),
('Calça Jeans', 145.99),
('Sapato', 300.99),
('Blusa', 33.99),
('Tênis', 224.99),
('Chinelo', 29.99),
('Camisa Dri-Fit', 44.99);

select
case
    when produto = 'Camiseta' then 'Vestuário'
	when produto = 'Calça Jeans' then 'Vestuário'
	when produto = 'Blusa' then 'Vestuário'
	when produto = 'Camisa Dri-Fit' then 'Vestuário'
	else 'Calçado'
end as categoria,
sum(valor_venda) as total_venda from vendas
group by categoria; 

create table notas(id_aluno serial primary key,
				  nome varchar(100),
				  nota1 numeric,
				  nota2 numeric);
				  
insert into notas(nome,nota1,nota2) values
('Luis Filipe', 8.5, 9.8),
('Patrick', 7.4, 8.8),
('Gustavo', 6.5, 7.8),
('Luana', 7.25, 9.6),
('Lucas', 10, 8.8),
('Marcos Antônio', 4.4, null),
('Misael', null, 8.7),
('Pedro', null, 7.6),
('Elias', null, 5.6);

select nome, round(avg((nota1+nota2)/2),1) as media_notas from notas
group by nome;

create table oil(region text, country text,
				year int, production int, consumption int);
				
select null, avg(production) from oil
union
select region, avg(production) from oil group by region;

select region, avg(production) from oil group by rollup(region);

select region, country, avg(production) from oil
where country in('USA','Canada','Iran','Oman')
group by rollup (region,country);*/

select region, avg(production) as all,
avg(production) filter (where year < 1990) as old,
avg(production) filter (where year >= 1990) as new
from oil 
group by rollup (region);
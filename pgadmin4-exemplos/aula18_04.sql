-- create table categoria(id_categoria serial primary key,
-- 					  descricao varchar(50));

-- create table if not exists produto(id_produto serial primary key,
-- 								  nome varchar(60), preco numeric,
-- 								  id_categoria int,
-- 								  foreign key(id_categoria) references categoria(id_categoria));

-- insert into categoria(descricao) values('Eletrônicos'),
-- ('Vestuário'),
-- ('Farmácia'),
-- ('Eletrodoméstios');

-- insert into produto(nome,preco,id_categoria) values('Samsung Galaxy S22',2499.49,1),
-- ('Smart Tv Samsung 43',2299.89,1),
-- ('Calça High Co.',174.99,2),
-- ('Camisa Hocks Monterreal', 59.99,2),
-- ('Tênis Nike Tn Plus', 998.99,2),
-- ('Geladeira Brastemp', 3600.00,3),
-- ('Fogão Industrial Mondial', 2599.99,3);

-- select c.descricao, round(avg(p.preco),2) as media_preco from produto p
-- inner join categoria c on c.id_categoria = p.id_categoria
-- group by c.id_categoria

-- select p.nome, c.descricao, round(avg(p.preco) over (partition by c.descricao),2) as media_preco 
-- from categoria c
-- inner join produto p on c.id_categoria = p.id_categoria

-- select p.nome as produto, p.preco, c.descricao, rank()
-- over (partition by c.descricao order by preco desc) preco_ranking
-- from produto p
-- inner join categoria c on c.id_categoria = p.id_categoria

-- create temp table usuario(id serial primary key,
-- 						 nome varchar(60));
						 
-- insert into usuario(nome) values('MARIA'),('ANA');

-- begin work;
--   create temp table temp_setor( id serial primary key,
-- 							  nome varchar(50) not null);
-- insert into temp_setor(nome) values('teste');
-- end;

select * from temp_setor


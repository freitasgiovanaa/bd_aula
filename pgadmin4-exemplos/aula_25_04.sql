-- create table vendas(order_id int,customer_id varchar(20),  |>|>|>|
-- 					product_departament varchar(200),         |>|>|>|
-- 					product_brand varchar(50),                |>|>|>|
-- 					order_value numeric, order_date date)     |>|>|>|
-- partition by range (order_date);                           |>|>|>|
--                                                            |>|>|>|
--                                                            |>|>|>|

-- create table vendas_2024 partition of vendas
-- for values from ('2024-01-01') to ('2024-12-31');

-- insert into vendas(order_id,customer_id,product_departament,
--                   product_brand,order_value,order_date)
-- values(123456,'309090','Brinquedos','Estrela',90,'2023-03-10');

-- copy vendas(order_id,customer_id,product_departament,
--            product_brand,order_value,order_date)
-- from '/temp/tbl_orders.csv' with delimiter as ';'
-- csv header;

-- create table carro(id serial primary key,
-- 				  modelo varchar(100)unique);

-- insert into carro(modelo) values('Gol G3'),('Siena'),('HB20'),('Sandero'),('Polo'),('Fiesta'),('Palio');

-- create table manutencao(id serial primary key,
-- 					   tipo varchar(200), valor numeric,
-- 					   data date,
-- 					   id_carro int,
-- 					   foreign key (id_carro) references carro(id));

-- INSERT INTO manutencao(tipo,data,valor,id_carro)
-- VALUES('Troca de Óleo','2024-03-22',1000,2),
-- ('Troca de Filtro','2024-03-22',100,2),
-- ('Alinhamento','2024-03-19',80,1),
-- ('Balanceamento','2024-03-10',35,1),
-- ('Troca de velas','2024-03-11',200,3),
-- ('Troca de Óleo','2024-04-15',220,4);


-- select c.modelo, m.tipo, m.data, m.valor from manutencao m
-- inner join carro c on c.id = m.id_carro

-- select tipo, round(avg(valor),2) from manutencao
-- group by tipo

select c.modelo,count(m.tipo) from manutencao m
inner join carro c on c.id = m.id_carro
group by c.modelo 
having count(*) > 1;

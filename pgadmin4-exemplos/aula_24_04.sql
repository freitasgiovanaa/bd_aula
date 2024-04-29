-- create table alunos(id serial primary key,
-- 				   nome varchar(100),
-- 				   nota1 numeric(4,2),
-- 				   nota2 numeric(4,2),
-- 				   media numeric(4,2)
-- 				   generated always as((nota1 + nota2)/2) STORED);

-- insert into alunos(nome,nota1,nota2) values
-- ('Luis', 8, 9),
-- ('Maria Roberta', 7, 8),
-- ('Joana Cabeção', 7, 6),
-- ('Maria Julia', 6, 5);


-- create table folha_pagamento(nome varchar(90),
-- 							salario_bruto numeric(6,2),
-- 							inss numeric(6,2)
-- 							generated always as (salario_bruto * 11/100) stored,
-- 							vale_transporte numeric(6,2)
-- 							generated always as (salario_bruto * 6/100) stored,
-- 							salario_liquido numeric(6,2)
-- 							generated always as (salario_bruto - (salario_bruto * 11/100) - (salario_bruto * 6/100) ) stored);

-- insert into folha_pagamento(nome,salario_bruto) values
-- ('Kevin', 7560.75),
-- ('Luis', 5565.65);

-- create table setor(id serial primary key,
-- 				  nome varchar(40) unique not null);

-- insert into setor(nome) values('RH'),
-- ('DP'), ('TI'), ('Financeiro'), ('Marketing');

-- select * from setor where (id=1 or id=3);

-- create table conta_corrente(id serial primary key,
-- 						   nome varchar(50));
						   
-- insert into conta_corrente(nome) values
-- ('Carla'),('Arthur'),('Alberto'),('Mariana'),('Luis');

-- create table transacao(id serial primary key,
-- 					  valor numeric, tipo varchar(20),
-- 					  id_conta_corrente int,
-- 					  foreign key(id_conta_corrente) references conta_corrente(id));

-- insert into transacao(valor,tipo,id_conta_corrente) values(1000,'Saque',1),
-- (600,'Depósito',1), (2000,'Depósito',2),(500,'Depósito',3);

-- select c.nome from conta_corrente c
-- where not exists(select t.id_conta_corrente from transacao t
-- 				where t.id_conta_corrente = c.id);

-- create table costumer(id serial primary key,
-- 					 name varchar(60),
-- 					 email varchar(50)Unique);

-- insert into customer(name,email) 
-- values('Michael', 'm@gmail.com'),('Peter','p@gmail.com'),('Mike', 'mike@gmail.com');

-- create table supplier(id serial primary key,
-- 					 name varchar(60), email varchar(50)unique);

-- insert into supplier(name, email) values('XPTO LTDA', 'x@gmail.com'), ('ABC LTDA','abc@gmail.com'), ('C&C', 'cec@gmail.com');

-- insert into customer(name,email) select name, email from supplier;

select * from customer;





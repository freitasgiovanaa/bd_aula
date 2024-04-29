-- create table escala_trabalho(codigo_funcionario int primary key,
-- 							escala char(3)[]);

-- insert into escala_trabalho(codigo_funcionario, escala) values
-- (1, '{"SEG","TER","QUI"}'),
-- (2, '{"SAB","DOM","QUI"}'),
-- (3, '{"SEX","SAB"}');

-- select codigo_funcionario, escala[2] from escala_trabalho

-- select codigo_funcionario, escala from escala_trabalho
-- where 'QUI' = any(escala);

-- update escala_trabalho set escala = array['TER','QUI','DOM']
-- where codigo_funcionario = 3

-- create table pesquisa(id serial primary key,
-- 					 pergunta text,
-- 					 opcoes varchar(50)[],
-- 					 resposta varchar(50)[]);
					 
-- insert into pesquisa(pergunta, opcoes) values
-- ('Qual seu time favorito?', array['CITY','REAL MADRID','BARCELONA','ARSENAL']),
-- ('Qual banco de dados você trabalha?', array['POSTGRES','ORACLE','DB2','MYSQL']);

-- update pesquisa set resposta = array['POSTGRES'] where id=2;

-- create table usuario(id serial primary key, nome varchar(100), endereco json);

-- insert into usuario(nome,endereco) values('Maria',
-- 							              '{"rua": "Bingen","cidade":"Petrópolis","uf":"RJ"}');

-- insert into usuario(nome,endereco) values('Luis',
-- 							              '{"rua": "Major Sergio","cidade":"Petrópolis","cep":"25675021","uf":"RJ"}');

-- select endereco -> 'cidade' as cidade, endereco -> 'rua' as rua, endereco -> 'cep' as cep from usuario;
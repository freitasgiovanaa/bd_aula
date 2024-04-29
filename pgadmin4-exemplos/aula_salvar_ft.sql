-- create extension citext;

-- create table usuario(id_usuario serial primary key,
-- 					login citext);

-- insert into usuario(login) values('José'),('luis');

-- select login from usuario where login = 'luis'

-- create table tb_emp(id_empregado serial primary key,
-- 					   nome varchar(50),foto OID);

-- insert into tb_emp(nome,foto) values('Luis',
-- 									lo_import('/temp/armazendograo.jpg'));

-- select nome, lo_export(foto,'/temp/armazem.jpg')
-- from tb_emp where nome='Luis';
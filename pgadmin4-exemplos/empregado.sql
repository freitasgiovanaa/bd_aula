/*create table empregado(codigo_empregado int primary key, nome varchar(60) not null, cpf char(11), email varchar(50) unique );

alter table empregado add telefone char(10);

alter table empregado alter column telefone type char(11);

dml (data manipulation language)

insert into empregado(codigo_empregado,nome,cpf,email,telefone) values
(1,'Luis','19765432751','luis@gmail.com','24988765432');
*/
select * from empregado;
/*create table empregado(id_empregado serial primary key,
					  nome varchar(50) not null,
					  email varchar(50) unique not null);

insert into empregado(nome,email) values('Marcos','marcos@hotmail.com'),
                                        ('Ana','ana@hotmail.com'),
                                        ('Bruna','bruna@hotmail.gov.com.br'),
                                        ('Patricia','pat@gmail.com'),
                                        ('Carlos','carlos@senail.com.br');

create table tercerizado(id_tercerizado serial primary key,
						nome varchar(50) not null,
						email varchar(40) not null unique);

insert into terceirizado (nome,email) values('José', 'j@gmail.com'),
								    ('Antônio','antonio@gmail.com'),
								    ('Jorge','jorge@gmail.com'),
								    ('Lucas','lucas@gmail.com');*/
	
select nome from empregado
except
select nome from terceirizado
order by nome desc

								    

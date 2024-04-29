/*create table filme(id_filme serial primary key,
				  titulo varchar(100) not null,
				  ano_lancamento int,
				  genero varchar(50),
				  duracao_minutos int);
				  
insert into filme (titulo,ano_lancamento,genero,duracao_minutos) 
values('Avatar: O Ultimo Mestre do Ar',2005,'Ficção Cientifica',180),
      ('Matrix',2002,'Ficção Cientifica',120),
	  ('Tranformers',2007,'Ficção Cientifica',160),
	  ('Corrida Mortal',2006,'Ação',142),
	  ('Velozes e Furiosos', 2023,'Ação',120),
	  ('Um Sonho Possivel',2009,'Esporte',150);
	  
select titulo, case
    when duracao_minutos < 90 then 'CURTO'
    when duracao_minutos >= 90 and duracao_minutos < 120 then 'MÉDIO'
	else 'LONGO'
end as classificacao_duracao
from filme;

create table pessoa(id_pessoal serial primary key,
				   nome varchar(100),
				   idade int);
				   
insert into pessoa (nome, idade) values
    ('Ana Julia', 18),
    ('José', 12),
    ('Maria', 20),
    ('Paulo', 45),
    ('Carla', 58),
    ('Pedro', 13),
    ('Sofia', 12),
    ('Miguel', 37),
    ('Luana', 21),
    ('Fernando', 35);

select nome, case
    when idade < 18 then 'Menor de Idade'  
    when idade >= 18 and idade < 60 then 'Adulto'
	else 'Idoso'
end as classificacao_idade
from pessoa;

create table compras(id_compras serial primary key,
					quantidade int,
					preco_unitario numeric,
					desconto numeric);
					
					
insert into compras(quantidade,preco_unitario,desconto) values (10,15.50,0),
                                                               (2,32.60, 5),
                                                               (4,25,10),
                                                               (8,10.1, null),
                                                               (1,5.5, null);
															   
select id_compras,preco_unitario,quantidade,desconto, quantidade * preco_unitario - desconto as total from compras;


create table time(id_time serial primary key,
				 nome varchar(90));
				 
create table jogador(id_jogador serial primary key,
					nome varchar(90),
					apelido varchar(40),
					idade int,
					id_time int,
					foreign key (id_time) references time(id_time));
					
insert into time (nome) values ('Flamengo'),
                               ('Vasco da Gama'),
                               ('Botafogo'),
                               ('Fluminense'),
                               ('Bangu');
				
INSERT INTO jogador (nome, apelido, idade, id_time) VALUES
    ('Anderson Luiz de Carvalho', 'Nenê', 32, 2), 
    ('Gabriel Barbosa', 'Gabigol', 32, 1),
    ('Bruno Henrique', 'Speed Wonder', 32, 1), 
    ('Germán Ezequiel Cano', 'Cano', 36, 4),
    ('Lucas Ribamar Lopes', 'Ribamar', 26, 2),
    ('Ramom Celestino Soares', 'Ramom', 21, 5), 
    ('Junior Santos', 'Junior', 31, 3), 
    ('Luiz Henrique', 'Luiz', 26, 3), 
    ('Luiz Fernando Machado da Silva', 'Luiz Fernando', 33, 5), 
    ('John Kennedy', 'Carrasco', 25,4);*/
	
select t.nome, j.id_jogador, j.nome, coalesce(j.apelido, 'Sem apelido') from jogador j
inner join time t on j.id_time = t.id_time;*/
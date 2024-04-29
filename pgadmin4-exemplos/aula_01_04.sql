/*create table Banco(id_bando serial primary key,
                  nome varchar(50)
);

create type est_civil as enum(
'Solteiro','Casado', 'Viuvo', 'Divorciado')

create table Cliente( id_cliente serial primary key,
					  nome varchar(50),
					  telefone char(10),
					  estado_civil est_civil
);

create table Emprestimo(id_emprestimo serial primary key,
					   id_cliente int,
						foreign key (id_cliente) references Cliente(id_cliente),
					   id_banco int,
						foreign key (id_banco) references Banco(id_banco),
					   valor decimal,
					   taxa_juros decimal,
					   numero_parcelas int
);

create table Pagamentos( id_pagamento serial primary key,
					     id_emprestimo int,
					   		foreign key (id_emprestimo) references Emprestimo(id_emprestimo),
						 data_pagamento date,
						 valor_pagamento decimal
);

insert into Banco (nome) values
('Banco do Brasil'),
('Itaú Unibanco'),
('Caixa Econômica Federal'),
('Banco Bradesco'),
('Santander Brasil');

insert into Cliente (nome, telefone, estado_civil)
values
    ('João da Silva', '1122334455', 'Solteiro'),
    ('Maria Oliveira', '9988776655', 'Casado'),
    ('Pedro Santos', '9876543210', 'Divorciado'),
    ('Ana Souza', '9876541230', 'Viuvo'),
    ('Fernanda Pereira', '9658741023', 'Casado'),
    ('Ricardo Gomes', '9147852369', 'Solteiro'),
    ('Carla Almeida', '9325647890', 'Solteiro'),
    ('Marcos Costa', '9876543210', 'Divorciado'),
    ('Juliana Rodrigues', '9258741036', 'Casado'),
    ('Gustavo Lima', '9432157896', 'Solteiro'),
    ('Aline Silva', '9856321478', 'Casado'),
    ('Lucas Pereira', '9236587410', 'Solteiro'),
    ('Camila Oliveira', '9512345678', 'Divorciado'),
    ('Bruno Santos', '9568741230', 'Solteiro'),
    ('Larissa Costa', '9987456321', 'Casado'),
    ('Rodrigo Gonçalves', '9987456320', 'Viuvo'),
    ('Mariana Vieira', '9876543210', 'Divorciado'),
    ('Eduardo Martins', '9658741036', 'Solteiro'),
    ('Patrícia Lima', '9321456987', 'Casado'),
    ('Thiago Almeida', '9874563210', 'Solteiro'),
    ('Vanessa Rodrigues', '9658741023', 'Viuvo'),
    ('Diego Costa', '9568741230', 'Solteiro'),
    ('Tatiane Santos', '9512345678', 'Viuvo'),
    ('Leandro Oliveira', '9432157896', 'Solteiro'),
    ('Carolina Souza', '9325647890', 'Divorciado'),
    ('Vinícius Gomes', '9147852369', 'Solteiro'),
    ('Jessica Lima', '9258741036', 'Casado'),
    ('Gabriel Silva', '9236587410', 'Solteiro'),
    ('Isabela Pereira', '9856321478', 'Divorciado'),
    ('Luciana Oliveira', '9987456321', 'Solteiro'),
    ('Felipe Costa', '9987456320', 'Casado'),
    ('Bianca Gonçalves', '9876543210', 'Solteiro'),
    ('Marcelo Vieira', '9658741036', 'Casado'),
    ('Natália Martins', '9321456987', 'Solteiro'),
    ('Roberto Almeida', '9874563210', 'Solteiro'),
    ('Fernanda Rodrigues', '9658741023', 'Divorciado'),
    ('Daniel Costa', '9568741230', 'Solteiro'),
    ('Luana Santos', '9512345678', 'Casado'),
    ('André Oliveira', '9432157896', 'Solteiro'),
    ('Amanda Souza', '9325647890', 'Viuvo'),
    ('Alexandre Gomes', '9147852369', 'Solteiro'),
    ('Caroline Lima', '9258741036', 'Solteiro'),
    ('Paulo Silva', '9236587410', 'Viuvo'),
    ('Laura Pereira', '9856321478', 'Solteiro'),
    ('Diego Oliveira', '9987456321', 'Divorciado'),
    ('Renata Costa', '9987456320', 'Solteiro'),
    ('Guilherme Gonçalves', '9876543210', 'Solteiro'),
    ('Ana Vieira', '9658741036', 'Casado'),
    ('José Martins', '9321456987', 'Solteiro'),
    ('Raquel Almeida', '9874563210', 'Solteiro'),
    ('Marcela Rodrigues', '9658741023', 'Divorciado'),
    ('Vitor Costa', '9568741230', 'Solteiro'),
    ('Patricia Lima', '9512345678', 'Casado'),
    ('Rafael Oliveira', '9432157896', 'Solteiro'),
    ('Sandra Souza', '9325647890', 'Viuvo'),
    ('Thales Gomes', '9147852369', 'Solteiro');

insert into Pagamentos (id_emprestimo, data_pagamento, valor_pagamento)
values
    (1, '2024-01-05', 500.00),
    (2, '2024-02-10', 750.00),
    (3, '2024-03-15', 1000.00),
    (4, '2024-04-20', 600.00),
    (5, '2024-05-25', 900.00),
    (6, '2024-06-30', 1250.00),
    (7, '2024-07-05', 1500.00),
    (8, '2024-08-10', 1100.00),
    (9, '2024-09-15', 1400.00),
    (10, '2024-10-20', 1750.00),
    (11, '2024-11-25', 2000.00),
    (12, '2024-12-30', 950.00),
    (13, '2025-01-05', 550.00),
    (14, '2025-02-10', 800.00),
    (15, '2025-03-15', 1050.00),
    (16, '2025-04-20', 650.00),
    (17, '2025-05-25', 950.00),
    (18, '2025-06-30', 1300.00),
    (19, '2025-07-05', 1550.00),
    (20, '2025-08-10', 1200.00),
    (21, '2025-09-15', 1450.00),
    (22, '2025-10-20', 1800.00),
    (23, '2025-11-25', 2050.00),
    (24, '2025-12-30', 1000.00),
    (25, '2026-01-05', 600.00),
    (26, '2026-02-10', 850.00),
    (27, '2026-03-15', 1100.00),
    (28, '2026-04-20', 700.00),
    (29, '2026-05-25', 1000.00),
    (30, '2026-06-30', 1350.00),
    (31, '2026-07-05', 1600.00),
    (32, '2026-08-10', 1250.00),
    (33, '2026-09-15', 1500.00),
    (34, '2026-10-20', 1850.00),
    (35, '2026-11-25', 2100.00),
    (36, '2026-12-30', 1050.00),
    (37, '2027-01-05', 650.00),
    (38, '2027-02-10', 900.00),
    (39, '2027-03-15', 1150.00),
    (40, '2027-04-20', 750.00),
    (41, '2027-05-25', 1050.00),
    (42, '2027-06-30', 1400.00),
    (43, '2027-07-05', 1650.00),
    (44, '2027-08-10', 1300.00),
    (45, '2027-09-15', 1550.00),
    (46, '2027-10-20', 1900.00),
    (47, '2027-11-25', 2150.00),
    (48, '2027-12-30', 1100.00),
    (49, '2028-01-05', 700.00),
    (50, '2028-02-10', 950.00),
    (51, '2028-03-15', 1200.00),
    (52, '2028-04-20', 800.00),
    (53, '2028-05-25', 1100.00),
    (54, '2028-06-30', 1450.00),
    (55, '2028-07-05', 1700.00),
    (56, '2028-08-10', 1350.00);

select * from cliente
order by nome

select c.nome, b.nome, emp.valor from emprestimo emp
inner join cliente c on emp.id_cliente = c.id_cliente
inner join banco b on b.id_banco = emp.id_banco
order by c.nome

select b.nome, count(id_emprestimo) as emprestimos from emprestimo emp
inner join banco b on b.id_banco = emp.id_banco
group by b.nome

select b.nome, max(valor) as total_emprestado from emprestimo emp
inner join banco b on b.id_banco = emp.id_banco
group by b.nome

select c.nome, e.numero_parcelas as parcelas_restantes from emprestimo e
inner join cliente c on e.id_cliente = c.id_cliente
order by c.nome*/

select e.id_cliente, c.nome, e.valor, p.valor_pagamento, e.valor - p.valor_pagamento as valor_restante from emprestimo e 
	inner join cliente c on e.id_cliente = c.id_cliente
	inner join pagamentos p on e.id_emprestimo = p.id_emprestimo
		order by c.nome
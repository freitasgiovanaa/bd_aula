/*create table pessoa(cpf char(11) primary key,
				   nome varchar(50) not null,
				   email varchar(40) not null,
				   cpf_conjuge char(11) not null unique,
foreign key (cpf_conjuge) references pessoa(cpf));

insert into pessoa (cpf, nome, email, cpf_conjuge) values
('11122233344', 'João Silva', 'joao.silva@example.com', '55566677788'),
('22233344455', 'Maria Santos', 'maria.santos@example.com', '66677788899'),
('33344455566', 'José Oliveira', 'jose.oliveira@example.com', '77788899900'),
('44455566677', 'Ana Souza', 'ana.souza@example.com', '88899900011'),
('55566677788', 'Pedro Lima', 'pedro.lima@example.com', '11122233344'),
('66677788899', 'Carla Pereira', 'carla.pereira@example.com', '22233344455'),
('77788899900', 'Ricardo Ferreira', 'ricardo.ferreira@example.com', '33344455566'),
('88899900011', 'Amanda Costa', 'amanda.costa@example.com', '44455566677'),
('99900011122', 'Luiz Almeida', 'luiz.almeida@example.com', null),
('00011122233', 'Mariana Gonçalves', 'mariana.goncalves@example.com', null);

select p.nome as conjuge_1, pe.nome as conjuge_2 from pessoa p 
inner join pessoa pe on p.cpf = pe.cpf_conjuge;

create table funcionario(id_funcionario serial primary key,
                        nome varchar(50),
                        id_gerente int,
                        foreign key (id_gerente) references funcionario(id_funcionario));*/

/*insert into funcionario (nome, id_gerente) values
('João Silva', null),
('Maria Oliveira', 1),
('Carlos Santos', 2),
('Ana Souza', 1),
('Pedro Ferreira', 2),
('Juliana Costa', null),
('Lucas Lima', null),
('Mariana Pereira', 6),
('Rafaela Santos', 6),
('Fernando Oliveira', 6);

select f.nome,fe.nome as gerenciado from funcionario as f
left join funcionario as fe on fe.id_gerente = f.id_funcionario

create table disciplina(id_disciplina int primary key, nome varchar(30));

create table pre_requisito(id_disciplina int, id_pre_requisito int,
		foreign key(id_disciplina, id_pre_requisito),
		foreign key(id_disciplina) references disciplina(id_disciplina),
		foreign key(id_pre_requisito) references disciplina(id_disciplina));	

insert into disciplina(id_disciplina,nome) values
(1,'LOGICA'),
(2,'BANCO DE DADOS'),
(3,'O. A OBJETO'),
(4,'API'),
(5,'REACT'),
(6,'MOBILE'),
(7,'PROJETO');

INSERT INTO pre_requisito (id_disciplina, id_pre_requisito) VALUES 
(1,1),
(2,1),
(3,1),
(3,2),
(4,1),
(4,3),
(5,1),
(6,1),
(7,1),
(7,2),
(7,3),
(7,4),
(7,5),
(7,6);

select d.nome as disciplina, p.id_pre_requisito, di.nome from disciplina d
inner join pre_requisito p on d.id_disciplina = p.id_disciplina
inner join disciplina di on di.id_disciplina = p.id_pre_requisito;*/
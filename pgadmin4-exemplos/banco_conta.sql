/*create table imobiliaria(id_imobiliaria serial primary key,
						 nome varchar(40),
						 comissão decimal);
					
create table imovel (id_imovel serial primary key,
					 descricao varchar(90),
					 tipo varchar(20),
					 valor decimal);
					 
create table venda (id_venda serial primary key,
                    id_imobiliaria int,
                    foreign key (id_imobiliaria) references imobiliaria(id_imobiliaria),
                    comissao decimal,
                    id_imovel int,
                    foreign key (id_imovel) references imovel(id_imovel),
                    ITBI decimal,
                    Laudemio decimal);*/
					
					
/*INSERT INTO imobiliaria (nome) VALUES
('Casa Ideal Imobiliária'),
('Terra Nova Imobiliária'),
('Soluções Imobiliárias'),
('Sonho Real Imobiliária'),
('Espaço & Lar Imobiliária'),
('Vision Imobiliária'),
('Primeiro Lar Imobiliária'),
('Castelo dos Sonhos Imobiliária'),
('Imóveis Prestige'),
('Novo Horizonte Imobiliária');*/

/*INSERT INTO imovel (descricao, tipo, valor) VALUES
    ('Apartamento com vista para o mar', 'Apartamento', 350000),
    ('Casa com jardim espaçoso', 'Casa', 450000),
    ('Terreno próximo ao centro da cidade', 'Terreno', 150000),
    ('Cobertura com piscina privativa', 'Apartamento', 750000),
    ('Sobrado em condomínio fechado', 'Casa', 550000),
    ('Terreno com vista panorâmica', 'Terreno', 200000),
    ('Apartamento mobiliado no centro', 'Apartamento', 280000),
    ('Casa térrea com churrasqueira', 'Casa', 380000),
    ('Terreno em área residencial', 'Terreno', 100000),
    ('Apartamento duplex com varanda', 'Apartamento', 420000);*/
	
/*INSERT INTO venda (id_imobiliaria, comissao, id_imovel, ITBI, Laudemio)
select imo.id_imobiliaria, i.valor * 5/100, 
i.id_imovel, i.valor * 2/100, i.valor  * 2.5/100
from imovel i, imobiliaria imo
where i.id_imovel = 1 and imo.id_imobiliaria = 1

INSERT INTO venda (id_imobiliaria, comissao, id_imovel, ITBI, Laudemio)
select imo.id_imobiliaria, i.valor * 6/100, 
i.id_imovel, i.valor * 2/100, i.valor  * 2.5/100
from imovel i, imobiliaria imo
where i.id_imovel = 2 and imo.id_imobiliaria = 2

INSERT INTO venda (id_imobiliaria, comissao, id_imovel, ITBI, Laudemio)
select imo.id_imobiliaria, i.valor * 9/100, 
i.id_imovel, i.valor * 2/100, i.valor  * 2.5/100
from imovel i, imobiliaria imo
where i.id_imovel = 9 and imo.id_imobiliaria = 5*/

select * from venda
/*create table roupa(id_roupa serial primary key,
				  nome varchar(30), descricao varchar(100));
				  
insert into roupa(nome,descricao) values
('Calça', 'Calça de moletom de adulto'),
('Camisa', 'Camisa de Criança'),
('Short', 'Short de tactel'),
('Vestido', 'Vestido longo'),
('Bermuda', 'Bermuda jeans masculina'),
('Sapato', 'Sapato social'),
('Saia', 'Saia curta');

select replace(nome,'Camisa','Calça') from roupa 

update roupa set nome = lower(nome), descricao = upper(
descricao)

select * from roupa where descricao not like '%CRIANÇA%';

select concat(nome, '**', descricao ) as unir from roupa*/

select reverse('mauro') from roupa;


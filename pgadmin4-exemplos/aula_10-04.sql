/*create table documentos(id_documento serial primary key,
						texto varchar(255) not null,
						data_postagem date not null
						default current_date);

insert into documentos(texto) values ('EMISSÃO DE NOTA FISCAL'),
('ENCAMINHADO PARA ENVIO');

select texto, TO_CHAR(data_postagem,'dd month, yy') from documentos

create table aluno(id_aluno serial primary key, nome varchar(60),
				  email varchar(70) unique, data_nascimento date
				  
				  
insert into aluno(nome,email, data_nascimento) values('Luis','lupi@gmail.com','2006-09-06'),
                                                     ('Larissa','lari@gmail.com','2006-03-04'),
													 ('Carolina','carol@gmail.com','2004-04-07');
													 
create table pedidos(id_pedido serial primary key,
					nome_produto varchar(100),
					quantidade int,
					valor decimal,
					data_compra date);
					
insert into pedidos(nome_produto,quantidade,valor,data_compra) values
('SABÃO EM PÓ OMO 2,6KG', 20, 24.99, '2024-01-24'),
('DESINFETANTE URCA 1,5L', 30, 9.99, '2024-02-29'),
('SABONETE PHEBO 90G', 50, 4.49, '2024-01-12'),
('SABÃO PASTOSO NEUTRAL 500G', 25, 4.29, '2023-10-26'),
('PASTA DE DENTE SORRISO 90G', 60, 3.29, '2023-12-17');*/

/*select nome_produto,to_char(now() - data_compra, 'dd') as diferenca_dia 
from pedidos*/

/*select nome_produto,to_char(data_compra, 'day') as diferenca_dia 
from pedidos*/

/*select 
	extract(month from data_compra) as mes,
	count(quantidade)
	from pedidos
group by mes
order by mes*/

/*create table exemplots(datats timestamp, datatstz timestamptz);

set timezone = 'America/Sao_Paulo';

show timezone

insert into exemplots(datats,datatstz) values('2024-04-10 10:00:00','2024-04-10 10:00:04');*/

/*select version(); -------------- ver a versao do postgresql*/

/*select floor(4.95) as arrendondamento_pra_cima;*/

/*select floor (random()* 1000) as numero_aleatorio;*/

/*select sqrt(9) as resposta*/

/*select least(10,30,0,90) as resultado_menor;*/

/*select greatest(10,30,0,90) as resultado_maior;*/	

/*create table avaliacao(id_avaliacao serial primary key,
					  nome varchar(60),
					  peso numeric,
					  altura numeric);
					  
insert into avaliacao(nome,peso,altura) values('Luis', 76, 1.73),
                                              ('Marcos', 80, 1.81),
											  ('Natane', 65, 1.68),
											  ('Tuane', 69, 1.68);*/
											  
/*select nome, round(peso/(altura*altura),2) as imc from avaliacao*/	

select nome, 
case 
	when round(peso/(altura*altura), 2) < 18.5 then 'magreza'
	when round(peso/(altura*altura), 2) >= 18.5 and round(peso/(altura*altura), 2) <= 24.9 then 'normal'
	when round(peso/(altura*altura), 2) >= 25 and round(peso/(altura*altura), 2) <= 29.9 then 'sobrepeso'
	when round(peso/(altura*altura), 2) >= 30 and round(peso/(altura*altura), 2) <= 39.9 then 'obesidade'
	else 'obesidade grave'
end as imc
from avaliacao;
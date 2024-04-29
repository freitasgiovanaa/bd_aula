/*
create table produto(codigo_produto serial primary key,
					 nome varchar(40) not null,
					 descricao text,
					 preco numeric check (preco > 0) not null,
					 quant_estoque smallint default 0);
					 
				     insert into produto(nome,descricao,preco)values('celular','samsung a53',2765.6);
                     insert into produto(nome,descricao,preco)values('tv','samsung qled',2700.9);
/*select * from produto;*/
update produto set preco = 2000 where codigo_produto =1;
*/
update produto set quant_estoque = 100 where codigo_produto =1;
select * from produto;
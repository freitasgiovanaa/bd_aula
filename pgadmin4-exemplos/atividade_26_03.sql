/*create table cliente(id_cliente serial primary key,
					nome varchar(50),
					email varchar(30),
					telefone char(11),
					endereco varchar(60));
					
create or replace function inserir_registros(quantidade integer)
returns void as
$$
  declare
   i integer:= 1;
   begin
   while i <=quantidade loop
      insert into cliente (nome,email,telefone,endereco)
	  values('Cliente' || i, 'cliente' ||i|| '@gmail.com',
			 'XXXXXXXXXXX', 'Endereço do Cliente' ||i  );
	      i:=i+1;
	  end loop;
   end;
    $$
language 'plpgsql';

select inserir_registros(55780000);

explain analyse select * from cliente where nome like 'Cliente 355%';

create index idx_nome on cliente using btree(nome);

create type status_pedido as enum ('PENDENTE', 'PROCESSANDO', 'ENVIADO', 'ENTREGUE');

create table pedido(numero serial primary key,
				   descricao varchar(90),
				   data_pedido date,
				   status status_pedido);
				   
insert into pedido(descricao,data_pedido,status) values('Compra de computador', '2024-03-02',
													   'ENVIADO')
													   
create type tamanho as enum ( 'GG', 'G', 'M', 'P');

create table camisas(id_camisa serial primary key,
					descricao varchar(90), tamanho_camisa tamanho)
					
insert into camisas(descricao, tamanho_camisa) values 
('Camisa Vans Split', 'P'),
('Camisa Hocks Montereal', 'M'),
('Camisa Flamengo Retro 94', 'G'),
('Regata Hocks Puff', 'GG'),
('Camisa Dri-Fit Nike', 'G'),
('Camisa Adidas 2000', 'P'),
('Camisa Flamengo Treino 2024', 'G');

select tamanho_camisa,count(tamanho_camisa) from camisas
group by tamanho_camisa;*/

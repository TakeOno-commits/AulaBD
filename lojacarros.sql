drop database carrosdb;
create database carrosdb;
use carrosdb;
create table clientes(
    id int primary key auto_increment,
    nome varchar(100) not null
);
create table produtos(
    id int primary key auto_increment,
    nome varchar(100) not null,
    pco float
);
create table vendas(
    id int primary key auto_increment,
    cli_id int,
    prod_id int      
);
 
ALTER TABLE vendas ADD CONSTRAINT fk_cli_id FOREIGN KEY (cli_id) REFERENCES clientes(id);
 
insert into clientes (nome) value ('Claude Shannon');
insert into produtos (nome) value ('Monza');
insert into vendas (cli_id, prod_id) values (1,1);
insert into vendas (cli_id, prod_id) values (50,50);
 
select * from vendas;
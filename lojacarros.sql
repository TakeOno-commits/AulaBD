drop database carrosdb;
create database carrosdb;
use carrosdb;
create table clientes(
    id int primary key auto_increment,
    nome varchar(100) not null
    idade int
);
create table carros(
    id int primary key auto_increment,
    nome varchar(100) not null,
    pco float
);
create table vendas(
    id int primary key auto_increment,
    clientes_id int,
    carros_id int,
    foreign key (carro_id) references carros(id),
    foreign key (clientes_id) references clientes(id),
    foreign key (vendas_id) references vendas(id)
);
insert into carros (nome) values ('ferrari');
insert into clientes(nome) values ("Gauss");
insert into vendas(carros_id, clientes_id ) values (1,100);

select*from carros;
select*from clientes;
select*from vendas;
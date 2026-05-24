create database carrosdb;
use carrosdb;
create table cad_clis(
    id int primary key auto_increment,
    nome varchar(100) not null
);
create table cad_carros(
    id int primary key auto_increment,
    nome varchar(100) not null,
    pco float
);
create table vdas(
    id int primary key auto_increment,
    cli_id int,
    carro_id int
);
insert into cad_clis(nome) values
("Bruce Wayne"),
("Tony Stark"),
("Tio Patinhas");
insert into cad_carros(nome, preco) values
("fiat Uno" , 9500),
("Fusca", 7500),
("opala", 5200);

insert into vdas(cli_id, carro_id) values
(1,3),
(2,2),
(3,1);

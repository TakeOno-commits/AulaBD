DROP DATABASE IF EXISTS carrosdb;
CREATE DATABASE carrosdb;
USE carrosdb;

CREATE TABLE clientes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE produtos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    pco FLOAT
);

CREATE TABLE vendas(
    id INT PRIMARY KEY AUTO_INCREMENT,
    cli_id INT,
    prod_id INT,

    CONSTRAINT fk_cli_id FOREIGN KEY (cli_id) REFERENCES clientes(id),

    CONSTRAINT fk_prod_id FOREIGN KEY (prod_id) REFERENCES produtos(id)
);

-- CLIENTES
INSERT INTO clientes (nome) VALUES ('Claude Shannon');
INSERT INTO clientes (nome) VALUES ('Alan Turing');
INSERT INTO clientes (nome) VALUES ('Ada Lovelace');

-- PRODUTOS
INSERT INTO produtos (nome, pco) VALUES ('Monza', 50000);
INSERT INTO produtos (nome, pco) VALUES ('Fusca', 35000);
INSERT INTO produtos (nome, pco) VALUES ('Gol', 42000);

-- VENDAS
INSERT INTO vendas (cli_id, prod_id) VALUES (1,1);
INSERT INTO vendas (cli_id, prod_id) VALUES (2,2);
INSERT INTO vendas (cli_id, prod_id) VALUES (3,3);

-- CONSULTAS
SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM vendas;

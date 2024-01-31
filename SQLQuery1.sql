CREATE DATABASE [usuarios]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'usuarios', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\usuarios.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'usuarios_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\usuarios_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
CREATE TABLE usuarios (
idUsuarios int primary key, 
login varchar(15) NOT NULL,
senha varchar(15) NOT NULL
)
INSERT INTO usuarios
(idUsuarios, login, senha)
values
('1', 'op1', 'op1'),
('2', 'op2', 'op2')

create table produtossss (
codigo int primary key not null,
nome char(15) not null,
quantidade varchar(6) not null,
preço float not null
)
insert into produtossss
(codigo, nome, quantidade, preço)
values
('001', 'banana', '1kg', 10.87),
('002', 'feijão', '1kg', 9.54),
('003', 'arroz', '5kg', 20.43)

create table pessoa (
id int primary key not null,
pessoa char(20)
)
insert into pessoa
(id, pessoa)
values
('101', 'pessoa fisica'),
('102', 'pessoa juridica')

create table pessoafisicaa (
idpessoa int not null,
nome char(100),
logradouro varchar(100),
cidade char(20),
estado char(10),
telefone varchar(20),
email varchar(30),
cpf varchar(11)
)
insert into pessoafisicaa
(idpessoa, nome, logradouro, cidade, estado, telefone, email, cpf)
values
('101', 'Vanderlei Siqueira', 'Rua Joao Pedro, 29, Jardim Esperança', 'Sao Paulo', 'SP', 'null', 'vanderleisiqueira@gmail.com', '98173645102')

create table pessoajuridicaa (
idpessoa int not null,
nome char(100),
logradouro varchar(100),
cidade char(20),
estado char(10),
telefone varchar(20),
email varchar(30),
cnpj varchar(14)
)
insert into pessoajuridicaa
(idpessoa, nome, logradouro, cidade, estado, telefone, email, cnpj)
values
('102', 'minimercado monteiro', 'Rua Pedro Santos, 28, Centro', 'Sao paulo', 'SP', '11 32807765', 'mercadomonteiro@gmail.com', '86539810384107')

alter table pessoafisicaa add constraint FK1 foreign key (idpessoa)
references pessoa (id)

alter table pessoajuridicaa add constraint FK2 foreign key (idpessoa)
references pessoa (id)

create table movimentacoessss (
idmovimentacoes int primary key,
idusuarios int,
idpessoa int,
idproduto int,
quantidade varchar(10),
tipo char(1),
valor float
)
insert into movimentacoessss
(idmovimentacoes, idusuarios, idpessoa, idproduto, quantidade, tipo, valor)
values
('1', '1', '101', '003', '20', 'S', 20.43),
('2', '2', '102', '001', '10', 'E', 10.87)

select * from pessoafisicaa
select * from pessoajuridicaa
select * from movimentacoessss where tipo like 'E'
select * from movimentacoessss where tipo like 'S'
select quantidade, valor, (quantidade*valor) as valortotal from movimentacoessss





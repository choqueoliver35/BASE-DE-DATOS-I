

CREATE DATABASE EMPRESA_COMPRA_AUTO;

USE EMPRESA_COMPRA_AUTO;

CREATE TABLE EMPRESA
(
	nit integer PRIMARY KEY,
	nombre_de_la_empresa varchar(100),
	ubicación_geografica varchar(100)
);

CREATE TABLE VEHICULO
(
	Id_del_auto integer,
	precio integer,
	color varchar(100),
	modelo varchar(100)
);

CREATE TABLE DET_COMPRA
(
	Id_compra integer PRIMARY KEY,
	nombre_del_cliente varchar(100),
	id_del_auto integer,
	nit integer,
	precio integer
);

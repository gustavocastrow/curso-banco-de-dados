/* Primeira forma normal */

/*1. Todo campo VETORIZADO se tornara outra tabela */

/*2. Todo campo MULTIVALORADO se tornara outra tabela */

CREATE DATABASE COMERCIO;
USE COMERCIO;


CREATE TABLE CLIENTE (
  IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
  NOME VARCHAR(30) NOT NULL,
  SEXO ENUM('M', 'F') NOT NULL,
  EMAIL VARCHAR(50) /*EMAIL UNICO, MAS PODE DEIXAR EM BRANCO */
  CPF VARCHAR (15) UNIQUE
);

CREATE TABLE ENDERECO (
  IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
  RUA VARCHAR(30) NOT NULL,
  BAIRRO VARCHAR(30) NOT NULL,
  CIDADE VARCHAR(30) NOT NULL,
  ESTADO CHAR(2) NOT NULL
);

CREATE TABLE ENDERECO (
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
    RUA VARCHAR(30) NOT NULL,
    BAIRRO VARCHAR(30) NOT NULL,
    CIDADE VARCHAR(30) NOT NULL,
    ESTADO CHAR(2) NOT NULL
);

CREATE TABLE TELEFONE (
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
    TIPO ENUM('RES', 'COM', 'CEL') NOT NULL,
    NUMERO VARCHAR(10) NOT NULL
);

DROP TABLE CLIENTE;


CREATE TABLE CLIENTE (
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    SEXO ENUM('M', 'F'),
    EMAIL VARCHAR(50) UNIQUE,
    CPF VARCHAR(15) UNIQUE
);


/* === SCRIPT CORRETO AULA === */

USE COMERCIO;

SHOW TABLES;

DESC CLIENTE;

CREATE TABLE CLIENTE (
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    SEXO ENUM('M', 'F'),
    EMAIL VARCHAR(50) UNIQUE,
    CPF VARCHAR(15) UNIQUE
);

CREATE TABLE ENDERECO (
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
    RUA VARCHAR(30) NOT NULL,
    BAIRRO VARCHAR(30) NOT NULL,
    CIDADE VARCHAR(30) NOT NULL,
    ESTADO CHAR(2) NOT NULL,
    ID_CLIENTE INT UNIQUE,
    FOREIGN KEY (ID_CLIENTE) 
    REFERENCES CLIENTE(IDCLIENTE)
);

CREATE TABLE TELEFONE (
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
    TIPO ENUM('RES', 'COM', 'CEL') NOT NULL,
    NUMERO VARCHAR(10) NOT NULL,
    ID_CLIENTE INT,
    FOREIGN KEY (ID_CLIENTE)
    REFERENCES CLIENTE(IDCLIENTE)
);

DROP TABLE CLIENTE;

SHOW TABLES;

INSERT INTO CLIENTE VALUES (
    NULL,
    'JOAO',
    'M',
    'JOAO@IG.COM',
    '874723890923'
);

INSERT INTO CLIENTE (IDCLIENTE, NOME, SEXO, EMAIL, CPF) VALUES (
    NULL,
    'CARLOS',
    'M',
    'CARLOS@IG.COM',
    '48827473942'
);


INSERT INTO CLIENTE (IDCLIENTE, NOME, SEXO, EMAIL, CPF) VALUES (
    NULL,
    'ANA',
    'F',
    'ANA@IG.COM',
    '4244334332'
);

INSERT INTO CLIENTE (IDCLIENTE, NOME, SEXO, EMAIL, CPF) VALUES (
    NULL,
    'CLARA',
    'F',
    NULL,
    '945893923'
);

INSERT INTO CLIENTE (IDCLIENTE, NOME, SEXO, EMAIL, CPF) VALUES (
    NULL,
    'JORGE',
    'M',
    'JORGE@IG.COM',
    '544432343'
);

INSERT INTO CLIENTE (IDCLIENTE, NOME, SEXO, EMAIL, CPF) VALUES (
    NULL,
    'CELIA',
    'F',
    'CELIA@IG.COM',
    '84834823993'
);

INSERT INTO ENDERECO VALUES (
    NULL, 
    'RUA ANTONIO SA',
    'CENTRO',
    'B. HORIZONTE', 
    'MG', 
    4
);

INSERT INTO ENDERECO VALUES (
    NULL, 
    'RUA CAPITAO HERMES',
    'CENTRO',
    'RIO DE JANEIRO', 
    'RJ', 
    1
);

INSERT INTO ENDERECO VALUES (
    NULL, 
    'RUA PRES VARGAS',
    'JARDINS',
    'SAO PAULO', 
    'SP', 
    3
);

INSERT INTO ENDERECO VALUES (
    NULL, 
    'RUA ALFANDEGA',
    'ESTACIO',
    'RIO DE JANEIRO', 
    'RJ', 
    2
);

INSERT INTO ENDERECO VALUES (
    NULL, 
    'RUA OUVIDOR',
    'FLAMENGO',
    'RIO DE JANEIRO', 
    'RJ', 
    6
);

INSERT INTO ENDERECO VALUES (
    NULL, 
    'RUA URUGUAIANA',
    'CENTRO',
    'VITORIA', 
    'ES', 
    6
);

INSERT INTO ENDERECO VALUES (
    NULL, 
    'RUA URUGUAIANA',
    'CENTRO',
    'VITORIA', 
    'ES', 
    6
);

INSERT INTO TELEFONE VALUES (
    NULL,
    'CEL',
    '1293483823',
    5
);

INSERT INTO TELEFONE VALUES (NULL,'CEL','1293483823',5);
INSERT INTO TELEFONE VALUES (NULL,'RES','39054056',5);
INSERT INTO TELEFONE VALUES (NULL,'CEL','1294233823',1);
INSERT INTO TELEFONE VALUES (NULL,'COM','323215331',2);
INSERT INTO TELEFONE VALUES (NULL,'RES','39577347',1);
INSERT INTO TELEFONE VALUES (NULL,'CEL','1299897823',3);
INSERT INTO TELEFONE VALUES (NULL,'CEL','12999884',3);
INSERT INTO TELEFONE VALUES (NULL,'COM','325555634',1);
INSERT INTO TELEFONE VALUES (NULL,'RES','390560432',5);
INSERT INTO TELEFONE VALUES (NULL,'CEL','12933433823',2);


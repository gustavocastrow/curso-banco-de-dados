/* Criando Banco de Dados */

CREATE DATA BASE PROJETO;

/* Conectando ao Banco */

USE PROJETO; 

/* Criando tabela de clientes */

CREATE TABLE CLIENTE (
  NOME VARCHAR(30),
  SEXO CHAR(1),
  EMAIL VARCHAR(30),
  CPF INT(11),
  TELEFONE VARCHAR(30),
  ENDERECO VARCHAR(100)
);

/* Verificando as tabelas do banco */

SHOW TABLES;


/* Descobrindo estrutura de uma tablea */
DESC CLIENTE;

/* Sintaxe basica de insercao */

INSERT INTO TABELA ....

/* Forma 01 - Incluindo dados na tablea cliente omitando o nome das colunas
por tanto os dados precisam ser na mesma ordem do banco. */

INSERT INTO CLIENTE VALUES (
  'JOAO',
  'M',
  'JOAO@GMAIL.COM',
  988638273,
  '22923110',
  'MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ'
);

INSERT INTO CLIENTE VALUES (
  'CELIA',
  'F',
  'CELIA@GMAIL.COM',
  541521456,
  '25078869',
  'RIACHUELO - CENTRO - RIO DE JANEIRO - RJ'
);


INSERT INTO CLIENTE VALUES (
  'JORGE',
  'M',
  NULL,
  885755896,
  '58748895',
  'OSCAR CURY - BOM RETIRTO - PATOS DE MINAS - MG'
);

/* FORMA 02 -> Descrevendo as colunas (FORMA MAIS SEGURA) */

INSERT INTO CLIENTE (NOME, SEXO, ENDERECO, TELEFONE, CPF)
VALUES (
  'LILIAN',
  'F',
  'SENADOR SOARES - TIJUCA - RJ',
  '947785696',
  887774856
);

/* FORMA 03 (Apenas MYSQL) -> Insert compacto */

INSERT INTO CLIENTE VALUES (
  'ANA', 
  'F', 
  'ANA@GLOBO.COM', 
  85548962, 
  '548556982', 
  'PRES ANTONIO CARLOS - SAO PAULO - SP',
  ''
  ),
  (
    'CARLA',
    'F',
    'CARLA@TERATI.COM.BR',
    7745828,
    '6687458',
    'SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG'
  );

/* Selecao projecao e juncao */

SELECT NOW ();


/*Projecao (SELECT): Projetar colunas que existem e que nao existem */

SELECT NOME, SEXO, EMAIL FROM CLIENTE;

/* Renomenado uma coluna com AS (Alias) */

SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE; 


/* Alterando ordem na projecao */

SELECT ENDERECO, TELEFONE, CPF NOME AS PESSOAS FROM CLIENTE;

/* "SELECT * FROM ..." -> APENAS PARA FINS ACADEMICOS */

SELECT * FROM CLIENTE;


/* PROJECAO = Filtragem por colunas (SELECT)*/
/* SELECAO = Filtragem em linha, via quantidade de registros (WHERE) */

/* Filtrando dados com WHERE e LIKE */

SELECT NOME, TELEFONE FROM CLIENTE
WHERE SEXO = 'M';

SELECT NOME, ENDERECO FROM CLIENTE
WHERE SEXO = 'F';

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO = 'RJ';

/* LIKE entra no lugar da igualdade */

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE 'RJ';

/* CARACTERE CORINGA "%" -> Qualquer coisa */

/* Utilizando o "%" no final */
SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE '%RJ'; /* comeca com qlqr coisa e termina com RJ */

/* Utilizando o "%" no inicio */
SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE 'OSCAR CURY%'; /* comeca com OSCAR CURY e termina com qlqr coisa */

/* Utilizando o "%" no meio */

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%CENTRO%';


/* LIKE degrada a performace do banco, recomendamevel utilizar igualdade */











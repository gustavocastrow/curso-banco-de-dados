CREATE DATABASE LIVRARIA;
USE LIVRARIA;

CREATE TABLE LIVROS (
  LIVRO VARCHAR (100),
  AUTOR VARCHAR (100),
  SEXO CHAR (1),
  PAGINAS INT (5),
  EDITORA VARCHAR (30),
  VALOR FLOAT (10, 2), /* (numero total casas, qtd decimais) */
  UF CHAR (2),
  ANO INT (4)
);


/* Exercico 03 */

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, UF, ANO)
VALUES (
	'Cavaleiro Real',
    'Ana Claudia',
    'F',
    465,
    'Atlas',
    49.9,
    'RJ',
    2009
);

SELECT * FROM LIVROS;

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, UF, ANO)
VALUES (
	'SQL para leigos',
    'João Nunes',
    'M',
    450,
    'Addison',
    98,
    'SP',
    2018
);

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, UF, ANO)
VALUES (
	'Receitas Caseiras',
    'Celia Tavares',
    'F',
    210,
    'Atlas',
    45,
    'RJ',
    2008
);

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, UF, ANO)
VALUES (
	'Pessoas Efetivas',
    'Eduardo Santos',
    'M',
    390,
    'Beta',
    78,
    'RJ',
    2018
);

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, UF, ANO)
VALUES (
	'Habitos Saudáveis',
    'Eduardo Santos',
    'M',
    250,
    'Bubba',
    60,
    'MG',
    2016
);

SELECT * FROM LIVROS;

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, UF, ANO)
VALUES (
	'A Casa Marrom',
    'Hermes Macedo',
    'M',
    250,
    'Bubba',
    60,
    'MG',
    2016
);

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, UF, ANO)
VALUES (
	'Estacio Querido',
    'Geraldo Francisco',
    'M',
    310,
    'Insignia',
    100,
    'ES',
    2011
);

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, UF, ANO)
VALUES (
	'Pra sempre amigos',
    'Leda Silva',
    'F',
    510,
    'Insignia',
    78,
    'ES',
    2011
);

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, UF, ANO)
VALUES (
	'Copas Inesqueciveis',
    'Marco Alcantara',
    'M',
    200,
    'Larson',
    130,
    'RS',
    2018
);

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO, PAGINAS, EDITORA, VALOR, UF, ANO)
VALUES (
	'O poder da mente',
    'Clara Mafra',
    'F',
    120,
    'Continental',
    56,
    'SP',
    2017
);


/*1 Trazer todos os dados */

SELECT * FROM LIVROS;

/*2 Trazer o nome do livro e o nome da editora */

SELECT LIVRO, EDITORA 
FROM LIVROS;

/*3 Trazer o nome do livro e a UF dos livros publicados por autores M */

SELECT LIVRO, UF 
FROM LIVROS 
WHERE SEXO = 'M';

/*4 Trazer o nome do livro e o numero de paginas de livros publicaodos
por autores do sexo feminno */
 
SELECT LIVRO, PAGINAS 
FROM LIVROS 
WHERE SEXO = 'F';

/*5 Trazer os valores dos livros das editoras de sao paulo */

SELECT VALOR 
FROM LIVROS 
WHERE UF = 'SP';






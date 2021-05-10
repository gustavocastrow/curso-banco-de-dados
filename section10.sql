USE COMERCIO;

SELECT * FROM CLIENTE;

INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');

INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',9);
INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',10);
INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',11);
INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',12);
INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',13);
INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',14);
INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',15);
INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',16);
INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',17);
INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',18);
INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',19);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',20);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',21);


INSERT INTO TELEFONE VALUES(NULL,'RES','68976565',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765',11);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','55689654',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','88687979',12);
INSERT INTO TELEFONE VALUES(NULL,'COM','88965676',13);
INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809',15);
INSERT INTO TELEFONE VALUES(NULL,'COM','88679978',16);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768',17);
INSERT INTO TELEFONE VALUES(NULL,'RES','89955665',18);
INSERT INTO TELEFONE VALUES(NULL,'RES','77455786',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','89766554',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','77755785',20);
INSERT INTO TELEFONE VALUES(NULL,'COM','44522578',20);
INSERT INTO TELEFONE VALUES(NULL,'CEL','44522578',21);


/* RELATORIO GERAL DE TODOS OS CLIENTES */

SELECT C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE AS C
INNER JOIN ENDERECO AS E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE AS T
ON C.IDCLIENTE = T.ID_CLIENTE;

/* RELATORIO DE HOMENS */

SELECT C.NOME, C.SEXO, C.EMAIL, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE AS C
INNER JOIN ENDERECO AS E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE AS T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'M';

SELECT * FROM CLIENTE
WHERE IDCLIENTE = 12
OR IDCLIENTE = 13
OR IDCLIENTE = 18
OR IDCLIENTE = 19;

SELECT * FROM CLIENTE
WHERE IDCLIENTE IN (12,13,18,19);

UPDATE CLIENTE SET SEXO = 'F'
WHERE IDCLIENTE IN (12,13,18,19);



/* RELATORIO DE MULHERES */

SELECT C.NOME, C.SEXO, C.CPF, E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE AS C
INNER JOIN ENDERECO AS E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE AS T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';

UPDATE CLIENTE SET SEXO = 'M'
WHERE IDCLIENTE = 16;

UPDATE CLIENTE SET SEXO = 'F'
WHERE IDCLIENTE = 14;

/* QUANTIDADE DE HOMENS E MULHERES */

SELECT COUNT(*) AS QUANTIDADE, SEXO
FROM CLIENTE
GROUP BY SEXO;


/* IDS E EMAIL DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E 
NAO TENHAM CELULAR */


/*Fazendo por partes... */

/*01. Juntando as tabelas que serao utilziadas na query */
SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO
FROM CLIENTE AS C
INNER JOIN ENDERECO AS E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE AS T
ON C.IDCLIENTE = T.ID_CLIENTE;

/*02. Fazendo o filtro  (SEXO = F)*/

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO
FROM CLIENTE AS C
INNER JOIN ENDERECO AS E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE AS T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';

/*03. Adicionado mais filtros (BAIRRO = CENTRO AND CIDADE = RIO DE JANEIRO) */

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO
FROM CLIENTE AS C
INNER JOIN ENDERECO AS E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE AS T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO';

/*04. Adicionando mais filtros (TIPO) */

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE AS C
INNER JOIN ENDERECO AS E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE AS T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO'
AND (TIPO = 'RES' OR TIPO = 'COM');


/* PARA UMA CAMPANHA DE MARKETING, O SETOR SOLICITOU UM
RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR 
DOS CLIENTES QUE MORAM NO ESTADO DO RIO DE JANEIRO 
VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA
O PROGRAMADOR */

SELECT C.EMAIL, C.NOME, C.SEXO, T.NUMERO AS CELULAR /*PROJECAO*/
FROM CLIENTE AS C /*ORIGEM (SEMPRE A TABLEA QUE TEM MAIS LIGACOES*/
INNER JOIN ENDERECO AS E /*JUNCAO*/
ON C.IDCLIENTE = E.ID_CLIENTE/*JUNCAO*/
INNER JOIN TELEFONE AS T/*JUNCAO*/
ON C.IDCLIENTE = T.ID_CLIENTE/*JUNCAO*/
WHERE TIPO = 'CEL' AND ESTADO = 'RJ'; /*SELECAO*/



/* PARA UMA CAMPANHA DE PRODUTOS DE BELEZA, O COMERCIAL SOLICITOU UM
RELATÓRIO COM O NOME, EMAIL E TELEFONE CELULAR 
 DAS MULHERES QUE MORAM NO ESTADO DE SÃO PAULO 
VOCÊ TERÁ QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA
O PROGRAMADOR */

SELECT C.NOME, C.EMAIL, T.NUMERO AS CELULAR
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND ESTADO = 'SP';


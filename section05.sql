/* OPERADORES LOGICOS */

/* 0R => Para que a saida da query seja VERDADEIRA, basta que apenas umas
condicao seja verdadeira

   AND => Para que a saida da query seja VERDADEIRA, todas condicoes precisam
   ser verdadeiras
*/

SELECT NOME, SEXO, ENDERECO FROM CLIENTE;

/* Pessoas do sexo masculino ou pessoas do estado do RJ */
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE 
SEXO = 'M' OR ENDERECO LIKE '%RJ';


SELECT NOME, SEXO, ENDERECO 
FROM CLIENTE
WHERE SEXO = 'F'
OR ENDERECO LIKE '%ESTACIO';

/* Funcoes de agregacao */

/* COUNT(*) => Conta a quantidade de registros */
/*Contando os registros de uma tabela */
SELECT COUNT(*) AS "Total Registros"
FROM CLIENTE;

/* GROUP BY => Agrupando o resultado pelo agrupador*/
SELECT SEXO, COUNT(*)
FROM CLIENTE
GROUP BY SEXO;

/* 
OR => Primeira condicao tem que ter mais chance de ser verdadeira
AND => As duas condicoes tem que ser verdadeiras, portanto coloca
na primeira verificacao a variavel que tem menos chance de ser verdadeira
para ela fazer menos reqs.
*/
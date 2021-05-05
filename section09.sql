/* SELECAO - PROJECAO - JUNCAO */

/*PROJECAO -> Tudo que voce quer ver na tela */

/*SELECAO -> Filtro da projecao (where), é um subconjunto do conjunto total de 
registro de uma tabela, a clause de selecao é o WHERE */

SELECT NOME, SEXO, EMAIL /*PROJECAO*/
FROM CLIENTE /*ORIGEM*/
WHERE SEXO = 'F' /*SELECAO*/
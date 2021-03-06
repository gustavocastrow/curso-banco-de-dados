/*STORED PROCEDURES: Blocos de programacao que ficam armazenados no banco*/

/*1. Mudar o Delimiter para a SP nao parar no meio */
DELIMITER $

CREATE PROCEDURE NOME()
BEGIN
  PROGRAMACAO...
END
$

CREATE PROCEDURE NOME_EMPRESA()
BEGIN 
  SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;
END
$

/*2. Chamando a procedure */

CALL NOME_EMPRESA()$

DELIMITER ;

CALL NOME_EMPRESA();


/*3. Procedures com parametros */

DELIMITER $

CREATE PROCEDURE CONTA()
BEGIN
  SELECT 10 + 10 AS CONTA;
END
$

CALL CONTA();

/*4. Apagando uma procedure */
DELIMITER ;
DROP PROCEDURE CONTA;

/*5. PROCEDURE COM PARAMETROS */

DELIMITER $

CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
BEGIN
  SELECT NUMERO1 + NUMERO2 AS CONTA;
END
$

CALL CONTA(100, 50)$

USE PROJETO;

CREATE TABLE CURSOS(
  IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
  NOME VARCHAR(30) NOT NULL,
  HORAS INT(3) NOT NULL,
  VALOR FLOAT (10, 2) NOT NULL
);


INSERT INTO CURSOS VALUES(NULL, 'JAVA', 30, 500.00);
INSERT INTO CURSOS VALUES(NULL, 'FUNDAMENTOS DE BANCO DE DADOS', 40, 700.00);


DELIMITER #
CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30),
                           P_HORAS INT (30),
                           P_PRECO FLOAT(10,2))
BEGIN
  INSERT INTO CURSOS VALUES(NULL, P_NOME, P_HORAS, P_PRECO);
END
#

DELIMITER ;

CALL CAD_CURSO('BI SQL SERVER', 35, 3000.00);
CALL CAD_CURSO('POWER BI', 20, 1000.00);
CALL CAD_CURSO('TABLEAU', 305, 1200.00);

/* CRIAR UMA PROCEDURE PARA CONSULTAR CURSOS */

DELIMITER $;
CREATE PROCEDURE CONSULTA_CURSOS()
BEGIN
  SELECT * FROM CURSOS;
END
$

DELIMITER ;

CALL CONSULTA_CURSOS();
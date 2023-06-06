-- Utilize as fun��es DAY, MONTH e YEAR para descobrir o dia, m�s e ano da data: 18/05/2020
DECLARE @varData DATETIME
SET @varData = '18/05/2020'
SELECT
DAY (@varData) AS 'Dia',
MONTH(@varData) AS 'M�s',
YEAR (@varData) AS 'Ano'
--Utilize a fun��o DATEFROMPARTS para obter uma data a partir das informa��es de dia, m�s e ano
DECLARE @varDia INT, @varMes INT, @varAno INT
SET @varDia = 12
SET @varMes = 08
SET @varAno = 1990

SELECT DATEFROMPARTS(@varAno, @varMes, @varDia ) AS 'Data'
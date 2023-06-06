-- Utilize as funções DAY, MONTH e YEAR para descobrir o dia, mês e ano da data: 18/05/2020
DECLARE @varData DATETIME
SET @varData = '18/05/2020'
SELECT
DAY (@varData) AS 'Dia',
MONTH(@varData) AS 'Mês',
YEAR (@varData) AS 'Ano'
--Utilize a função DATEFROMPARTS para obter uma data a partir das informações de dia, mês e ano
DECLARE @varDia INT, @varMes INT, @varAno INT
SET @varDia = 12
SET @varMes = 08
SET @varAno = 1990

SELECT DATEFROMPARTS(@varAno, @varMes, @varDia ) AS 'Data'
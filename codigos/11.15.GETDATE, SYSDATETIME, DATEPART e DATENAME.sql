--GETDATE: Retorna a data/hora atual do sistema
--SYSDATETIME: Retorna a data/hora atual do sistema (mais preciso que a GETDATE)
--DATENAME e DATEPART: Retornam informações (dia, mês, ano, semana, etc) de uma data.
SELECT GETDATE() AS 'Data agora'
SELECT SYSDATETIME() 'Data Agora Precisa'


--DATENAME (Saida -> Tipo texto)
DECLARE @varData DATETIME
SET @varData = GETDATE()

SELECT 
	DATENAME(DAY, @varData) AS 'Dia',
	DATENAME(MONTH, @varData) AS 'Mes',
	DATENAME(YEAR, @varData) AS 'Ano'

--DATEPART (Saida -> Tipo número)
SELECT 
	DATEPART(DAY, @varData) AS 'Dia',
	DATEPART(MONTH, @varData) AS 'Mes',
	DATEPART(YEAR, @varData) AS 'Ano',
	DATEPART(DAYOFYEAR,@varData) AS 'Dia do Ano'  

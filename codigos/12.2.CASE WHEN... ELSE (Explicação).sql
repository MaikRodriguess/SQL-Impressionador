--CASE: A fun��o CASE permite tratar condi��es no SQL
/*
CASE
WHEN teste logico THEN 'resultado1'
ELSE 'resultado2'
END
*/

-- Determine a situa��o do aluno. M�dia >= 6: aprovado. Caso contr�rio: reprovado
DECLARE @varNota FLOAT
SET @varNota = 4.0

SELECT 
	CASE
		WHEN @varNota >= 6.0 THEN 'Aprovado'
		ELSE 'Reprovado'
	END AS 'Situa��o'

-- A data de um produto � '06/06/2023'. Fa�a um teste l�gico para verificar se um produto
-- passou da validade ou n�o. 

DECLARE @varDataVencimento DATETIME, @varDataAtual DATETIME
SET @varDatavencimento = '04/06/2023'
SET @varDataAtual = GETDATE()

SELECT	
	CASE 
		WHEN @varDataVencimento < @varDataAtual THEN 'Produto vencido'
		ELSE 'A vencer'
	END AS 'Validade'

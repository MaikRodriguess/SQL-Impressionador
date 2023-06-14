--CASE: A função CASE permite tratar condições no SQL
/*
CASE
WHEN teste logico THEN 'resultado1'
ELSE 'resultado2'
END
*/

-- Determine a situação do aluno. Média >= 6: aprovado. Caso contrário: reprovado
DECLARE @varNota FLOAT
SET @varNota = 4.0

SELECT 
	CASE
		WHEN @varNota >= 6.0 THEN 'Aprovado'
		ELSE 'Reprovado'
	END AS 'Situação'

-- A data de um produto é '06/06/2023'. Faça um teste lógico para verificar se um produto
-- passou da validade ou não. 

DECLARE @varDataVencimento DATETIME, @varDataAtual DATETIME
SET @varDatavencimento = '04/06/2023'
SET @varDataAtual = GETDATE()

SELECT	
	CASE 
		WHEN @varDataVencimento < @varDataAtual THEN 'Produto vencido'
		ELSE 'A vencer'
	END AS 'Validade'

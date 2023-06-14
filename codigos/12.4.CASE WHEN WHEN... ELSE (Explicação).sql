/*
 Exemplo:
 Crie um c�digo para verificar a nota do aluno e determinar a situa��o:
 Aprovado: nota maior ou igual a 6 - 
 Prova final: nota entre 4 e 6
 Reprovado: nota abaixo de 4
*/
DECLARE @varNota FLOAT
SET @varNota = 3.9
SELECT
CASE
WHEN @varNota >= 6 THEN 'Aprovado'
WHEN @varNota >= 4 THEN 'Prova final'
ELSE 'Reprovado'
END AS Nota


--Classifique o produtos de acordo com o texto:
--Pre�o >= 40000: Luxo
--Pre�o >= 10000 e Pre�o < 40000: Econimico
-- Pre�o < 10000: B�sico

DECLARE @varPreco FLOAT
SET @varPreco = 40000

SELECT 
	CASE
		WHEN @varPreco >= 40000 THEN 'Luxo'
		WHEN @varPreco >= 10000 THEN 'Economico'
		ELSE 'Basico' 
	END AS 'Classifica��o'
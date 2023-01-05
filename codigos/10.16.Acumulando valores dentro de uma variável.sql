-- Acumulando valores em uma variavel 
-- Exemplo: Printe na tela uma lista com os nomes das funcionárias do departamendo de marketing.

SELECT
	FirstName,
	DepartmentName
FROM DimEmployee
WHERE DepartmentName = 'Marketing' AND Gender = 'F'

DECLARE @varLisdaNomes VARCHAR(50)
SET @varLisdaNomes = ''

SELECT 
	@varLisdaNomes = @varLisdaNomes + FirstName + ', '
FROM DimEmployee
WHERE DepartmentName = 'Marketing' AND Gender = 'F'

PRINT LEFT(@varLisdaNomes, DATALENGTH(@varLisdaNomes) - 2)
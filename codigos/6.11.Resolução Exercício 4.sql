SELECT * FROM DimEmployee

-- a) A quantidade total de funcionários do sexo Masculino e do sexo Feminino

SELECT 
	count(Gender) AS 'Homens'
FROM DimEmployee
WHERE Gender = 'M'

SELECT 
	count(Gender) AS 'Mulheres'
FROM DimEmployee
WHERE Gender = 'F'


/* 
b) O funcionário e a funcionária mais antigos receberão uma homenagem. Descubra as 
seguintes informações de cada um deles: Nome, E-mail, Data de Contratação*/

-- FUNCIONÁRIA mais antiga
SELECT
	TOP(1) FirstName AS 'Nome',
	StartDate AS 'Data de Contratação',
	EmailAddress AS 'E-mail'
	
FROM DimEmployee
WHERE Gender = 'F'
Order By StartDate ASC

-- FUNCIONÁRIO mais antigo
SELECT
	TOP(1) FirstName AS 'Nome',
	StartDate AS 'Data de Contratação',
	EmailAddress AS 'E-mail'
	
FROM DimEmployee
WHERE Gender = 'M'
Order By StartDate ASC
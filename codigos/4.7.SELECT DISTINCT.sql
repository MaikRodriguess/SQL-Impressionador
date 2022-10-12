-- 1.1 Retorna todos os valores de todas as colunas da tabela DimProduct 
SELECT * FROM DimProduct

-- 1.2 Retorna os valores distindos da coluna Colorname da tabela DimProduct
SELECT DISTINCT ColorName FROM DimProduct

-- 2.1 Retorna todos os valores de todas as colunas da tabela DimEmployee
SELECT * FROM DimEmployee

-- 2.2 Retorna os valores distindos da coluna DepartmentName da tabela DimEmployee
SELECT 
	DISTINCT DepartmentName
FROM 
	DimEmployee
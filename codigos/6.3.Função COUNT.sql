SELECT * FROM DimProduct

--Total de produtos, forma 1
SELECT 
	COUNT(*) AS 'Total de Produtos'
FROM DimProduct

--Total de produtos, forma 2 
SELECT 
	COUNT(ProductName) AS 'Total de Produtos'
FROM DimProduct


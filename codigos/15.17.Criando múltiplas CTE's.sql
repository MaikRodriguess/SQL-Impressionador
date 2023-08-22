-- CTE: Criando multiplas CTEs
-- Crie 2 CTE`s:
-- 1. A primeira, chamada produtos_contoso, deve conter as seguintes colunas(Dimproduct): ProductKey, ProducName,
-- BrandName
-- 2. A segunda, chamada vendas_top100, deve ser um top 100 vendas mais recentes, consideramdo as seguintes colunas (FactSales): 
-- SalesKey, ProductKey, DateKey, SalesQuantity 

-- Por fim, faça um INNER JOIN dessas tabelas

WITH produtos_contoso AS (
SELECT 
	ProductKey,
	ProductName,
	BrandName
FROM 
	DimProduct
WHERE BrandName = 'Contoso'
), 
vendas_top100 AS (
SELECT TOP(100)	
	SalesKey,
	ProductKey,
	DateKey, 
	SalesQuantity
FROM 
	factsales
ORDER BY DateKey DESC
)

SELECT * FROM vendas_top100
INNER JOIN produtos_contoso
	ON vendas_top100.ProductKey=produtos_contoso.ProductKey
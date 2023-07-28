-- Subqueries: FROM
-- Retornar a quantidade total de produtos da marca Contoso
-- Modo 1
SELECT 
	COUNT(*)
FROM
	DimProduct
WHERE BrandName = 'Contoso'

-- Modo 2
SELECT 
	COUNT(*)
FROM	
	(SELECT * FROM DimProduct WHERE BrandName = 'Contoso') AS T
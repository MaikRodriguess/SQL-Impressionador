-- Todos os produtos de uma marca especifica
--SELECT * FROM DimProduct
--SELECT DISTINCT BrandName FROM DimProduct

SELECT 
	*
FROM DimProduct
WHERE BrandName = 'Fabrikam'
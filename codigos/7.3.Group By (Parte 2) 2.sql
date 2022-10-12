SELECT 
	BrandName AS 'Marca', 
	AVG(UnitCost) AS 'Média Custo Unitário'
FROM DimProduct
GROUP BY BrandName
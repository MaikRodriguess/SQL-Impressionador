SELECT * FROM DimProduct

SELECT 
	BrandName AS 'Nome da Marca',
	COUNT(*) AS 'Qtd, Total'
FROM
	DimProduct
GROUP BY BrandName
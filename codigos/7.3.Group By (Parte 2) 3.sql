SELECT
	ClassName AS 'Classe', 
	MAX(UnitPrice) AS 'Máximo Preço'
FROM DimProduct
GROUP BY ClassName
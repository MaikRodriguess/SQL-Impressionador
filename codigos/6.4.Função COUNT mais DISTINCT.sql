SELECT * FROM DimProduct 

--Quantidade de marcas e cores distintas
SELECT 
	COUNT(DISTINCT BrandName) AS 'Qtd. Marcas',
	COUNT(DISTINCT ColorName) AS 'Qtd. Cores'
FROM DimProduct



SELECT * FROM DimStore

--Filtra quantidade de produtos por marca da classe 'Economy' acima de 200
SELECT 
	BrandName AS 'Marca',
	COUNT(BrandName) AS 'Total Marca'		 
FROM DimProduct
WHERE ClassName = 'Economy' -- Filtra a tabela original, antes do agrupamento
GROUP BY BrandName 
HAVING COUNT(BrandName) >= 200 -- Filtra a tabela depois de agrupada 

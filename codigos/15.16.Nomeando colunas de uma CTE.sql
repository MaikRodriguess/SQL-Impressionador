-- CTE: Calcula agrega��es 
-- Crie uma CTE que seja o resultado do agrupamento de total de produdos por marca. Fa�a uma 
-- m�dia de produtos por marca. 

WITH cte (Marcar, Total) AS (
SELECT 
	BrandName,
	COUNT(*) 
FROM 
	DimProduct
GROUP BY BrandName
)

SELECT 
	Marcar,
	Total
FROM cte
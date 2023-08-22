-- CTE: Calcula agregações 
-- Crie uma CTE que seja o resultado do agrupamento de total de produdos por marca. Faça uma 
-- média de produtos por marca. 

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
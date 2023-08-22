-- CTE: Calcula agregações 
-- Crie uma CTE que seja o resultado do agrupamento de total de produdos por marca. Faça uma 
-- média de produtos por marca. 

WITH cte AS (
SELECT 
	BrandName,
	COUNT(*) AS 'Total'
FROM 
	DimProduct
GROUP BY BrandName
)

SELECT * FROM cte
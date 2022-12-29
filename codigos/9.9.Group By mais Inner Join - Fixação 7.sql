SELECT * FROM FACTSTRATEGYPLAN
SELECT * FROM DimScenario

SELECT 
	ScenarioDescription AS 'Cenário',
	SUM(Amount) AS Total
FROM 
	FactStrategyPlan
INNER JOIN DimScenario 
	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey
WHERE ScenarioDescription IN ('Actual','Budget')
GROUP BY ScenarioDescription

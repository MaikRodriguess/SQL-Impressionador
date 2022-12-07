SELECT * FROM DimScenario

SELECT 
	StrategyPlanKey,
	Datekey,
	ScenarioName,
	Amount
FROM FactStrategyPlan FSP (NOLOCK)
	INNER JOIN DimScenario S
		ON FSP.ScenarioKey = S.ScenarioKey

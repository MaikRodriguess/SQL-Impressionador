/*5. A tabela FactStrategyPlan resume o planejamento estratégico da empresa. Cada linha 
representa um montante destinado a uma determinada AccountKey.
*/

-- a) Faça um SELECT das 100 primeiras linhas de FactStrategyPlan para reconhecer a tabela.

SELECT * FROM FactStrategyPlan

/*
b) Faça um INNER JOIN para criar uma tabela contendo o AccountName para cada 
AccountKey da tabela FactStrategyPlan. O seu SELECT final deve conter as colunas:
• StrategyPlanKey
• DateKey
• AccountName
• Amount
*/
select top 10 * from FactStrategyPlan
select top 10 * from DimAccount -- 

SELECT TOP (100)
	StrategyPlanKey,
	DateKey,
	AccountName,
	Amount
FROM FactStrategyPlan
	INNER JOIN DimAccount 
		ON DimAccount.AccountKey = FactStrategyPlan.AccountKey 
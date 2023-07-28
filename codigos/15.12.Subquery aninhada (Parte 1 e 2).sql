--Subqueries
-- Descubra os nomes dos clientes que ganham o segundo maior salário

SELECT 
	*
FROM 
	DimCustomer
WHERE CustomerType = 'Person'
ORDER BY YearlyIncome DESC

SELECT 
	DISTINCT TOP(2) 
	YearlyIncome
FROM 
	DimCustomer
WHERE CustomerType = 'Person'
ORDER BY YearlyIncome DESC

SELECT
	CustomerKey,
	FirstName,
	LastName,
	YearlyIncome
FROM 
	DimCustomer
WHERE YearlyIncome = (
					  SELECT 
						MAX(YearlyIncome)
					  FROM
						DimCustomer
					  WHERE YearlyIncome < (
							SELECT
								MAX(YearlyIncome)
							FROM 
								DimCustomer
							WHERE CustomerType = 'Person'
						  	)
					)
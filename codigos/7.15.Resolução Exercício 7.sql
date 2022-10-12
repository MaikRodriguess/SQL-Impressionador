SELECT * FROM DIMCUSTOMER

SELECT 
	Gender AS 'Sexo', 
	COUNT(Gender) AS 'Qtd. Cliente',
	AVG(YearlyIncome) AS 'Média Salarial'

FROM DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender
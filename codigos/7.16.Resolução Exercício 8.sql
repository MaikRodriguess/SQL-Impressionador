SELECT * FROM DimCustomer

SELECT 
	Education AS 'Nível Escolar',
	Count(CustomerKey) AS 'Qtd. Clientes',
	AVG(YearlyIncome) AS 'Média Salarial'

FROM
	DimCustomer
WHERE
	Education IS NOT NULL
GROUP BY Education
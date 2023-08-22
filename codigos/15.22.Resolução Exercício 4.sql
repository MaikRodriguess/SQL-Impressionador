/*
4. Faça uma query que retorne os clientes que recebem um salário anual acima da média. 
A sua query deve retornar as colunas CustomerKey, FirstName, LastName, EmailAdress e YarlyIncome. 

Obs: considere apenas os clientes que são 'Pessoas Fisicas'
*/



SELECT
	 CustomerKey,
	 FirstName,
	 LastName,
	 EmailAddress,
	 YearlyIncome
FROM DimCustomer
WHERE 
	CustomerType = 'Person'
	AND YearlyIncome > (SELECT 
							AVG(YearlyIncome) 
						FROM
							DimCustomer
						WHERE 
							CustomerType = 'Person')
ORDER BY YearlyIncome


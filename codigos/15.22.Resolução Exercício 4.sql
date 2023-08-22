/*
4. Fa�a uma query que retorne os clientes que recebem um sal�rio anual acima da m�dia. 
A sua query deve retornar as colunas CustomerKey, FirstName, LastName, EmailAdress e YarlyIncome. 

Obs: considere apenas os clientes que s�o 'Pessoas Fisicas'
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


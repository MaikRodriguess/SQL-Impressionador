-- Concat: Junta textos em uma palavra

SELECT 
	firstname,
	LastName,
	CONCAT(FirstName, '', LastName) AS 'Nome Completo'
FROM
	DimCustomer
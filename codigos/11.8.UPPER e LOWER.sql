-- UPPER -> Transforma textos em maiuscula 
-- LOWER -> Transforma textos em minuscula 

SELECT 
	FirstName,
	UPPER(FirstName) AS 'NOME',
	LOWER(FirstName) AS 'nome',
	EmailAddress 
FROM	
	DimCustomer
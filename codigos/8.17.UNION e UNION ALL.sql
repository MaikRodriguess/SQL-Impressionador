--UNION - Realiza a união de tabelas eliminando duplicadas
-- UNION ALL - Realiza a união de tabelas NÃO eliminando duplicadas
SELECT 
	FirstName,
	BirthDate, 
	Gender 
FROM 
	DimCustomer
WHERE Gender = 'M'

UNION

SELECT 
	FirstName,
	BirthDate,
	Gender
FROM 
	DimCustomer
WHERE Gender = 'F'
UNION
SELECT 
	FirstName,
	BirthDate,
	Gender
FROM 
	DimCustomer
WHERE Gender is null
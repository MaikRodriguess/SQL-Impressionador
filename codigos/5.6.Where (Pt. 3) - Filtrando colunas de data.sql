SELECT TOP 1000
	*
FROM 
	DimCustomer

WHERE BirthDate >= '1970-12-31'
ORDER BY BirthDate DESC

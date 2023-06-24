-- ALTER VIEW 
-- a) altere a view criada no exemplo la para  incluir apenas  os clientes do sexo femino
SELECT * FROM vwClientes

ALTER VIEW vwClientes AS 
SELECT 
	FirstName AS 'Nome',
	EmailAddress AS 'Email', 
	BirthDate AS 'Aniversário',
	Gender as 'Sexo'
FROM
	DimCustomer
WHERE Gender = 'F'
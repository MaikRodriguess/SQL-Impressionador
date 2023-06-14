--e utilize o CASE para criar uma  coluna com a informacao de 'Masculino' ou 'Feminino'.

SELECT 
	CustomerKey AS 'ID Cliente',
	FirstName AS 'Nome',
	Gender AS 'Sexo',
	CASE 
		WHEN Gender = 'M' THEN 'Masculino'
		WHEN Gender = 'F' THEN 'Feminino'
		ELSE 'Empresa'
	END AS 'Sexo (Case)'
FROM
	DimCustomer

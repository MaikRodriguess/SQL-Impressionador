--Fa�a um SELECT das colunas CustomerKey, FirstName e Gender na tabela DimCustomer 
--e utilize o CASE para criar uma 4� coluna com a informa��o de 'Masculino' ou 'Feminino'.

SELECT 
	CustomerKey AS 'ID Cliente',
	FirstName AS 'Nome',
	Gender AS 'Sexo',
	CASE 
		WHEN Gender = 'M' THEN 'Masculino'
		ELSE 'Feminino'
	END AS 'Sexo (Case)'
FROM
	DimCustomer

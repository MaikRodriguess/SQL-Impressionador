/*
2. Crie uma View contendo as informa��es de Nome Completo (FirstName + 
LastName), G�nero (por extenso), E-mail e Renda Anual (formatada com R$).
Utilize a tabela DimCustomer. Chame essa View de vwClientes.
*/

CREATE VIEW vwClientes AS
SELECT 
	CONCAT(FirstName, ' ',LastName) AS 'Nome',
	REPLACE(REPLACE(Gender,'M', 'Masculino'), 'F', 'Feminino') AS 'G�nero',
	EmailAddress AS 'E-mail',
	FORMAT(YearlyIncome, 'C') AS 'Renda Anual'
FROM 
	DimCustomer
GO
	SELECT * FROM vwClientes
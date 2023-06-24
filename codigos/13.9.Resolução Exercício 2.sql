/*
2. Crie uma View contendo as informações de Nome Completo (FirstName + 
LastName), Gênero (por extenso), E-mail e Renda Anual (formatada com R$).
Utilize a tabela DimCustomer. Chame essa View de vwClientes.
*/

CREATE VIEW vwClientes AS
SELECT 
	CONCAT(FirstName, ' ',LastName) AS 'Nome',
	REPLACE(REPLACE(Gender,'M', 'Masculino'), 'F', 'Feminino') AS 'Gênero',
	EmailAddress AS 'E-mail',
	FORMAT(YearlyIncome, 'C') AS 'Renda Anual'
FROM 
	DimCustomer
GO
	SELECT * FROM vwClientes
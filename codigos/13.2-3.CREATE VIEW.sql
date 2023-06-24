/*
Quando falamos em Views, existem 3 ações envolvidas:
1. Criação de uma View
2. Alteração de uma View
3. Exclusão de uma View

Para cada uma dessas ações, temos um comando associado:
1. CREATE VIEW
2. ALTER VIEW
3. DROP VIEW*/
-- 1. CREATE VIEW
-- a) Crie uma view contendo as seguintes informações da tabela DimCustomer: 
--  FirstName, EmailAddress e BirthDate. Chame essa view de vwClientes.

CREATE VIEW vwClientes AS
SELECT 
	FirstName AS 'Nome',
	EmailAddress AS 'Email', 
	BirthDate AS 'Aniversário'
FROM
	DimCustomer
GO
	select * from vwClientes


	-- b) Crie uma View contendo as seguintes informações da tabela DimProduct: 
	-- ProductKey, ProductName, ProductSubcategoryKey, BrandName e UnitPrice. Chame essa view de vwProdutos.
GO
CREATE VIEW vwProdudos AS
SELECT 
	ProductName AS 'Produto',
	ProductSubcategoryKey AS 'ID Produto',
	BrandName AS 'Marca', 
	UnitPrice AS 'Preço'
FROM
	DimProduct
GO
SELECT * FROM vwProdudos
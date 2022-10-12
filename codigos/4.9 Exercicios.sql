-- 1. a) Verificar se existem 2.517 produtos cadastrados na base
--    b) Verificar se a empresa ainda tem 19.500 clientes
-- 2. Listas Cliente e datas de Aniversário
--    a)  Selecione as colunas: CustomerKey, FirstName, EmailAddress, BirthDate da tabela
--		  dimCustomer
--    b) Renomeie as colunas dessa tabela usando o alias(comando AS)
-- 3. a) 100 primeiros cliente da tabela dimCustomer
--    b) 20% dos cliente primeiros cliente da tabela dimCustomer
-- 4. Listar o nome dos fornecedores e renomear a coluna da tabela dimCustomer
-- 5. Descobrir se existem produtos que ainda não foram vendidos


-- 1. A) 
SELECT * FROM DimProduct

-- 1. B) 
SELECT * FROM DimCustomer

--2. A) E B)
SELECT
	CustomerKey AS 'Registro do Cliente',
	FirstName AS 'Primeiro Nome',
	EmailAddress AS 'E-mail', 
	BirthDate AS 'Aniversario' 
FROM 
	DimCustomer

--3. A) 
SELECT TOP (100) * FROM DimCustomer
-- Nossa base tem 18.869 clientes atualmente. Ou seja, moenos do que o mês anterior

--B) 
SELECT TOP (20) PERCENT
	*
FROM 
	DimCustomer
	
--C) e D) 
SELECT TOP(100)
	FirstName AS 'Nome',
	EmailAddress AS 'E-mail',
	BirthDate AS 'Data de Nascimento'
FROM
	DimCustomer

--4. 
SELECT 
	DISTINCT
	Manufacturer AS 'Nome de Fornecedores'
FROM
	DimProduct

--5.

SELECT
	*
FROM 
	DimProduct

SELECT 
	DISTINCT
	ProductKey AS 'Produtos cadastrados'
FROM
	FactSales
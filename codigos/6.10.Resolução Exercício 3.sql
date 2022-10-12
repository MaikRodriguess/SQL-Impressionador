-- Tabela utilizada 
SELECT * FROM DimStore

--a) Quantos funcionários tem a loja com mais funcionários?
SELECT 
	MAX(EmployeeCount) AS 'Loja com mais funcionários'
FROM DimStore

--b) Qual é o nome dessa loja?
SELECT 
	TOP(1) StoreName AS 'Nome da loja',
		   EmployeeCount AS 'Qtd. Funcionário' 
FROM DimStore
ORDER BY EmployeeCount DESC

--c) Quantos funcionários tem a loja com menos funcionários?
SELECT 
	MIN(EmployeeCount) AS 'Loja Com Menos Funcionário'
FROM DimStore

--d) Qual é o nome dessa loja?
SELECT
	TOP(1) StoreName AS 'Nome da loja',
		   EmployeeCount AS 'Qtd. Funcionários'
FROM DimStore
WHERE EmployeeCount IS NOT NULL
ORDER BY EmployeeCount ASC

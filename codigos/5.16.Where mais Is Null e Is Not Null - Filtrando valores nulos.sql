--Filtrar todas as EMPRESAS na coluna CompanyName 
SELECT * FROM DimCustomer
WHERE CompanyName IS NOT NULL 

--Filtrando todos CLIENTES na coluna CompanyName 
SELECT * FROM DimCustomer
WHERE CompanyName IS NULL
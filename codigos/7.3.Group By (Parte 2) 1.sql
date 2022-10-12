SELECT * FROM DimStore

SELECT 
	StoreType AS 'Tipo de Loja',
	SUM(EmployeeCount) AS 'Funcionários'
FROM
	DimStore
GROUP BY StoreType
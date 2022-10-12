SELECT * FROM DimStore
--Tipo de loja por número de funcionários
SELECT 
	StoreType AS 'Tipo de Loja',
	SUM(EmployeeCount) AS 'Funcionários'
FROM
	DimStore
GROUP BY StoreType
ORDER BY SUM(EmployeeCount)
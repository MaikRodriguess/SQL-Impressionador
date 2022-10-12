SELECT * FROM DimEmployee

SELECT 
	DepartmentName AS 'Departamento',
	COUNT(EmployeeKey) AS 'Qtd. Funcionários'

FROM
	DimEmployee
WHERE 
	EndDate IS NULL
GROUP BY DepartmentName

--Funcionários com data de contratação do ano 2000
SELECT * FROM DimEmployee
WHERE HireDate BETWEEN '2000-01-01' AND '2000-12-31' 
--Também é possivel fazer como abaixo
SELECT * FROM DimEmployee
WHERE HireDate >= '2000-01-01' AND HireDate <= '2000-12-31'

-- Somente os Funcionários que NÂO estão com data de contratação no ano 2000
SELECT * FROM DimEmployee
WHERE HireDate NOT BETWEEN '2000-01-01' AND '2000-12-31' 


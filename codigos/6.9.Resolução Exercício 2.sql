-- Usa a função AVG para realizar uma média na coluna YearlyIncome somente quando Occupation = Professional 
SELECT
	AVG(YearlyIncome) AS 'Média Salarial Profissional'
FROM DimCustomer
WHERE Occupation = 'Professional'
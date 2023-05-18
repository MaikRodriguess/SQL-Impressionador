-- REPLACE: Substituição

SELECT REPLACE('O Excel é o melhor', 'Excel', 'SQL')

SELECT * FROM DimCustomer

--Para substituir duas vezes em uma mesca coluna
SELECT 
	FirstName,
	Gender,
	REPLACE(REPLACE(Gender, 'M', 'Masculino'), 'F', 'Feminino') AS 'Feminino' 
FROM
	DimCustomer
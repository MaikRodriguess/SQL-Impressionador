
-- CASE Aninhado

SELECT * FROM DimEmployee
-- Cargos (Title):
-- Sales Group Manager
-- Sales Region Manager
-- Sales State Manager
-- Sales Store Manager

--Assalariado (SalariedFlag)?
-- SalariedFlag = 0: não é assalariado
-- SalariedFlag = 1: é assalariado
-- Situação: Cálculo do bônus

--Sales Group Manager: 30%                Se for assalariado, 30%; Se não, 20%.
-- Sales Region Manager: 15%
-- Sales State Manager: 7%
-- Sales Store Manager: 2%

SELECT
	FirstName,
	Title, 
	SalariedFlag,
	CASE
		WHEN Title = 'Sales Group Manager' THEN 
		CASE
			WHEN SalariedFlag = 1 THEN 0.30 
			ELSE 0.20
		END
		WHEN Title = 'Sales Region Manager' THEN 0.15
		WHEN Title = 'Sales State Manager' THEN 0.07
		ELSE 0.2
	END AS e
FROM
	DimEmployee
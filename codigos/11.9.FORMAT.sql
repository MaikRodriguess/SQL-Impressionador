-- Format: Formatar valores com uma formata��o

--1. Formata��o de n�mero
--5123

-- Geral 
SELECT FORMAT(5123, 'G')

-- N�mero
SELECT FORMAT(5123, 'N')

-- Moeda
SELECT FORMAT(5123, 'C')

-- 2.Formata��o Data
-- 17/05/2023

-- dd/MM/yyyy

SELECT FORMAT(CAST('17/05/2023' AS DATETIME), 'dd/MM/yyyy')

-- Dia
SELECT FORMAT(CAST('17/05/2023' AS DATETIME), 'dd')

-- M�s
SELECT FORMAT(CAST('17/05/2023' AS DATETIME), 'MMMM')

-- Ano
SELECT FORMAT(CAST('17/05/2023' AS DATETIME), 'yyyy')

-- 3. Formata��o personalizada
-- 1234567 --> 12-34-567

SELECT FORMAT(1234567, '##-##-###')
-- Format: Formatar valores com uma formatação

--1. Formatação de número
--5123

-- Geral 
SELECT FORMAT(5123, 'G')

-- Número
SELECT FORMAT(5123, 'N')

-- Moeda
SELECT FORMAT(5123, 'C')

-- 2.Formatação Data
-- 17/05/2023

-- dd/MM/yyyy

SELECT FORMAT(CAST('17/05/2023' AS DATETIME), 'dd/MM/yyyy')

-- Dia
SELECT FORMAT(CAST('17/05/2023' AS DATETIME), 'dd')

-- Mês
SELECT FORMAT(CAST('17/05/2023' AS DATETIME), 'MMMM')

-- Ano
SELECT FORMAT(CAST('17/05/2023' AS DATETIME), 'yyyy')

-- 3. Formatação personalizada
-- 1234567 --> 12-34-567

SELECT FORMAT(1234567, '##-##-###')
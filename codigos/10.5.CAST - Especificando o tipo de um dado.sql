-- 1) SQL_VARIANT_PROPERTY 

SELECT 10 AS 'Número'
SELECT 45.50 AS 'Decimal'
SELECT 'Marcus' AS 'Nome'
SELECT '20/06/2021' AS 'Data'

SELECT SQL_VARIANT_PROPERTY(10,'BaseType')
SELECT SQL_VARIANT_PROPERTY(45.50,'BaseType')
SELECT SQL_VARIANT_PROPERTY('Marcus','BaseType')
SELECT SQL_VARIANT_PROPERTY('20/06/2021','BaseType')

-- 2) CAST: Função para especificar o tipo dos dados. 
-- int: inteiro, float: decimal, varchar: string/texto, datetime: data e hora

SELECT SQL_VARIANT_PROPERTY(CAST(21.45 AS INT), 'BaseType')

SELECT CAST(21.45 AS INT)
SELECT CAST(21.45 AS FLOAT)
SELECT CAST(18.7 AS FLOAT)
SELECT CAST('15.6' AS FLOAT)
SELECT CAST('20/06/2021' AS DATETIME)

-- Exercício 1: Crie uma consulta juntando o texto 'O preço do pastel é: ' com valor 30.99

SELECT 'O preço do pastel é: ' + CAST(30.99 AS VARCHAR(50))

-- Exercício 2: Adicione 1 dia à data '20/06/2021'

SELECT CAST('20/06/2021' AS DATETIME) + 1
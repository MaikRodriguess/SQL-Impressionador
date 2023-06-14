
--Função IIF: Alternativa ao CASE
--Exemplo 1: Qual é a categoria de risco do projeto abaixo, de acordo com a sua nota:
--Risco Alto: Classificacao >= 5
--Risco Baixo: Classificacao < 5
DECLARE @varclassificacao INT
SET @varClassificacao = 3

SELECT 
	IIF(
	@varclassificacao >= 5,
	'Risco Alto',
	'Risco Baixo')


--Exemplo 2: Crie uma coluna única de 'Cliente', contendo o nome do Cliente, seja ele uma pessoa empresa. Traga também a coluna de Customerkey e CustomerType.
SELECT * FROM DimCustomer

SELECT 
	CustomerKey,
	CustomerType,
	IIF(
		CustomerType = 'Person',
		FirstName,
		CompanyName) AS 'Cliente'
FROM DimCustomer
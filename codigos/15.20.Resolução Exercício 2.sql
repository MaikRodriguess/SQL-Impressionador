/* 2. setor de controle de produtos quer fazer uma análise para descobrir quais são os produtos que possuem um Unit Price maior que o UnitPrice do produto de ID igual a 1893.
a) A sua consulta resultante deve conter as colunas ProductKey, ProductName e UnitPrice da tabela DimProduct.
b)Nessa query você também deve retornar uma coluna extra, que informe o Unit Price do produto 1893. */



SELECT	
	ProductKey,
	ProductName,
	UnitPrice,
	(SELECT	UnitPrice FROM DimProduct WHERE ProductKey = 1893) AS 'R$: 1893'
FROM 
	DimProduct
WHERE UnitPrice > (SELECT	
						UnitPrice
					FROM 
						DimProduct
					WHERE ProductKey = 1893
					)
ORDER BY UnitPrice 
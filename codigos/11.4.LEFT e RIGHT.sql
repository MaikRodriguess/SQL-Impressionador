-- LEFT: Extrai uma determinada quantidade de caracteres da esquerda para direita
-- RIGHT: Extrai uma determinada quantidade de caracteres da direita para esquerda

SELECT LEFT('Product0101001', 7)
SELECT RIGHT('Product0101001', 7)


SELECT 
	ProductName,
	UnitPrice,
	LEFT(StyleName, 7) AS 'COD1',
	RIGHT(StyleName, 7) AS 'COD2'
FROM 
	DimProduct

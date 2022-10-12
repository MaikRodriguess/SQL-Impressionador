SELECT * FROM DimProduct

SELECT TOP(1)
UnitPrice
FROM
DimProduct
ORDER BY UnitPrice DESC

--Filtra precos maiores ou iguais a 2000
SELECT 
	ProductName 'Produto', 
	UnitPrice 'Preco'
FROM
DimProduct
WHERE UnitPrice >= 2000


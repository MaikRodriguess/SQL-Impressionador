SELECT 
	ProductKey AS 'IDs',
	ProductDescription AS 'Produto',
	UnitPrice AS 'Preço'

FROM DimProduct
WHERE 
ProductDescription LIKE '%LCD%'
ORDER BY UnitPrice DESC
--EXISTS 
-- Retorna uma tabela com todos os produtos (ID Produtos e nom Produto) que possuem alguma venda no dia 
-- 01/01/2007 

SELECT COUNT(*) FROM DimProduct

SELECT TOP(100) * FROM FactSales


SELECT 
	productKey,
	ProductName
FROM 
	DimProduct
WHERE EXISTS(
	SELECT 
		ProductKey
	FROM 
		FactSales
	WHERE 
		DateKey = '01/01/2007'
		AND FactSales.ProductKey = DimProduct.ProductKey
	)

--Subqueries: SELECT 
--Retornar uma tabela com todos os produtos (ID produto e nome produto) e também 
--o total de vendas para cada produto

SELECT 
	ProductKey,
	ProductName,
	(SELECT COUNT(ProductKey) FROM FactSales WHERE FactSales.ProductKey=DimProduct.ProductKey) AS 'Qtd. Produtos'
FROM
	DimProduct
ORDER BY (SELECT COUNT(ProductKey) FROM FactSales WHERE FactSales.ProductKey=DimProduct.ProductKey)

--Outra forma de fazer usando um join
SELECT 
	P.ProductKey,
	ProductName,
	COUNT(P.ProductKey)
FROM
	DimProduct P
INNER JOIN FactSales FS	
	ON FS.ProductKey = P.ProductKey
GROUP BY P.ProductKey, ProductName
ORDER BY COUNT(P.ProductKey)

	
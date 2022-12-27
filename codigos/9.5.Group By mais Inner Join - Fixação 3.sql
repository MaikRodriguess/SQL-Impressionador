/*
3. Crie um agrupamento de quantidade vendida (SalesQuantity) por categoria do produto 
(ProductCategoryName). Obs: Você precisará fazer mais de 1 INNER JOIN, dado que a relação 
entre FactSales e DimProductCategory não é direta.
*/

SELECT 
	ProductCategoryName AS 'Categoria',
	SUM(SalesQuantity) AS 'Total de vendas'
FROM
	DimProduct
INNER JOIN FactSales 
	ON DimProduct.ProductKey = FactSales.ProductKey
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
INNER JOIN DimProductCategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
GROUP BY ProductCategoryName
ORDER BY SUM(SalesQuantity) DESC
-- Os produtos da categoria 'TV and Video' ter�o um desconto de 10%
-- Se al�m de ser da categoria 'TV and Video', o produto for da subcategoria 'Televisions', receber� mais 5%.
--Total, 15%
SELECT
	Productkey,
	ProductName,
	ProductCategoryName,
	ProductSubcategoryName,
	UnitPrice,
	CASE WHEN ProductCategoryName = 'TV and Video' 
		THEN 0.10 ELSE 0 END
	+ CASE	WHEN ProductSubcategoryName  = 'Televisions'
		THEN 0.05 ELSE 0 END AS 'Desconto'

FROM DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey 
	INNER JOIN DimProductCategory
		ON DimProductSubcategory. ProductCategoryKey = DimProductCategory.ProductCategoryKey
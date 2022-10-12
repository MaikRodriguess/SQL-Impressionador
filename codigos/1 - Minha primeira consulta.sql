SELECT 
	*
FROM DimProduct 
	INNER JOIN DimProductCategory
	ON DimProduct.ProductSubcategoryKey = DimProductCategory.ProductCategoryLabel

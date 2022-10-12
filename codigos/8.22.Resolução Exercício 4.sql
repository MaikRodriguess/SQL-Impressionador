/*
4. Complementa a tabela DimProduct com a informação de ProductCategoryDescription. Utilize 
o LEFT JOIN e retorne em seu SELECT apenas as 5 colunas que considerar mais relevantes
*/

SELECT * FROM DimProduct
SELECT * FROM DimProductCategory
SELECT * FROM DimProductSubcategory

SELECT
	ProductKey AS 'ID Produto',
	ProductName AS 'Nome',
	ProductCategoryDescription AS 'Descrição',
	BrandName AS 'Marca',
	ClassName AS 'ClassName'

FROM DimProduct 
	LEFT JOIN  DimProductSubcategory 
		ON DimProduct.ProductSubcategorykey = DimProductSubcategory.ProductSubcategorykey
	LEFT JOIN DimProductCategory 
		ON DimProductCategory.ProductCategoryKey = DimProductSubcategory.ProductCategoryKey
	
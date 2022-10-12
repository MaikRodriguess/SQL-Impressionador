/*2. Identifique uma coluna em comum entre as tabelas DimProductSubcategory e 
DimProductCategory. Utilize essa coluna para complementar informações na tabela 
DimProductSubcategory a partir da DimProductCategory. Utilize o LEFT JOIN.*/

SELECT * FROM DimProductCategory
SELECT * FROM DimProductSubcategory


SELECT 
	ProductSubcategoryKey AS 'ID Subcategoria',
	ProductSubcategoryName AS 'Subcategoria',
	ProductCategoryName AS 'Categoria'
FROM
	DimProductSubcategory
	LEFT JOIN DimProductCategory
		ON DimProductCategory.ProductCategoryKey  = DimProductSubcategory.ProductCategoryKey
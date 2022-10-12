/*1. Utilize o INNER JOIN para trazer os nomes das subcategorias dos produtos, da tabela 
DimProductSubcategory para a tabela DimProduct.*/

SELECT * FROM DIMPRODUCT
SELECT * FROM DimProductSubcategory

SELECT 
	DimProduct.ProductKey AS 'ID Produto',
	DimProduct.ProductName AS 'Produto', 
	ProductSubcategoryName AS 'Subcategoria',
	DimProduct.ClassName AS 'Classe'
FROM 
	DIMPRODUCT (NOLOCK)
	INNER JOIN DimProductSubcategory (NOLOCK)
		ON DimProductSubcategory.Productsubcategorykey = DIMPRODUCT.Productsubcategorykey
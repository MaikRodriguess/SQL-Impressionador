/*
9. Faça um agrupamento de quantidade de produtos por ProductSubcategoryName. Leve em 
consideração em sua análise apenas a marca Contoso e a cor Silver
*/
 

SELECT
	ProductSubcategoryName AS 'Subcategoria',
	COUNT(*) AS 'Quantidade'
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
WHERE BrandName = 'Contoso' AND ColorName = 'Silver'
GROUP BY ProductSubcategoryName
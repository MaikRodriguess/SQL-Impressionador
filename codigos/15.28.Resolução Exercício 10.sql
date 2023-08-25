
/* 18. Crie duas CTES:
(i) a primeira deve conter as colunas ProductKey, ProductName, ProductSubcategoryKey,
BrandName e UnitPrice, da tabela DimProduct, mas apenas os produtos da marca Adventure Works.
Chame essa CTE de CTE_Produtos AdventureWorks.
(ii) a segunda deve conter as colunas ProductSubcategoryKey, ProductSubcategoryName,
da tabela DimProductSubcategory mas apenas para as subcategorias 'Televisions' e 'Monitors'.
Chame essa CTE de CTE Categoria Televisions EMonitors.

Faça um Join entre essas duas CTES, e o resultado deve ser uma query contendo
todas as colunas das duas tabelas. Observe nesse exemplo a diferença entre o LEFT JOIN 
e o INNER JOIN.
*/

WITH CTE_Produtos_AdventureWorks AS(
	SELECT
		ProductKey,
		ProductName, 
		ProductSubcategoryKey,
		BrandName,
		UnitPrice
	FROM DimProduct
	WHERE BrandName = 'Adventure Works'
	),
CTE_Categoria_Televisions_EMonitors AS(
	SELECT
		ProductSubcategoryKey,
		ProductSubcategoryName
	FROM DimProductSubcategory
	WHERE ProductSubcategoryName IN ('Televisions', 'Monitors')
	)
SELECT 
	* 
FROM 
	CTE_Produtos_AdventureWorks AS PAW
LEFT JOIN CTE_Categoria_Televisions_EMonitors AS CTN
	ON PAW.ProductSubcategoryKey = CTN.ProductSubcategoryKey
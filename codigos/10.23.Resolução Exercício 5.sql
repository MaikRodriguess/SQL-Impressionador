/*5. Você precisa criar uma consulta para mostrar a lista de produtos da tabela DimProduct para
uma subcategoria específica: ‘Lamps’.
Utilize o conceito de variáveis para chegar neste resultado*/


DECLARE @varProdutoKey INT, 
		@varCategoria VARCHAR(30)

-- Armazena a key da categoria lamps
SET @varCategoria = 'Lamps'
SET @varProdutoKey = (SELECT ProductSubcategoryKey FROM DimProductSubcategory where ProductSubcategoryName = @varCategoria)

-- Lista produtos da categoria lamps
SELECT 
	*
FROM DimProduct
WHERE ProductSubcategoryKey = @varProdutoKey

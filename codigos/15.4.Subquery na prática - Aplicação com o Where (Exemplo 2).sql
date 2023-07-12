/*
No exemplo 2, queremos filtrar nossa tabela DimProduct e retornar os 
produtos da categoria 'Televisions'. Porém, não temos a informação de 
Nome da Subcategoria na tabela DimProduct. Dessa forma, precisaremos criar
um SELECT que descubra o ID da categoria Televisions', e passar esse resultado 
como o valor que queremos filtrar dentro do WHERE.
*/
*/
SELECT * FROM DimProduct
WHERE ProductSubcategoryKey = 
	(SELECT ProductSubcategoryKey FROM DimProductSubcategory 
		WHERE ProductSubcategoryName = 'Televisions' )
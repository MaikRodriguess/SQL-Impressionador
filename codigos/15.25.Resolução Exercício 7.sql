/*
7. Voc� dever� criar uma consulta para o setor de vendas que mostre as seguintes
colunas da tabela DimProduct:

ProductKey,
ProductName,
BrandName, 
UnitPrice,
M�dia de UnitPrice
*/

SELECT 
	ProductKey,
	ProductName,
	BrandName, 
	UnitPrice,
	ROUND((SELECT AVG(UnitPrice) FROM DimProduct), 2) AS 'M�dia UnitPrice'
FROM
	DimProduct

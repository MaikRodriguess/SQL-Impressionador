/*
b) Feito isso, faça um agrupamento de total vendido (SalesQuantity) por ID do produto
e descubra quais foram os top 3 produtos mais comprados pelo cliente da letra a).
*/

SELECT * FROM FactOnlineSales

SELECT TOP(3)
	ProductKey AS 'ID Produto', 
	COUNT(SalesQuantity) AS 'Total Vendido'
FROM FactOnlineSales
Where CustomerKey = 19037
GROUP BY CustomerKey, ProductKey
ORDER BY COUNT(SalesQuantity) DESC


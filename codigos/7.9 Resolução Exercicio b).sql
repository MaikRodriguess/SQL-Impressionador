/*b) Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade 
total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey)*/
SELECT 	top (100)* FROM FactSales

SELECT
	storeKey AS 'ID',
	SUM(SalesQuantity) AS 'Total de vendas',
	SUM(ReturnQuantity) AS 'Qtd. Total Devolvida'
FROM FactSales
GROUP BY StoreKey


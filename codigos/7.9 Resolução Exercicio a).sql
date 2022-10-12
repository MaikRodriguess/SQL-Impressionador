/*a) Faça um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas 
(channelkey).*/
SELECT 	* FROM FactSales

SELECT
	channelKey AS 'Canal de Venda',
	SUM(SalesQuantity) AS 'Total de vendas'
FROM FactSales
GROUP BY channelKey
ORDER BY SUM(SalesQuantity) DESC

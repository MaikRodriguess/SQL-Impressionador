/*c) Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas 
para o ano de 2007.*/
SELECT TOP(100) 	* FROM FactSales

SELECT
	channelKey AS 'Canal de Venda',
	SUM(salesAmount) AS 'Total Vendido'
FROM FactSales
WHERE DateKey between '20070101' AND  '20071231'
GROUP BY channelKey


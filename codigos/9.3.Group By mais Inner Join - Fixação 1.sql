/*
a) Faça um resumo da quantidade vendida (Sales Quantity) de acordo com o nome do canal 
de vendas (ChannelName). Você deve ordenar a tabela final de acordo com SalesQuantity, 
em ordem decrescente
*/
SELECT 
	ChannelName AS 'Canal',
	SUM(SalesQuantity) AS 'Vendas'
 FROM FactSales
 INNER JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
GROUP BY ChannelName
ORDER BY SUM(SalesQuantity) DESC

/*b) Faça um agrupamento mostrando a quantidade total vendida (Sales Quantity) e 
quantidade total devolvida (Return Quantity) de acordo com o nome das lojas 
(StoreName)*/

SELECT 
	StoreName AS 'Loja',
	SUM(SalesQuantity) AS 'Total Vendido',
	SUM(ReturnQuantity) AS 'Total Devolvido'
FROM  
	FactSales
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
GROUP BY StoreName
ORDER BY SUM(SalesQuantity) DESC

-- c) Faça um resumo do valor total vendido (Sales Amount) para cada mês (CalendarMonthLabel) e ano (CalendarYear)
SELECT * FROM DimDate
SELECT * FROM FactSales

SELECT
	CalendarYear AS 'Ano', 
	CalendarMonthLabel AS 'Mês',
	SUM(SalesAmount) AS 'Total vendido'
FROM 
	FactSales
INNER JOIN DimDate 
	ON FactSales.DateKey = DimDate.Datekey
GROUP BY CalendarMonthLabel, CalendarYear, CalendarMonth
ORDER BY  CalendarMonth
-- Lista a quantidade de vendas e quantidade de vendas que foram devolvidas no canal store(1)
/*1. O gerente comercial pediu a você uma análise da Quantidade Vendida e Quantidade 
Devolvida para o canal de venda mais importante da empresa: Store.*/

SELECT
	SUM(SalesQuantity) AS 'Qtd. Vendas',
	SUM(ReturnQuantity) AS 'Qtd. Devolvido'
FROM FactSales
WHERE channelKey = 1


SELECT 	* FROM DimChannel
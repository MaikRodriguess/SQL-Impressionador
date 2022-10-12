/*1. Você é o gerente da área de compras e precisa criar um relatório com as TOP 100 vendas, de 
acordo com a quantidade vendida. Você precisa fazer isso em 10min pois o diretor de compras 
solicitou essa informação para apresentar em uma reunião.*/

SELECT TOP(100) 
	*
FROM FactSales
ORDER BY SalesQuantity DESC
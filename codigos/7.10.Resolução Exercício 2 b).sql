/*b) Faça uma adaptação no exercício anterior e mostre os Top 10 produtos com mais vendas. 
Desconsidere o filtro de $5.000.000 aplicado*/

SELECT TOP (100) * FROM FactSales

SELECT TOP(10)
	ProductKey AS 'Chave Produto',
	SUM(SalesAmount) AS 'Valor Total Vendido'
FROM FactSales
GROUP BY ProductKey
ORDER BY SUM(SalesAmount) DESC
SELECT
	TOP(100) *
FROM
FactSales


SELECT 
	SUM(SalesQuantity) AS 'Total Vendidos',
	SUM(ReturnQuantity) AS 'Total Devolvidos'
FROM
FactSales


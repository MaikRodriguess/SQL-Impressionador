/*
Você precisa fazer uma análise de vendas por produtos. O objetivo final é descobrir o valor 
total vendido (SalesAmount) por produto (ProductKey). 

a) A tabela final deverá estar ordenada de acordo com a quantidade vendida e, além disso, 
mostrar apenas os produtos que tiveram um resultado final de vendas maior do que 
$5.000.000
*/
	SELECT TOP(100)* FROM FactSales

	SELECT 
		ProductKey AS 'Chave Produto',
		SUM(SalesAmount) AS 'Valor Total Vendido'
	FROM FactSales
	GROUP BY ProductKey
	HAVING SUM(SalesAmount) >= '5000000'
	ORDER BY SUM(SalesAmount) DESC
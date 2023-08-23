/* 6. A empresa implementou um programa de fideliza��o de clientes empresariais. 
Todos aqueles que comprarem mais de 3000 unidades de um mesmo produto receber� descontos
em outras compras.

Voc� dever� descobrir as informa��es de CustomerKey e CampanyName destes clientes
*/

SELECT 
	CustomerKey,
	CompanyName
FROM DimCustomer
WHERE CustomerKey IN (
			SELECT
				CustomerKey
			FROM FactOnlineSales
			GROUP BY CustomerKey, ProductKey
			HAVING COUNT(*) >= 3000
			)
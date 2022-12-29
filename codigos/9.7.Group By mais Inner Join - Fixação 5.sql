/*
5. Faça um resumo mostrando o total de produtos comprados (Sales Quantity) de acordo com o 
sexo dos clientes.
*/

SELECT 	Gender AS 'Genero',	SUM(SalesQuantity) AS 'Qtd. Vendas'	FROM 	FactOnlineSalesINNER JOIN DimCustomer 	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKeyWHERE Gender IS NOT NULLGROUP BY GenderORDER BY SUM(SalesQuantity) DESC
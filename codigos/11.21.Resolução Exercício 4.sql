/*
4. A tabela DimCustomer possui o primeiro registro de vendas no ano de 2001. 
Como forma de reconhecer os clientes que compraram nesse ano, o setor de Marketing solicitou 
a você que retornasse uma tabela com todos os clientes que fizeram a sua primeira compra neste 
ano para que seja enviado uma encomenda com um presente para cada um.
Para fazer esse filtro, você pode utilizar a coluna DateFirstPurchase, que contém a informação da 
data da primeira compra de cada cliente na tabela DimCustomer.
Você deverá retornar as colunas de FirstName, EmailAddress, AddressLine1 e DateFirstPurchase
da tabela DimCustomer, considerando apenas os clientes que fizeram a primeira compra no ano 
de 2001.
*/

SELECT 
	FirstName, 
	EmailAddress,
	AddressLine1,
	DateFirstPurchase
FROM 
	DimCustomer
WHERE YEAR(DateFirstPurchase) = 2001
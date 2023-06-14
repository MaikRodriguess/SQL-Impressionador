/*
1. O setor de vendas decidiu aplicar um desconto aos produtos de acordo com a sua classe. O 
percentual aplicado dever� ser de:
Economy -> 5%
Regular -> 7%
Deluxe -> 9%
a) Fa�a uma consulta � tabela DimProduct que retorne as seguintes colunas: ProductKey, 
ProductName, e outras duas colunas que dever�o retornar o % de Desconto e UnitPrice com 
desconto.
b) Fa�a uma adapta��o no c�digo para que os % de desconto de 5%, 7% e 9% sejam facilmente 
modificados (dica: utilize vari�veis)
*/

DECLARE @varEconomy FLOAT, @varRegular FLOAT, @varDeluxe FLOAT
SET @varRegular = 0.07
SET @varEconomy = 0.05
SET @varDeluxe = 0.09

SELECT 
	ProductKey,
	ProductName,
	UnitPrice,
	ClassName,
	CASE	
		WHEN ClassName = 'Economy' THEN UnitPrice * (1 - @varEconomy)
		WHEN ClassName = 'Regular' THEN UnitPrice * (1 - @varRegular)
		ELSE UnitPrice * (1 - @varDeluxe) END AS '%Desconto'

FROM
	DimProduct
/*
Utilizando uma variavel em uma consulta (exemplos)
Exemplo 1: Aplique um desconto de 10% em todos os preços dos produtos. Sua consulta final 
deve conter as colunas ProductKey, ProductName, UnitPrice e Preço com Desconto.
*/

preço = 100 
desconto = 10% = 10/100 = 0.10
valor_do_desconto = 100 * 0.10 = 10
preço_com_desconto = 100 - 10 = 90
preço_com_desconto = preço - valor_do_desconto 

-- Desconto 
DECLARE @desconto FLOAT
SET @desconto = 0.20

SELECT 
	ProductKey AS 'ID',
	ProductName AS 'Nome do Produto',
	UnitPrice AS 'Preço Unitário',
	UnitPrice * (1 - @desconto) AS 'Preço com Desconto' 
FROM 
	DimProduct
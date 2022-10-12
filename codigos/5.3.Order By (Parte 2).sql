-- Exemplo 1: Selecione as 10 primeiras linhas da tabela DimProduct e ordene 
-- de acordo com a UnitCost

SELECT 
	TOP (10)
	ProductName 'Nome Produto',
	UnitCost 'Custo Unidade',
	Weight 'Peso'
FROM 
	DimProduct
ORDER BY UnitCost DESC, Weight DESC
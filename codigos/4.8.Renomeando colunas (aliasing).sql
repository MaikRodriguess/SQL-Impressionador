-- Renomerando colunas (aliasing)
-- Selecione as 3 colunas da tabela dimProduct: ProductName, BrandName e ColorName
-- Coloque '' para nomes compostos 
SELECT 
	ProductName AS 'Nome do Produto',
	BrandName As 'Marca',
	colorName as 'Cor' 
FROM
	DimProduct

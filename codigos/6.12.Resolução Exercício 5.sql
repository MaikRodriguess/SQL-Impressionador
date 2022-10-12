SELECT * FROM DimProduct




SELECT 
	COUNT(DISTINCT ColorName) AS 'Qtd. de Cores Distintas', --a) Quantidade distinta de cores de produtos.
	COUNT(DISTINCT BrandName) AS 'Qtd. de Marcas Distintas', --b) Quantidade distinta de marcas
	COUNT(DISTINCT ClassName) AS 'Qtd. de Classes Distintas' --c) Quantidade distinta de classes de produto
FROM DimProduct

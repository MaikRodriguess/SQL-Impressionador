/* 9. Crie uma CTE que seja o agrupamento da tabela DimProduct, armazenando o
total de produtos por marca. Em seguida, fa�a um SELECT nesta CTE, descobrindo 
qual � a quantidade m�xima de produtos para uma marca. Chame esta CTE de CTE_QtdProdutos 
PorMarca. */
WITH CTE_QtdProdutos_PorMarca AS(
	SELECT 
		BrandName,
		COUNT(*) AS 'Quantidade'
	FROM 
		DimProduct
	GROUP BY BrandName
)

SELECT MAX(Quantidade) FROM CTE_QtdProdutos_PorMarca
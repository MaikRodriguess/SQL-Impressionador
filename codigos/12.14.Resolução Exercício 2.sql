/*
2. Voc� ficou respons�vel pelo controle de produtos da empresa e dever� fazer uma an�lise da 
quantidade de produtos por Marca.
A divis�o das marcas em categorias dever� ser a seguinte:
CATEGORIA A: Mais de 500 produtos 
CATEGORIA B: Entre 100 e 500 produtos 
CATEGORIA C: Menos de 100 produtos 
Fa�a uma consulta � tabela DimProduct e retorne uma tabela com um agrupamento de Total de 
Produtos por Marca, al�m da coluna de Categoria, conforme a regra acima.
*/
SELECT * FROM DimProduct

SELECT 
	BrandName,
	COUNT(BrandName) AS 'Qtd. Produto',
	CASE 
		WHEN COUNT(BrandName) >= 500 THEN 'CATEGORIA A'
		WHEN COUNT(BrandName) >= 100 THEN 'CATEGORIA B'
		ELSE 'CATEGORIA C' END AS 'Categoria'
FROM 
	DimProduct

GROUP BY BrandName
ORDER BY COUNT(BrandName) DESC
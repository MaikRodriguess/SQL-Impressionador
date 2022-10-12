/*
A empresa possui 16 produtos da marca Contoso, da cor Silver e com um UnitPrice entre 10 e
30. Descubra quais são esses produtos e ordene o resultado em ordem decrescente de acordo
com o preço (UnitPrice).
*/
A empresa possui 16 produtos da marca Contoso, da cor Silver e com um UnitPrice entre 10 e
30. Descubra quais são esses produtos e ordene o resultado em ordem decrescente de acordo
com o preço (UnitPrice).
SELECT
	productkey AS 'ID',
	ProductName AS 'Nome Produto',
	UnitPrice AS 'Preço do Produto' 
FROM DimProduct
WHERE 
BrandName = 'Contoso' AND ColorName = 'Silver'
AND Weight BETWEEN 10 AND 30
ORDER BY UnitPrice DESC
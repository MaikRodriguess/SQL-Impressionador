/*1. O QUE É UMA SUBQUERY?
Uma Subquery (ou Subconsulta ou SubSELECT) nada mais é do que uma consulta dentro de outra consulta. Ou seja, com uma subquery conseguimos utilizar o resultado de uma query (consulta ou SELECT) dentro de outra consulta/SELECT.
Em resumo, uma Subquery é um SELECT dentro de outro SELECT.
2. ONDE UTILIZAMOS UMA SUBQUERY?
Subqueries podem ser utilizadas em 3 situações possíveis:
1. Junto com o Where, funcionando como um filtro variável
2. Junto com o SELECT, como uma nova coluna na tabela
3. Junto com o FROM, como uma nova tabela
Ex:
Imagina que eu quero selecionar os produtos com o Preço maior do que a média.
*/

/* No Exemplo 1, imagine que você queria fazer uma consulta a tabela DimProduct
e considerar apenas os produtos com custos acima da média. 
*/

SELECT AVG(UnitPrice) FROM DimProduct

SELECT AVG(UnitCost) FROM DimProduct

SELECT 
	* 
FROM	
	DimProduct
WHERE UnitCost > (SELECT AVG(UnitCost) FROM DimProduct) -- Custo é marior que a média
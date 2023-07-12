/*1. O QUE � UMA SUBQUERY?
Uma Subquery (ou Subconsulta ou SubSELECT) nada mais � do que uma consulta dentro de outra consulta. Ou seja, com uma subquery conseguimos utilizar o resultado de uma query (consulta ou SELECT) dentro de outra consulta/SELECT.
Em resumo, uma Subquery � um SELECT dentro de outro SELECT.
2. ONDE UTILIZAMOS UMA SUBQUERY?
Subqueries podem ser utilizadas em 3 situa��es poss�veis:
1. Junto com o Where, funcionando como um filtro vari�vel
2. Junto com o SELECT, como uma nova coluna na tabela
3. Junto com o FROM, como uma nova tabela
Ex:
Imagina que eu quero selecionar os produtos com o Pre�o maior do que a m�dia.
*/

/* No Exemplo 1, imagine que voc� queria fazer uma consulta a tabela DimProduct
e considerar apenas os produtos com custos acima da m�dia. 
*/

SELECT AVG(UnitPrice) FROM DimProduct

SELECT AVG(UnitCost) FROM DimProduct

SELECT 
	* 
FROM	
	DimProduct
WHERE UnitCost > (SELECT AVG(UnitCost) FROM DimProduct) -- Custo � marior que a m�dia
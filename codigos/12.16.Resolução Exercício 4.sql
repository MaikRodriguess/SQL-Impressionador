/*
4. O setor de log�stica dever� realizar um transporte de carga dos produtos que est�o no dep�sito 
de Seattle para o dep�sito de Sunnyside. 
N�o se tem muitas informa��es sobre os produtos que est�o no dep�sito, apenas se sabe que 
existem 100 exemplares de cada Subcategoria. Ou seja, 100 laptops, 100 c�meras digitais, 100 
ventiladores, e assim vai.
O gerente de log�stica definiu que os produtos ser�o transportados por duas rotas distintas. Al�m 
disso, a divis�o dos produtos em cada uma das rotas ser� feita de acordo com as subcategorias (ou 
seja, todos os produtos de uma mesma subcategoria ser�o transportados pela mesma rota):

Rota 1: As subcategorias que tiverem uma soma total menor que 1000 kg dever�o ser 
transportados pela Rota 1.
Rota 2: As subcategorias que tiverem uma soma total maior ou igual a 1000 kg dever�o ser 
transportados pela Rota 2.

Voc� dever� realizar uma consulta � tabela DimProduct e fazer essa divis�o das subcategorias por 
cada rota. Algumas dicas:
- Dica 1: A sua consulta dever� ter um total de 3 colunas: Nome da Subcategoria, Peso Total e Rota.
- Dica 2: Como n�o se sabe quais produtos existem no dep�sito, apenas que existem 100 
exemplares de cada subcategoria, voc� dever� descobrir o peso m�dio de cada subcategoria e 
multiplicar essa m�dia por 100, de forma que voc� descubra aproximadamente qual � o peso total
dos produtos por subcategoria.
- Dica 3: Sua resposta final dever� ter um JOIN e um GROUP BY.
*/

SELECT * FROM DimProduct 

SELECT 
	ProductSubcategoryName,
	ROUND(AVG(Weight)*100, 2) AS 'Peso total', 
	CASE	
		WHEN AVG(Weight) * 100 >= 1000 THEN 'Rota 2'
		ELSE 'Rota 1' END AS 'Rota'
FROM 
	DimProduct 
INNER JOIN DimProductSubcategory ON
	DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
GROUP BY ProductSubcategoryName
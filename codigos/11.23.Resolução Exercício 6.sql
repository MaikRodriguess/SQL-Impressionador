/*
6. Descubra qual � a loja que possui o maior tempo de atividade (em dias). Voc� dever� fazer essa 
consulta na tabela DimStore, e considerar a coluna OpenDate como refer�ncia para esse c�lculo.
*/

SELECT 
	StoreName,
	OpenDate,
	DATEDIFF (DAY, OpenDate, GETDATE()) AS 'Tempo de Atividade'
FROM DimStore


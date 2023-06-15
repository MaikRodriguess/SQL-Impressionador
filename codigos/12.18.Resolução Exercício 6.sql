/* 
6. Descubra qual � a loja que possui o maior tempo de atividade (em dias). Voc� dever� fazer essa 
consulta na tabela DimStore, e considerar a coluna OpenDate como refer�ncia para esse c�lculo.
Aten��o: lembre-se que existem lojas que foram fechadas.
*/

SELECT * FROM DimStore

SELECT 
	StoreName AS 'Loja',
	OpenDate AS 'Abertura',
	CloseDate,
	CASE 
		WHEN CloseDate IS NULL THEN DATEDIFF(DAY,OpenDate, GETDATE())
		ELSE DATEDIFF(DAY,OpenDate, CloseDate) 
	END AS 'Dias de atividades'
FROM
	DimStore
ORDER BY CASE 
		WHEN CloseDate IS NULL THEN DATEDIFF(DAY,OpenDate, GETDATE())
		ELSE DATEDIFF(DAY,OpenDate, CloseDate) 
	END DESC

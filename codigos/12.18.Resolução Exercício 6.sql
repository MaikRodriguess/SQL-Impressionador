/* 
6. Descubra qual é a loja que possui o maior tempo de atividade (em dias). Você deverá fazer essa 
consulta na tabela DimStore, e considerar a coluna OpenDate como referência para esse cálculo.
Atenção: lembre-se que existem lojas que foram fechadas.
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

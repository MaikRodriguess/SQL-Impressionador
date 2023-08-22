/*
1. Para fins fiscais, a contabilidade da empresa precisa de uma tabela contendo todas as vendas
referentes � loja 'Contoso Orlando Store'. Isso porque essa loja encontra-se em uma regi�o onde a 
tributa��o foi modificada recente.
Portanto, crie uma consulta ao Banco de Dados para obter uma tabela FactSales contendo todas
as vendas desta loja. 
*/

SELECT 
	*
FROM FactSales
WHERE StoreKey = (
					SELECT 
						storekey 
					FROM 
						DimStore 
					WHERE
						StoreName = 'Contoso Orlando Store')
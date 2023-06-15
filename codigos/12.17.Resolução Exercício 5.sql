/*
5. O setor de marketing est� com algumas ideias de a��es para alavancar as vendas em 2021. Uma 
delas consiste em realizar sorteios entre os clientes da empresa. 
Este sorteio ser� dividido em categorias:
�Sorteio M�e do Ano�: Nessa categoria v�o participar todas as mulheres com filhos.
�Sorteio Pai do Ano�: Nessa categoria v�o participar todos os pais com filhos.
�Caminh�o de Pr�mios�: Nessa categoria v�o participar todas os demais clientes (homens e 
mulheres sem filhos).
Seu papel ser� realizar uma consulta � tabela DimCustomer e retornar 3 colunas:
- FirstName AS �Nome�
- Gender AS �Sexo�
- TotalChildren AS �Qtd. Filhos�
- EmailAdress AS �E-mail�
- A��o de Marketing: nessa coluna voc� dever� dividir os clientes de acordo com as categorias 
�Sorteio M�e do Ano�, �Sorteio Pai do Ano� e �Caminh�o de Pr�mios�.
*/

SELECT * FROM DimCustomer

SELECT 
	FirstName AS 'Nome',
	Gender AS 'Sexo',
	TotalChildren AS 'Qtd. Filhos',
	EmailAddress AS 'E-mail',
	CASE
		WHEN Gender =  'F' AND TotalChildren > 0 THEN 'Sorteio M�e do Ano'
		WHEN Gender =  'M' AND TotalChildren > 0 THEN 'Sorteio Pai do Ano'
		ELSE 'Caminh�o de Pr�mios' END AS 'A��o de Marketing'

FROM
	DimCustomer
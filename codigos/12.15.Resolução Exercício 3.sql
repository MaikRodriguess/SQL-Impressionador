/*
3. Ser� necess�rio criar uma categoriza��o de cada loja da empresa considerando a quantidade de 
funcion�rios de cada uma. A l�gica a ser seguida ser� a l�gica abaixo:
EmployeeCount > 50; 'Acima de 50 funcion�rios'
EmployeeCount >= 40; 'Entre 40 e 50 funcion�rios'
EmployeeCount >= 30; 'Entre 30 e 40 funcion�rios'
EmployeeCount >= 20; 'Entre 20 e 30 funcion�rios'
EmployeeCount >= 10; 'Entre 10 e 20 funcion�rios'
Caso contr�rio: 'Abaixo de 10 funcion�rios'
Fa�a uma consulta � tabela DimStore que retorne as seguintes informa��es: StoreName, 
EmployeeCount e a coluna de categoria, seguindo a regra acima.

*/
SELECT * FROM DimStore

SELECT 
	StoreName AS 'Loja',
	EmployeeCount AS 'Qtd. Funcion�rios',
	CASE
		WHEN EmployeeCount > 50 THEN 'Acima de 50 funcion�rios'
		WHEN EmployeeCount >= 40 THEN 'Entre 40 e 50 funcion�rios'
		WHEN EmployeeCount >= 30 THEN 'Entre 30 e 40 funcion�rios'
		WHEN EmployeeCount >= 20 THEN 'Entre 20 e 30 funcion�rios'
		WHEN EmployeeCount >= 10 THEN 'Entre 10 e 20 funcion�rios'
		ELSE 'Abaixo de 10 funcion�rios' END AS 'Categoria'

FROM DimStore
ORDER BY EmployeeCount DESC

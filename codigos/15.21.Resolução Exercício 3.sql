/*
3. A empresa Contoso criou um programa de bonifica��o chamado "Todos por 1 Este
programa consistia no seguinte: 1 funcion�rio seria escolhido ao final do ano como o funcion�rio destaque, s� que a bonifica��o seria recebida por todos da �rea daquele funcion�rio em particular.
O objetivo desse programa seria o de incentivar a colabora��o coletiva entre os funcion�rios de uma mesma �rea. Desta forma, o funcion�rio destaque beneficiaria n�o s� a si, mas tamb�m a todos os colegas de sua �rea.
Ao final do ano, o funcion�rio escolhido como destaque foi o Miguel Severino. Isso significa que todos os funcion�rios da �rea do Miguel seriam beneficiados com o programa.
O seu objetivo � realizar uma consulta � tabela DimEmployee e retornar todos os funcion�rios da �rea "vencedora" para que o setor Financeiro possa realizar os pagamentos das bonifica��es. 
*/
WITH NomeCompleto AS(
SELECT
	DepartmentName,
	CONCAT(firstName , ' ', lastName) AS NomeVencedor
FROM
	DimEmployee
)

--SELECT DepartmentName FROM NomeCompleto
--WHERE NomeVencedor like 'Miguel Severino'

SELECT 
	* 
FROM DimEmployee
WHERE DepartmentName = (SELECT 
							DepartmentName
						FROM
							NomeCompleto
						WHERE
							NomeVencedor like 'Miguel Severino')
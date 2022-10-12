/*2. Os TOP 10 produtos com maior UnitPrice possuem exatamente o mesmo preço. Porém, a
empresa quer diferenciar esses preços de acordo com o peso (Weight) de cada um.
O que você precisará fazer é ordenar esses top 10 produtos, de acordo com a coluna de
UnitPrice e, além disso, estabelecer um critério de desempate, para que seja mostrado na
ordem, do maior para o menor.
Caso ainda assim haja um empate entre 2 ou mais produtos, pense em uma forma de criar
um segundo critério de desempate (além do peso).*/

SELECT TOP(10) 
	ProductName AS 'Produto',
	UnitPrice AS 'Preço',
	Weight AS 'Peso', 
	SIZE AS 'Tamanho' 
FROM
	DimProduct
ORDER BY
	UnitPrice DESC, Weight DESC, Size DESC 

	
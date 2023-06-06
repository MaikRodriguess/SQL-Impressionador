/* 
2. A coluna StyleName da tabela DimProduct possui alguns códigos identificados por números 
distintos, que vão de 0 até 9, como pode ser visto no exemplo abaixo.
Porém, o setor de controle decidiu alterar a identificação do StyleName, e em vez de usar 
números, a ideia agora é passar a usar letras para substituir os números, conforme exemplo 
abaixo:
0 -> A, 1 -> B, 2 -> C, 3 -> D, 4 -> E, 5 -> F, 6 -> G, 7 -> H, 8 -> I, 9 - J

É de sua responsabilidade alterar os números por letras na coluna StyleName da tabela 
DimProduct. Utilize uma função que permita fazer essas substituições de forma prática e rápida.
*/


SELECT 
	StyleName,
	TRANSLATE(StyleName, '0123456789', 'ABCDEFGHIJ') 
FROM
	DimProduct


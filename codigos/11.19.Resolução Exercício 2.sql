/* 
2. A coluna StyleName da tabela DimProduct possui alguns c�digos identificados por n�meros 
distintos, que v�o de 0 at� 9, como pode ser visto no exemplo abaixo.
Por�m, o setor de controle decidiu alterar a identifica��o do StyleName, e em vez de usar 
n�meros, a ideia agora � passar a usar letras para substituir os n�meros, conforme exemplo 
abaixo:
0 -> A, 1 -> B, 2 -> C, 3 -> D, 4 -> E, 5 -> F, 6 -> G, 7 -> H, 8 -> I, 9 - J

� de sua responsabilidade alterar os n�meros por letras na coluna StyleName da tabela 
DimProduct. Utilize uma fun��o que permita fazer essas substitui��es de forma pr�tica e r�pida.
*/


SELECT 
	StyleName,
	TRANSLATE(StyleName, '0123456789', 'ABCDEFGHIJ') 
FROM
	DimProduct


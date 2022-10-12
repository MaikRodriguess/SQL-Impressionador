/*Exemplo: Selecione todas as linhas da tabela dimProduct onde a cor do Produto pode 
ser igual a Preto OU Vermelho, MAS a marca deve ser obrigatoriamente igual a Fabrikam
*/

SELECT * FROM DimProduct
WHERE (ColorName = 'Black' OR ColorName = 'Red') AND BrandName = 'fabrikam'
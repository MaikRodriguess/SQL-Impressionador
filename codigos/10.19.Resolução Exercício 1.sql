/*
1. Declare 4 variáveis inteiras. Atribua os seguintes valores a elas:
valor1 = 10
valor2 = 5
valor3 = 34
valor4 = 7
a) Crie uma nova variável para armazenar o resultado da soma entre valor1 e valor2. Chame 
essa variável de soma.
b) Crie uma nova variável para armazenar o resultado da subtração entre valor3 e valor 4. 
Chame essa variável de subtracao.
c) Crie uma nova variável para armazenar o resultado da multiplicação entre o valor 1 e o 
valor4. Chame essa variável de multiplicacao.
d) Crie uma nova variável para armazenar o resultado da divisão do valor3 pelo valor4. Chame 
essa variável de divisao. Obs: O resultado deverá estar em decimal, e não em inteiro.
e) Arredonde o resultado da letra d) para 2 casas decimais.
*/
DECLARE @valor1 FLOAT = 10,
		@valor2 FLOAT = 5,
		@valor3 FLOAT = 34,
		@valor4 FLOAT = 7,
		@soma FLOAT,
		@subtracao FLOAT,
		@multiplicacao FLOAT,
		@divisao FLOAT
-- a) 
SET @soma = @valor1 + @valor2
SELECT @soma

-- b) 
SET @subtracao = @valor3 - @valor4
SELECT @subtracao

-- c) 
SET @multiplicacao = @valor1 * @valor4
SELECT @multiplicacao

-- d) 
SET @divisao = @valor3 / @valor4
SELECT ROUND(@divisao, 2 )
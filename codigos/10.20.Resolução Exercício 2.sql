/*2. Para cada declaração das variáveis abaixo, atenção em relação ao tipo de dado que deverá ser 
especificado.
a) Declare uma variável chamada ‘produto’ e atribua o valor de ‘Celular’.
b) Declare uma variável chamada ‘quantidade’ e atribua o valor de 12. 
c) Declare uma variável chamada ‘preco’ e atribua o valor 9.99.
d) Declare uma variável chamada ‘faturamento’ e atribua o resultado da multiplicação entre 
‘quantidade’ e ‘preco’. 
e) Visualize o resultado dessas 4 variáveis em uma única consulta, por meio do SELECT.
*/

DECLARE @produto VARCHAR(20), @quantidade INT, @preco FLOAT, @faturamento FLOAT

-- a) 
SET @produto = 'Celular'

-- b) 
SET @quantidade = 12

-- c) 
SET @preco = 9.99

-- d)
SET @faturamento = @quantidade * @preco

-- e) 
SELECT @produto AS 'Produdo',
@quantidade AS 'Quantidade',
@preco AS 'Preço Unitario', 
@faturamento AS 'Faturamento'
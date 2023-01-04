-- Utilizando uma variavel em uma consulta (Exemplo 2)
-- Crie uma variavel de data para otimizar a consulta abaixo

-- Clientes
DECLARE @varDataAniversario DATETIME = '01/01/1980'

SELECT
	FirstName AS 'Nome',
	LastName  AS 'Sobrenome',
	BirthDate AS 'Nascimento',
	'Cliente' AS 'Tipo'
FROM
	DimCustomer
WHERE BirthDate >= @varDataAniversario

UNION 

-- Funcionários
SELECT
	FirstName AS 'Nome',
	LastName AS 'Sobrenome',
	BirthDate AS 'Nascimento',
	'Funcionário' AS 'Tipo'
FROM
	DimEmployee
WHERE BirthDate >= @varDataAniversario
ORDER BY Nascimento
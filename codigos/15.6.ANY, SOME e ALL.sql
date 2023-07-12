-- ANY, SOME e ALL

--CREATE TABLE funcionarios(
--	id_funcionario INT,
--	nome VARCHAR(30),
--	idade INT,
--	sexo VARCHAR(50)
--)

--INSERT INTO funcionarios(id_funcionario, nome, idade, sexo)
--VALUES
--	(1, 'Maik', 21, 'M' ),
--	(2, 'Luiza', 22, 'F'),
--	(3, 'Teodoro', 23, 'M'),
--	(4, 'João', 24, 'M'),
--	(5, 'Flavia', 25, 'F'),
--	(6, 'Maria', 26, 'F')


--SELECT * FROM funcionarios
--DELETE FROM funcionarios

-- Selecione os funcionários do sexo Masculino (Mas, utilizando a coluna IDADE para isso)

--IN (EM)
SELECT * FROM funcionarios
WHERE idade IN (SELECT idade FROM funcionarios WHERE sexo = 'M')

/*
= ANY (valor1, valor2, valor3):
	Equivalente ao IN, retorna as linhas da tabela que sejam iguais ao valor1, OU valor2 OU valor3
*/

SELECT * FROM funcionarios
WHERE idade = ANY (SELECT idade FROM funcionarios WHERE sexo = 'M')

/*
>ANY(valor1, valor2, valor3):
	Retorno as linhas da tabela com valores maiores que o valor1, OU valor2, OU valor3. Ou seja, maior que
	o minimo
*/
SELECT * FROM funcionarios	
WHERE idade <= ANY (SELECT idade FROM funcionarios WHERE sexo = 'M')


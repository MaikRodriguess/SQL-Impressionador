--ALTER TABLE: Adicionar colunas, alterar tipo de dados de uma coluna e deletar coluna
-- Utilize a tabela funcionarios mostrada na aula anterior.

SELECT * FROM Funcionarios 

-- Adicionar coluna: 
ALTER TABLE Funcionarios
ADD cargo VARCHAR(100), bonus FLOAT

UPDATE Funcionarios
SET cargo = 'Analista', bonus = 0.15
WHERE id_funcionari = 1


-- Alterar o tipo de dado de uma coluna
ALTER TABLE Funcionarios
ALTER COLUMN salario INT
 
-- Deletando Coluna 
ALTER TABLE Funcionarios 
DROP COLUMN cargo, bonus
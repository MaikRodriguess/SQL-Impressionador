-- Armazenamento o resultado de um SELECT em uma variável
-- Exemplo 1: Crie uma variável para armazenar a quantidade total de funcionários da tabela DimEmployee

DECLARE @varTotalFuncionario INT
SET @varTotalFuncionario = (SELECT COUNT(*) FROM DimEmployee)
SELECT @varTotalFuncionario AS 'Total Funcionários'

-- Exemplo 2: Crie uma variável para armazenar a quantidade total de lojas com o Status Off. 

DECLARE @varTotalLojas INT = (SELECT COUNT(*) FROM DimStore WHERE Status = 'off')
SELECT @varTotalLojas AS 'Total Lojas'

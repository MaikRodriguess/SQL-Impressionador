-- 3) FORMAT: Função para formatação de valores no SQL 

-- a) Numéricos: 
-- Select FORMAT(valor, formato)

SELECT FORMAT(1000, 'N')
SELECT FORMAT(1000, 'G')

-- b) Personalizado:
SELECT FORMAT(123456789, '###-##-##-##')

-- c) Data: 
SELECT FORMAT(CAST('21/03/2021' AS datetime), 'dd/MM/yyyy') -- Número do mês
SELECT FORMAT(CAST('21/03/2021' AS datetime), 'dd/MMM/yyyy') -- Sigla do mês
SELECT FORMAT(CAST('21/03/2021' AS datetime), 'dd/MMMM/yyyy') -- Nome do mês

/*
-- Exercício 3: Crie uma consulta juntando o texto 'A data de validade do produto é: ' com 
-- a data 17/abr/2022. Obs: Você deverá usar o CAST para garantir que a data é entendida com 
   o tipo DATETIME
*/

SELECT 'A data de validade do produto é: ' + FORMAT(CAST('17/04/2022' AS DATETIME), 'dd/MMM/yyyy')
-- CHARINDEX: Descobre a posi��o de um determinado caractere dentro do texto
-- SUSTRING: Extrai alguns caracteres dentro do texto

SELECT 'Raquel Moreno'

--Descubra a posi��o em que come�a o sobrenome da Raquel utilizando a fun��o CHARINDEX
SELECT CHARINDEX('Moreno', 'Raquel Moreno') AS 'Posi��o'

-- Extraia o sobrenome da Raquel utilizando a fun��o SUBSTRING
SELECT SUBSTRING('Raquel Moreno', 8, 6) AS 'Sobrenome'

-- Combine as fun��es CHARINDEX e SUBSTRING para extrair de forma autom�tica qualquer sobrenome
DECLARE @varSobrenome VARCHAR(30)
SET @varSobrenome = 'Luiz dias' 
SELECT SUBSTRING(@varSobrenome, CHARINDEX(' ', @varSobrenome) + 1, 100) AS 'Sobrenome'

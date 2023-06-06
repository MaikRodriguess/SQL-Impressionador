-- Funções para retirar espaços adicionais dentro de um texto
-- TRIM: Retira espaços adicionais à esquerda e à direita do text
-- LTRIM: Retira espaços adicionais à esquerda do texto
-- RTRIM: Retira espaços adicionais à direita do texto
-- Utilize as funções acima no código '  ABC123  '

DECLARE @varCodigo VARCHAR(50)
SET @varCodigo = ' ABC123  '

SELECT
TRIM(@varCodigo) AS 'Trim',
LTRIM(@varCodigo) AS 'Ltrim',
RTRIM(@varCodigo) AS 'Rtrim'

SELECT
DATALENGTH(TRIM(@varCodigo)) AS 'TRIM',
DATALENGTH(LTRIM(@varCodigo))AS 'LTRIM',
DATALENGTH(RTRIM(@varCodigo)) AS 'RTRIM'
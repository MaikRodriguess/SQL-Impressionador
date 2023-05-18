-- TRANSLATE e STUFF: Outras funções de substituição 

-- TRANSLATE: Substitui cada caractere na ordem encontrada no texto

SELECT TRANSLATE('123.1242/6536k12', './k', '---')
SELECT TRANSLATE('ABCD-1234', 'ABCD', 'WKDT')



-- STUFF: Substitui qualquer texto com uma quantidade de caracteres limitados, por um outro texto

SELECT STUFF('VBA impressionador', 1, 3, 'Excel')
SELECT STUFF('VBA impressionador', 1, 3, 'SQL')

SELECT 
	STUFF('MT90-MotoG', 1, 2, 'CEL') AS CEL1,
	STUFF('A1AP-IphoneX', 1, 2, 'CEL') AS CEL2,
	STUFF('SG10-Samsang-Galaxy', 1, 2, 'CEL') AS CEL3
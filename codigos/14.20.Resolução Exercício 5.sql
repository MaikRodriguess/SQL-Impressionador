/*
5. O contrato de ID igual a 4 foi registrado com alguns erros na tabela fContratos. Fa�a uma 
altera��o na tabela atualizando os seguintes valores:
Data_de_Assinatura: 17/03/2019
ID_Gerente: 2
Valor_do_Contrato: 33500
*/
SELECT * FROM fContratos

UPDATE fContratos
SET Data_de_Assinatura = '17/03/2019',
	ID_Gerente = 2,
	Valor_do_Contrato = 33500
WHERE ID_Contrato = 4
/*
4. Novos dados deverão ser adicionados nas tabelas dCliente, dGerente e fContratos. Fique livre 
para adicionar uma nova linha em cada tabela contendo, respectivamente, 
(1) um novo cliente (id cliente, nome e data de nascimento)
(2) um novo gerente (id gerente, nome, data de contratação e salário)
(3) um novo contrato (id, data assinatura, id cliente, id gerente, valor do contrato
*/

SELECT * FROM dcliente

INSERT INTO dCliente(id_cliente, Nome_Cliente, Data_de_Nascimento)
VALUES 
	(9, 'Maik, Rodrigues de Souza', '16/04/1993');

SELECT * FROM dGerente

INSERT INTO dGerente(ID_Gerente, Nome_Gerente, Data_de_Contratacao, Salario)
VALUES
	(5, 'Antonio Rosa', '01/12/2003', 4300);

SELECT * FROM fContratos

INSERT INTO fContratos(ID_Contrato, Data_de_assinatura, ID_Cliente, ID_Gerente,Valor_do_Contrato)
VALUES
	(11, '27/06/2023', 1, 2, 100000);
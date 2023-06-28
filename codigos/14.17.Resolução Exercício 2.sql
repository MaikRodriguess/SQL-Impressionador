/*
2. No banco de dados criado no exercício anterior, crie 3 tabelas, cada uma contendo as seguintes 
colunas:
Tabela 1: dCliente
- ID_Cliente
- Nome_Cliente
- Data_de _Nascimento
Tabela 2: dGerente
- ID_Gerente
- Nome_Gerente
- Data_de_Contratacao
- Salario
Tabela 3: fContratos
- ID_Contrato
- Data_de_Assinatura
- ID_Cliente
- ID_Gerente
- Valor_do_Contrato
Lembre-se dos seguintes pontos:
a) Garantir que o Banco de Dados Exercicios está selecionado.
b) Definir qual será o tipo de dados mais adequado para cada coluna das tabelas. Lembrando que 
os tipos de dados mais comuns são: INT, FLOAT, VARCHAR e DATETIME.
Por fim, faça um SELECT para visualizar cada tabela
*/

use Exercicios

CREATE TABLE dCliente (
	ID_Cliente INT,  
	Nome_Cliente VARCHAR(100),
	Data_de_Nascimento DATETIME
)

CREATE TABLE dGerente (
	ID_Gerente INT,
	Nome_Gerente VARCHAR(100),
	Data_de_Contratacao DATETIME,
	Salario FLOAT
)

CREATE TABLE fContratos(
	ID_Contrato INT,
	Data_de_Assinatura DATETIME,
	ID_Cliente INT,
	ID_Gerente INT,
	Valor_do_Contrato FLOAT
)

SELECT * FROM dCliente

SELECT * FROM fContratos

SELECT * FROM dGerente

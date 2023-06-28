use	 BDImpressionador

CREATE TABLE Funcionarios(
	id_funcionari INT,
	nome_funcionario VARCHAR(100),
	salario FLOAT,
	data_nascimento DATETIME
)


INSERT INTO Funcionarios (id_funcionari, nome_funcionario, salario, data_nascimento)
VALUES
    (1, 'João Silva', 2500.00, '15/05/1990'),
    (2, 'Maria Santos', 3000.00, '10/12/1985'),
    (3, 'Pedro Almeida', 2800.00, '25/08/1992'),
    (4, 'Ana Costa', 3200.00, '05/02/1994'),
    (5, 'Lucas Oliveira', 2700.00, '20/11/1991'),
    (6, 'Camila Pereira', 2900.00, '30/07/1988'),
    (7, 'Rafael Souza', 2600.00, '12/04/1993'),
    (8, 'Juliana Rodrigues', 3100.00, '08/09/1987'),
    (9, 'Fernando Lima', 2900.00, '18/06/1995'),
    (10, 'Mariana Castro', 2800.00, '24/03/1990');
	
	SELECT * FROM Funcionarios
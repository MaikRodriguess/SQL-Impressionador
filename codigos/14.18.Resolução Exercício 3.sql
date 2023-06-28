-- 3. Em cada uma das 3 tabelas, adicione os seguintes valores

use Exercicios

INSERT INTO dCliente (ID_Cliente, Nome_Cliente, Data_de_Nascimento)
VALUES
    (1, 'Maria Silva', '10/05/1990'),
    (2, 'João Santos', '15/09/1985'),
    (3, 'Ana Pereira', '20/07/1992'),
    (4, 'Pedro Costa', '05/03/1988'),
    (5, 'Lucas Oliveira', '12/11/1994'),
    (6, 'Juliana Rodrigues', '25/01/1991'),
    (7, 'Rafael Souza', '08/06/1987'),
    (8, 'Mariana Castro', '17/04/1993');

INSERT INTO dGerente (ID_Gerente, Nome_Gerente, Data_de_Contratacao, Salario)
VALUES
    (1, 'Carlos Silva', '01/02/2010', 5000.00),
    (2, 'Luisa Santos', '15/06/2012', 4800.00),
    (3, 'Fernanda Almeida', '10/03/2014', 5200.00),
    (4, 'André Costa', '05/09/2011', 4900.00);

INSERT INTO fContratos (ID_Contrato, Data_de_Assinatura, ID_Cliente, ID_Gerente, Valor_do_Contrato)
VALUES
    (1, '05/01/2023', 1, 1, 1500.00),
    (2, '10/02/2023', 2, 2, 2000.00),
    (3, '15/03/2023', 3, 3, 1800.00),
    (4, '20/04/2023', 4, 4, 2300.00),
    (5, '25/05/2023', 5, 1, 1700.00),
    (6, '30/06/2023', 6, 2, 2100.00),
    (7, '05/07/2023', 7, 3, 1900.00),
    (8, '10/08/2023', 8, 4, 2200.00),
    (9, '15/09/2023', 1, 1, 1600.00),
    (10, '20/10/2023', 2, 2, 1900.00);

SELECT * FROM dCliente
SELECT * FROM dGerente
SELECT * FROM fcontratos
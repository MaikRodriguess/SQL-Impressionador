USE BDImpressionador

CREATE TABLE Produto(
	id_produto INT,
	nome_produto VARCHAR(200),
	data_validade DATETIME,
	preco_produto FLOAT
)

SELECT * FROM Produto
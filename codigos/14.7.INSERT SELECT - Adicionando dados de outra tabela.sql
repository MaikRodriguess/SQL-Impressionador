-- INSERT INTO: Inserindo dados de outra tabela

INSERT INTO Produto(id_produto, nome_produto,data_validade, preco_produto)
SELECT 
	ProductKey,
	ProductName,
	AvailableForSaleDate,
	UnitPrice
FROM
	ContosoRetailDW.dbo.DimProduct

SELECT * FROM Produto
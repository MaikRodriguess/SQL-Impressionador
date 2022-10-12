-- Busca QUAL QUER PALAVRA entre % % na coluna ProductName 
SELECT * FROM DimProduct
WHERE ProductName LIKE '%MP3 Player%'

-- Busca APENAS O PRIMEIRO PALAVRA na coluna ProductName 
SELECT * FROM DimProduct
WHERE ProductDescription LIKE 'Type%'

-- Busca APENAS O ULTIMO PALAVRA na coluna ProductName 
SELECT * FROM DimProduct
WHERE ProductDescription LIKE '%WMA'

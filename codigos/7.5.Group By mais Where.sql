SELECT * FROM DimProduct 
--Separa produtos por sua cor e quantifica cada um por marca especifica
SELECT 
ColorName AS'Cor do produto' ,
COUNT(*) AS 'Total de Produtos '

FROM DimProduct
WHERE BrandName = 'Contoso' --Produtos da marca Contoso 
GROUP BY ColorName
ORDER BY COUNT(*) ASC

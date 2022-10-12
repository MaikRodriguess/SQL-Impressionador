--6. Você seria capaz de confirmar se todas as marcas dos produtos possuem à disposição todas as 
--16 opções de cores?
SELECT * FROM DimProduct

SELECT 
	BrandName AS 'Marca', 
	COUNT(Distinct ColorName) AS	'Qtd. Cor'
FROM 
	DimProduct
GROUP BY 
	BrandName




select distinct ColorID, ColorName from DimProduct
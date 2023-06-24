--3. 
--a) A partir da tabela DimStore, crie uma View que considera apenas as lojas ativas. Faça 
--um SELECT de todas as colunas. Chame essa View de vwLojasAtivas.
CREATE VIEW vwLojasAtivas AS
SELECT 
	*
FROM
	DimStore
WHERE Status = 'ON'
GO
--b) A partir da tabela DimEmployee, crie uma View de uma tabela que considera apenas os 
--funcionários da área de Marketing. Faça um SELECT das colunas: FirstName, EmailAddress 
--e DepartmentName. Chame essa de vwFuncionariosMkt.


CREATE VIEW vwFuncionariosMKT AS 
SELECT 
	FirstName,
	EmailAddress, 
	DepartmentName
FROM 
	DimEmployee
WHERE DepartmentName = 'Marketing'
GO

--c) Crie uma View de uma tabela que considera apenas os produtos das marcas Contoso e 
--Litware. Além disso, a sua View deve considerar apenas os produtos de cor Silver. Faça 
--um SELECT de todas as colunas da tabela DimProduct. Chame essa View de 
--vwContosoLitwareSilver.

CREATE VIEW vwContosoLitwareSilver AS
SELECT 
	*
FROM 
	DimProduct
WHERE 
	BrandName IN ('Contoso', 'Litware')
	AND ColorName = 'Silver'
	
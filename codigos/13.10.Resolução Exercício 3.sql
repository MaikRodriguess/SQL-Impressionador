--3. 
--a) A partir da tabela DimStore, crie uma View que considera apenas as lojas ativas. Fa�a 
--um SELECT de todas as colunas. Chame essa View de vwLojasAtivas.
CREATE VIEW vwLojasAtivas AS
SELECT 
	*
FROM
	DimStore
WHERE Status = 'ON'
GO
--b) A partir da tabela DimEmployee, crie uma View de uma tabela que considera apenas os 
--funcion�rios da �rea de Marketing. Fa�a um SELECT das colunas: FirstName, EmailAddress 
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
--Litware. Al�m disso, a sua View deve considerar apenas os produtos de cor Silver. Fa�a 
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
	
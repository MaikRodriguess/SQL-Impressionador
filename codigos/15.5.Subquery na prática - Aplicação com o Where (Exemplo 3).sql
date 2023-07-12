 --Queremos filtrar nossa tabela factsales e mostrar apenas as vendas referentes as lojas com 100 ou mais funcionarios


 SELECT * FROM FactSales
 WHERE StoreKey in (
	 SELECT 
		StoreKey
	FROM	
		DimStore
	WHERE 
		EmployeeCount >= 100)
	


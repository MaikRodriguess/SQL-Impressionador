-- IIF Composto
SELECT * FROM DimProduct
/*Existem 3 tipos de estoque: High, Mid e Low. 
Faça um SELECT contendo as colunas ProductKey, 
ProductName, StockTypeName e Nome do responsável pelo produto, 
P de acordo com o tipo de estoque. A regra deverá ser a seguinte:
João é responsável pelos produtos High
Maria é responsável pelos produtos Mid
Luis é responsável pelos produtos Low
*/

SELECT 
	ProductKey, 
	ProductName,
	StockTypeName,
	IIF(
		StockTypeName = 'High',
		'João',
		IIF(
			StockTypeName = 'Mid',
			'Maria','Luiz'))
FROM 
	DimProduct
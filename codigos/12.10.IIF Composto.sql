-- IIF Composto
SELECT * FROM DimProduct
/*Existem 3 tipos de estoque: High, Mid e Low. 
Fa�a um SELECT contendo as colunas ProductKey, 
ProductName, StockTypeName e Nome do respons�vel pelo produto, 
P de acordo com o tipo de estoque. A regra dever� ser a seguinte:
Jo�o � respons�vel pelos produtos High
Maria � respons�vel pelos produtos Mid
Luis � respons�vel pelos produtos Low
*/

SELECT 
	ProductKey, 
	ProductName,
	StockTypeName,
	IIF(
		StockTypeName = 'High',
		'Jo�o',
		IIF(
			StockTypeName = 'Mid',
			'Maria','Luiz'))
FROM 
	DimProduct
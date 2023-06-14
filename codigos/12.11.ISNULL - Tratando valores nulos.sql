--ISNULL: Tratando valores nulos

SELECT * FROM DimGeography

SELECT
	GeographyKey,
	ContinentName,
	CityName,
	ISNULL(CityName, 'Local desconhecido') 
FROM
	DimGeography
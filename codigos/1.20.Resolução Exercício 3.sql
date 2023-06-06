/*3. O setor de TI está criando um sistema para acompanhamento individual de cada funcionário da 
empresa Contoso. Cada funcionário receberá um login e senha. O login de cada funcionário será 
o ID do e-mail, como no exemplo abaixo:

Já a senha será o FirtName + o dia do ano em que o funcionário nasceu, em MAIÚSCULA. Por 
exemplo, o funcionário com E-mail: mark0@contoso.com e data de nascimento 15/01/1990 
deverá ter a seguinte senha:

Login: mark0
Senha: MARK15

O responsável pelo TI pediu a sua ajuda para retornar uma tabela contendo as seguintes colunas 
da tabela DimEmployee: Nome completo (FirstName + LastName), E-mail, ID do e-mail e Senha.
Portanto, faça uma consulta à tabela DimEmployee e retorne esse resultado.
*/

SELECT 
	CONCAT(FirstName, ' ', LastName) AS 'Nome',
	EmailAddress, 
	LEFT(EmailAddress, CHARINDEX('@', EmailAddress)-1)AS 'Login',
	UPPER(FirstName + DATENAME(DAYOFYEAR,BirthDate))AS 'Senha'
	
FROM 
	DimEmployee
	

/* 5. A ação de desconto da Asian Holiday Promotion foi uma das mais bem sucedidas da empresa. 
Agora, a Contoso quer entender um pouco melhor sobre o perfil dos clientes que compraram produtos com essa promoção.
Seu trabalho é criar uma query que retorne a lista de clientes que compraram nessa promoção.
*/

-- 1º passo) DEscobrir qual é o ID da promoção Asian holiday promotion
SELECT PromotionKey FROM DimPromotion
WHERE PromotionName = 'Asian Holiday Promotion'

--2º passo) DEscobrir os IDs dos clientes que compraram com essa promoção

SELECT 
	CustomerKey 
FROM
	FactOnlineSales
WHERE PromotionKey IN 
	(SELECT PromotionKey FROM DimPromotion
	WHERE PromotionName = 'Asian Holiday Promotion')

-- 3º passo) Descobrir as informações desses clientes

SELECT 
	* 
FROM DimCustomer
WHERE CustomerKey IN(
				SELECT 
					CustomerKey 
				FROM
					FactOnlineSales
				WHERE PromotionKey IN 
					(SELECT PromotionKey FROM DimPromotion
					WHERE PromotionName = 'Asian Holiday Promotion')
					)

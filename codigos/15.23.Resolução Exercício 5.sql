/* 5. A a��o de desconto da Asian Holiday Promotion foi uma das mais bem sucedidas da empresa. 
Agora, a Contoso quer entender um pouco melhor sobre o perfil dos clientes que compraram produtos com essa promo��o.
Seu trabalho � criar uma query que retorne a lista de clientes que compraram nessa promo��o.
*/

-- 1� passo) DEscobrir qual � o ID da promo��o Asian holiday promotion
SELECT PromotionKey FROM DimPromotion
WHERE PromotionName = 'Asian Holiday Promotion'

--2� passo) DEscobrir os IDs dos clientes que compraram com essa promo��o

SELECT 
	CustomerKey 
FROM
	FactOnlineSales
WHERE PromotionKey IN 
	(SELECT PromotionKey FROM DimPromotion
	WHERE PromotionName = 'Asian Holiday Promotion')

-- 3� passo) Descobrir as informa��es desses clientes

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

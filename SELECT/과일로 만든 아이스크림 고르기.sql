-- 문제 : 두 테이블을 FLAVOR로 JOIN하여, 총주문량이 3,000 초과이고 과일 성분인 아이스크림을 주문량 내림차순으로 조회한다.

-- <JOIN>
-- FROM 테이블1 별칭 JOIN 테이블2 별칭 ON 별칭1.a = 별칭2.a
  
-- 코드
SELECT FH.FLAVOR 
FROM ICECREAM_INFO II JOIN FIRST_HALF FH ON II.FLAVOR = FH.FLAVOR
WHERE FH.TOTAL_ORDER > 3000 AND II.INGREDIENT_TYPE = "fruit_based"
ORDER BY FH.TOTAL_ORDER DESC;

-- 문제 : ONLINE_SALE 테이블에서 동일한 회원이 동일한 상품을 2회 이상 구매한 재구매 데이터를 조회한다. 
-- 재구매한 회원 ID와 상품 ID를 출력하며, 회원 ID는 오름차순, 회원 ID가 동일한 경우 상품 ID는 내림차순으로 정렬한다.

-- HAVING  -> 그룹화한 데이터에 조건을 부여 할때
-- WHERE와 HAVING의 차이 -> WHERE는 그룹화하기 전, 개별행에 / HAVING는 그룹화한 후, 그룹별 집계 결과에 조건을 적용


-- 코드
SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(PRODUCT_ID) >= 2
ORDER BY USER_ID ASC, PRODUCT_ID DESC;

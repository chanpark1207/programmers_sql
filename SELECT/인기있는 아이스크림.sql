-- 문제 : FIRST_HALF 테이블에서 상반기 아이스크림 맛과 총주문량을 조회한다.
-- TOTAL_ORDER를 **내림차순(DESC)**으로 정렬한다.
-- TOTAL_ORDER가 같다면 SHIPMENT_ID를 **오름차순(ASC)**으로 정렬한다.
-- 결과에는 FLAVOR만 출력한다.

-- ORDER BY는 WHRER 다음
-- 내림차순은 DESC 오름차순은 ASC

-- 코드
SELECT FLAVOR FROM FIRST_HALF ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID ASC;

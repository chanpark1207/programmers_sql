-- 문제 : 강원도에 위치한 식품공장의 공장 ID, 공장 이름, 주소를 조회하는데 공장ID를 기준으로 오름차순 정렬

-- LIKE 포함되는지 만약에 사과면 '사과%' '%사과' '%사과%' '사과_'
-- 만약에 포함 안되는걸 하려면 앞에 NOT를 붙이면 됨

-- 코드
SELECT FACTORY_ID, FACTORY_NAME, ADDRESS
FROM FOOD_FACTORY
WHERE ADDRESS LIKE '강원도%'
ORDER BY FACTORY_ID ASC

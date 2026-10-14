-- 문제 : REST_INFO와 REST_REVIEW 테이블에서 서울에 위치한 식당들의 식당 ID, 식당 이름, 음식 종류, 즐겨찾기수, 주소, 리뷰 평균 점수를 조회하는 SQL문을 작성
-- 리뷰평균점수는 3번째자리 반올림, 결과는 평균 기준으로 내림차순 같을경우 즐겨찾기 수를 기준으로 내림차순

-- group by의 존재를 처음 알게됨
-- 같은것끼리 묶어서 평균을 구하기 위해
-- 가끔충돌때문에 일반 컬럼까지 다 넣어야하는경우도 있음

-- 코드
SELECT RI.REST_ID, RI.REST_NAME, RI.FOOD_TYPE, RI.FAVORITES, RI.ADDRESS, ROUND(AVG(REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO RI JOIN REST_REVIEW RR ON RI.REST_ID = RR.REST_ID
WHERE RI.ADDRESS LIKE '서울%'
GROUP BY RI.REST_ID
ORDER BY SCORE DESC, RI.FAVORITES DESC;

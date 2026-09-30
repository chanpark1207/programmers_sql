-- 문제 : CAR_RENTAL_COMPANY_CAR 테이블에서 자동차 종류가 'SUV'인 자동차들의 평균 일일 대여 요금을 출력하는 SQL문을 작성해주세요. 이때 평균 일일 대여 요금은 소수 첫 번째 자리에서 반올림하고, 컬럼명은 AVERAGE_FEE 로 지정해주세요.

-- 새로 알게된것 : ROUND(), AVG(), AS 

-- ROUND(숫자, 반올림할 자릿수)
-- 양수 -> 소수점 이하 자릿수
-- 0 -> 정수로 반올림
-- 음수 -> 정수의 해당자리에서 반올림(-1이면 십의 자리에서 반올림)

-- AVG(평균구하고자 하는 컬럼)

-- AS 지정하고자 하는 이름

-- 코드를 입력하세요
SELECT ROUND(AVG(DAILY_FEE), 0) AS AVERAGE_FEE from CAR_RENTAL_COMPANY_CAR where CAR_TYPE = "SUV";

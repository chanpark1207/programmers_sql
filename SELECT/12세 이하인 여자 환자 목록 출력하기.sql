-- 문제 : 테이블에서 12세 이하인 여자환자의 환자이름, 번호, 성별, 나이, 전화번호를 조회하는데 전화번호가 없을경우 NONE로 출력
-- 나이기준으로 내림차순, 같으면 환자이름 오름차순

-- 새로배운것 COALESCE(,)
-- 값이 null일 경우 값 지정가능

-- DESC - 내림차순
-- ASC - 오름차순

-- 코드
SELECT PT_NAME, PT_NO, GEND_CD, AGE, COALESCE(TLNO, 'NONE')
FROM PATIENT
WHERE AGE <= 12 AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME ASC;

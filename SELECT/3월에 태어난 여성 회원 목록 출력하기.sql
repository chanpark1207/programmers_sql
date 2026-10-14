-- 문제 : 생일이 3월인 여성 회원의 id 이름 성별 생년월일을 조회하는데 전화번호가 null이면 제외하고 id를 기준으로 오름차순

-- null이면 제외하는걸 TLNO != 'NULL' 이게 아니라 TLNO IS NOT NULL로 하면 더 좋음

-- 코드
SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE MONTH(DATE_OF_BIRTH) = 3 AND GENDER = 'W' AND TLNO != 'NULL'
ORDER BY MEMBER_ID ASC;

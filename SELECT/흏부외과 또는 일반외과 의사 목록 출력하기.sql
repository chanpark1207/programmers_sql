-- 문제 : 진료과가 흉부외과거나 일반외과 인 의사의 이름 id 진료과 고용일자를 조회한다. 고용일자를 기준으로 내림차순, 같을경우 이름 오름차순

-- 코드
SELECT DR_NAME, DR_ID, MCDP_CD, HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD = 'CS' OR MCDP_CD = 'GS'
ORDER BY HIRE_YMD DESC, DR_NAME ASC;

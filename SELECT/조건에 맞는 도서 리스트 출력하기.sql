-- 문제 : 2021년에 출판된 '인문' 카테고리 도서의 ID와 출판일을 조회하고, 출판일이 빠른 순서대로 정렬한다.

-- YEAR()을 사용
-- YEAR()    -- 연
-- MONTH()   -- 월
-- DAY()     -- 일
-- HOUR()    -- 시
-- MINUTE()  -- 분
-- SECOND()  -- 초


-- 코드
SELECT BOOK_ID, PUBLISHED_DATE
FROM BOOK
WHERE YEAR(PUBLISHED_DATE) = 2021 AND CATEGORY = '인문'
ORDER BY PUBLISHED_DATE DESC

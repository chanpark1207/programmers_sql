-- 문제 : 22년 10월에 작성된 게시글의 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일을 출력하고 댓글작성일 기준 오름차순 같으면 게시글 제목 기준으로 오름차순

-- 테이블 2개을 가져올때는 기본키 외래키로 꼭 연결하기
-- 정렬조건이 조금 엉키면 전혀 다른 값이 나옴 두번세번 확인하기

-- 코드
SELECT UGB.TITLE, UGB.BOARD_ID, UGR.REPLY_ID, UGR.WRITER_ID, UGR.CONTENTS, UGR.CREATED_DATE
FROM USED_GOODS_BOARD UGB JOIN USED_GOODS_REPLY UGR ON UGB.BOARD_ID = UGR.BOARD_ID
WHERE YEAR(UGB.CREATED_DATE) = 2022 AND MONTH(UGB.CREATED_DATE) = 10
ORDER BY UGR.CREATED_DATE ASC, UGB.TITLE ASC

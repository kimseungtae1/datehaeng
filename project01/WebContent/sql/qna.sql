create table qna(		
		qNo		number(5) PRIMARY KEY,		--[게시글번호]
		qTitle		varchar2(50),			--게시글제목
		qContext	varchar2(1000),			--게시글내용
		qDate		date	default sysdate,	--글 입력시간
		qReadcount	number(5) default 0,		--글 조회수
		qReplynum	number(3) default 0,		--댓글번호
		mUserid		varchar2(10),			--회원아이디
		pass 		varchar2(20)			--게시글비번
);

create sequence qna_seq start with 1 increment by 1;

select * from qna;

alter table qna add pass varchar2(20);
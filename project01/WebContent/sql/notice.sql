create table notice(
		nNo		number(5) PRIMARY KEY,		--[게시글번호]
		nTitle		varchar2(50),			--게시글제목
		nContext	varchar2(1000),			--게시글내용
		nDate		date	default sysdate,	--글 입력시간
		nReadcount	number(5) default 0,		--글 조회수	
		nReplynum	number(3) default 0,		--댓글번호
		mUserid		varchar2(10)			--회원아이디
);

create sequence notice_seq start with 1 increment by 1;

select * from notice;
create table free(
		fNo		number(5)	primary key,	--[식사상품번호]
		fTitle		varchar2(50),			--식사상품명
		fType		varchar2(20),			--메뉴구분 
		fRcount		number(38),			--예약수(best기준)
		fReplyCount	number(5)	default 0,	--식사댓글 수
		fPicture	varchar2(100),			--이미지1
		fPicture2	varchar2(100),			--이미지2
		fMapX 		varchar2(15),			--x좌표
		fMapY 		varchar2(15),			--y좌표
		fMapTitle1	varchar2(30),			--제목1
		fMapTitle2	varchar2(30)			--제목2
);
	
select * from free;
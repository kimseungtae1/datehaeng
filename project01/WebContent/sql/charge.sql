create table charge(
		gNo		number(5)	primary key,	--[식사상품번호]
		gTitle		varchar2(30),			--유료상품명
		gEx			varchar2(50),			--상품설명
		gReplyCount	number(5)	default 0,	--식사댓글 수
		gPicture	varchar2(100),			--이미지1
		gMapX 		varchar2(15),			--x좌표
		gMapY 		varchar2(15),			--y좌표
		gMapTitle1	varchar2(30),			--제목1
		gMapTitle2	varchar2(30)			--제목2
);

select * from charge;
create table meal(
		mNo			number(5)	primary key,	--[식사상품번호]
		mTitle		varchar2(30),			--식사상품명
		mType		varchar2(20),			--메뉴구분
		mPrice		number(8),			--예약금 
		mRcount		number(38),			--예약수(best기준)
		mReplyCount	number(5)	default 0,	--식사댓글 수
		mPicture	varchar2(100),			--이미지1
		mPicture2	varchar2(100),			--이미지2
		mMapX 		varchar2(15),			--x좌표
		mMapY 		varchar2(15),			--y좌표
		mMapTitle1	varchar2(30),			--제목1
		mMapTitle2	varchar2(30),			--제목2
		mctype		number(1),
		mEx			varchar2(100)
	);

select * from meal;





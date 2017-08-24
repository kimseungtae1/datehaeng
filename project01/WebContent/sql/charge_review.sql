create table charge_review(		
		grNo		number(5) PRIMARY KEY,		--[댓글번호]
		grContext	varchar2(1000),			--댓글내용
		grDate		date	default sysdate,	--댓글 입력시간
		mUserid		varchar2(10),			--회원아이디
		grReadcount	number(5) default 0,		--글 조회수
		gNo			number(5)					--식당 구분번호(1부터 등록 순서대로)
);

select * from charge_review;
insert into charge_review (grNo, grContext, mUserid, gNo) values (1, '입장료가 아깝지 않았고 생각보다 볼거리가 많아서 너무 즐거웠습니다', 'user',1);
insert into charge_review (grNo, grContext, mUserid, gNo) values (2, '데이트 장소뿐만 아니라 가족끼리 와도 좋을것 같아요!!!', 'user01',1);
insert into charge_review (grNo, grContext, mUserid, gNo) values (3, '사진찍을 장소가 조금 부족해요..ㅠㅠ', 'user',1);
insert into charge_review (grNo, grContext, mUserid, gNo) values (4, '과거 화성에 대해서 알게 됐어요!', 'user01',1);
insert into charge_review (grNo, grContext, mUserid, gNo) values (5, '수원오면 한번 더 올꺼같아요~', 'kimst',1);
insert into charge_review (grNo, grContext, mUserid, gNo) values (6, '집근처에 있어서 아주 좋아요!!!', 'Guccigirl',1);

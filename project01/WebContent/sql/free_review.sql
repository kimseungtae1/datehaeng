create table free_review(		
		frNo		number(5) PRIMARY KEY,		--[댓글번호]
		frContext	varchar2(1000),			--댓글내용
		frDate		date	default sysdate,	--댓글 입력시간
		mUserid		varchar2(10),			--회원아이디
		frReadcount	number(5) default 0,		--글 조회수
		fNo			number(5)					--식당 구분번호(1부터 등록 순서대로)
);

select * from free_review;

insert into free_review (frNo, frContext, mUserid, fNo) values (1, '입장료 내고싶을 정도~', 'Guccigirl',1);
insert into free_review (frNo, frContext, mUserid, fNo) values (2, '눈이득~ 좋은거 보고 갑니다~', 'kimst',3);
insert into free_review (frNo, frContext, mUserid, fNo) values (3, '사진 완전 많이 건짐!!', 'user',5);
insert into free_review (frNo, frContext, mUserid, fNo) values (4, '가까워서 좋고 좋아서 좋고.. 다좋다!!', 'user01',8);
insert into free_review (frNo, frContext, mUserid, fNo) values (5, '친구들끼리 오기 좋아요', 'praddda',8);
create table meal_review(		
		mrNo		number(5) PRIMARY KEY,		--[댓글번호]
		mrContext	varchar2(1000),			--댓글내용
		mrDate		date	default sysdate,	--댓글 입력시간
		mUserid		varchar2(10),			--회원아이디
		mrReadcount	number(5) default 0,		--글 조회수
		mNo			number(5)					--식당 구분번호(1부터 등록 순서대로)
);

select * from meal_review;

insert into meal_review (mrNo, mrContext, mUserid, mNo) values (1, '정말 맛있어요.. 양도 많고, 강추!!!', 'Guccigirl',1);
insert into meal_review (mrNo, mrContext, mUserid, mNo) values (2, '항상 웨이팅인거 같아요.. 너무 맛있어서 그런가봄!!', 'kimst',3);
insert into meal_review (mrNo, mrContext, mUserid, mNo) values (3, '여자친구가 남긴 것도 다먹어버림ㅋㅋㅋ', 'user',5);
insert into meal_review (mrNo, mrContext, mUserid, mNo) values (4, '집나갔던 며느리가 다시 돌아올듯함!!!', 'user01',8);
insert into meal_review (mrNo, mrContext, mUserid, mNo) values (5, '강남 맛집 못가겠다 여기때문에', 'praddda',8);
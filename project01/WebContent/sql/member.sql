--#회원관리테이블
	create table member(	
		mUserid		varchar2(10)	primary key,	--[회원아이디]
		mPw		varchar2(10),			--회원비밀번호
		mName		varchar2(10),			--회원이름
		mBirth		char(6),			--회원생년월일
		mPhone		char(13),			--회원휴대전화번호
		mAddress	varchar2(50),			--회원집주소
		mGender		varchar2(6),			--회원성별
		mEmail		varchar2(30)			--회원이메일
	);

select * from member;
drop table member;
alter table member modify(mPw varchar2(12));
alter table member modify(mBirth char(8));

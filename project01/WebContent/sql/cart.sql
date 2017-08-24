create table cart(
	ctNo		number(7)	primary key,	--기본키
	ctDate		varchar2(40),			--결제시간
	mUserid		varchar2(10)			--결제하는사람
);

create sequence ctNo_seq start with 1 increment by 1;

select * from cart;
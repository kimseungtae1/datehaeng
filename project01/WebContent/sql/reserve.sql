create table reserve(
  rNo number(30) primary key,
  mUserid varchar2(10),   -- 예약한사람(fk)
  mcNo number(5),     -- 상품번호(fk)
  rDate timestamp ,  -- 예약시간
  rName varchar(10), -- 예약자명
  rPhone  varchar(20), -- 예약자핸드폰
  rEmail varchar(30), -- 예약자 이메일
  adult varchar2(100), -- 어른예약
  rDate1 varchar2(200), -- 예약날짜
  rDate2 varchar2(200), -- 예약시간
  mcTitle	varchar2(30),	--식사상품명
  mcPrice	number(8),			--예약금
  mcPicture	varchar2(100),		--이미지1
  mcbuy		number(1)		--결제수단
);

select * from reserve;
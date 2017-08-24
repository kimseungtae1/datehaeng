create table prere(
	preNo		number(7),
	preDate		timestamp	default systimestamp,	--날짜
	--preCount	number(2),							--인원수
	mUserid		varchar2(10)
);

select * from prere;
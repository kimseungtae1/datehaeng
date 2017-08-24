//#4] login.jsp에서 아이디, 비번 유효성 검토하러 왔다!
function loginCheck(){
	if(docoment.frm.mUserid.length == 0){
		alert('아이디를 써주세요.');
		frm.mUserid.focus();
		return false;	//false는 submit하지 말라는 뜻!! 왜냐, 아이디가 없으니까 다시 입력하도록!
	}
	//length==0 또는 value 가 "" 빈문자열이냐? 둘중에 하나!
	if(docoment.frm.mPw.value == ""){
		alert('암호를 써주세요.');
		frm.mPw.focus();
		return false;	//false는 submit하지 말라는 뜻!! 왜냐, 암호가 없으니까 다시 입력하도록!
	}
	return true; //위의 두 가지 경우가 아니면 submit 시켜라!
	//#5-1] submit 뒨 후, 로그인 처리
	//페이지로 id와 pwd를 갖고 전송된다!
}

//#14] id 중복 체크	id를 기재한 상태에서 중복체크를 눌렀다!
function idCheck(){
	if(document.frm.mUserid.value == ""){
		alert('아이디 입력하세요');
		document.frm.mUserid.focus();
		return;
	}
	var url = "idCheck.do?mUserid="+document.frm.mUserid.value;
	/*
	  		var : 통합변수 - int, double, String, ...  (다 포함)
	  		idCheck.do : 가야할 페이지, 지금은 서블릿으로 가라!
	  							(서블릿 가면 dao 불러다가 db접속을 할 거다)
	  		userid : 서블릿이나 jsp에서 사용할 파라미터! getParameter("userid")
	  		document~value까지 : 해당 문서의 값
	 */
	//#15] idCheckServlet으로 가라!(왜? 매핑값 때문에!!)
	//window.open(A, B, C);
	window.open(url, 
			"_blank_1", 
			"toolbar=no, menubar=no, scrollbars=yes, resizable=no" + 
			"width=450, height=200");
	/*
	 		A : 데이터(이미지 위치의 경로)
	 		B : 제목
	 		C : 크기
	 		툴바 쓸거냐? 메뉴바 쓸꺼냐? 스크롤바 생기게할꺼냐? 크기조절 가능하게 할꺼냐?
	 */
}

//#19] 중복체크 (idCheck.jsp) 에서 사용 버튼을 누른 후 이곳에 왔다!
//값을 전달해주는 매개변수일 경우에는 var가 필요없다! 자바스크립트 변수 문법
function idok(mUserid){
	document.frm.mUserid.value;	//모든 검증이 끝나고 -1(사용가능)처리를 받은 userid값이다!
								//여기서 document는 idCheck.jsp가 되는것이고 idCheck()에서의 document는 join.jsp가 된다! 헷갈리지말것!
	
		//opener(상위의 window.open()을 시켰던==join.jsp) 모글(엄마글, super)가 누구냐?
		//그 문서의 frm의 userid에게 idCheck.jsp에서 보낸 (-1 판정 받은) id를 넣어줘라!
		opener.frm.mUserid.value = document.frm.mUserid.value;
		
		//중복 체크 여부를 따질 수 있다.
		opener.frm.reid.value = document.frm.mUserid.value;
		
		//현재 열려있는 window.open() 을 닫아야 한다.
		self.close();	//현재 열려있는 창 닫기!
		//#20] 창을 닫고 난 뒤에 id 중복체크 창으로 돌아간다! 
}

//#21-2] join.jsp에서 submit 실행하면 온다...  return해서 돌아가자!
function joinCheck(){
	if(document.frm.mUserid.value.length == 0){
		alert('아이디를 써주세요.');
		frm.mUserid.focus();
		return false;
	}
	if(document.frm.mUserid.value.length < 4){
		alert('아이디는 4글자 이상이어야 합니다.');
		frm.mUserid.focus();
		return false;
	}
	if(document.frm.mPw.value.length == 0){
		alert('암호는 반드시 입력해야 합니다.');
		frm.mPw.focus();
		return false;
	}
	if(document.frm.mPw.value != document.frm.mPwCheck.value){
		alert('암호가 일치하지 않습니다.');
		frm.mPw.focus();
		return false;
	}
	if(document.frm.mName.value.length == 0){
		alert('이름을 써주세요.');
		frm.mName.focus();
		return false;
	}
	if(document.frm.reid.value.length == 0){
		alert('아이디 중복확인을 하지 않았습니다.');
		frm.mUserid.focus();
		return false;
	}
	return true;
}
















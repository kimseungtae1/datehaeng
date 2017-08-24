<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<%request.setCharacterEncoding("UTF-8"); %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>식사행-몬스터슈니첼</title>
<script src="http://t1.daumcdn.net/tistory_admin/lib/jquery-2.1.4.min.js"></script>
<!-- // jQuery UI CSS파일 --> 
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<!-- // jQuery 기본 js파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<!-- // jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<link href="${contextPath }/css/submenu.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/css/button4.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/css/button3.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/css/button2.css" rel="stylesheet" type="text/css">
<!-- 시간 예약 제이쿼리 -->
<link rel="stylesheet" type="text/css" href="${contextPath }/css/timepicki.css"/>
<script type="text/javascript" src="${contextPath }/js/timepicki.js"></script>
<script type="text/javascript" src="http://openapi.map.naver.com/openapi/v2/maps.js?clientId=FU91pDdo7FsCTFKgip9S"></script> 
<style>
@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
/*@media screen and (max-width:767px) {
	#wrap {width:100%;}
	#contant > h2 {font-size:3em;}
	#contant p {font-size:2em;}
}
@media screen and (min-width:768px) and (max-width:959px){
	#wrap {width:100%;}
	#contant > h2 {font-size:2em;}
	#contantt p {font-size:1.5em;}
}
@media screen and (min-width:960px) {
	#wrap {width:100%;}
	#contant > h2 {font-size:1.5em;}
	#contant p {font-size:1em;}
}*/
	#keyimg { background-image:url(${contextPath}/images/sub02_01meal_detail03_kmg.gif); background-repeat:no-repeat; background-size:100% 100%;}
	body {font-family: 'Nanum Gothic', sans-serif;}
	* { margin:0; padding:0; font-family: 'Nanum Gothic', sans-serif; font-size:15px;}
	a {color:#fff; text-decoration:none;}
	a:hover {color:#ff931e; font-size:15px; font-weight:bold; text-decoration:none;}
	li {list-style:none;}
	#wrap {margin:0 auto;font-family: 'Nanum Gothic', sans-serif;} /*항상가운데로 오게*/
	#header {border:0px height:61px; text-align:center;} /* line-height 가로로 가운데 정렬*/
	#block1 {height:20px;}
	#block2 {height:20px;}
	#block3 {height:54px;}
	#block4 {height:151px;}
	#block5 {height:93px;}
	#block6 {height:34px;}
	#block7 {height:48px;}
	#block8 {height:120px;}
	#block9 {height:122px;}
	#block10 {height:100px;}
	#block11 {height:30px;}
	#block12 {height:75px;}
	#block13 {height:141px;}
	#block14 {height:73px;}
	#detail_06 {text-align:center;}
	#copySitemap { background-image:url(${contextPath}/images/copyright250.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer { background-image:url(${contextPath}/images/footer.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer{ height:174px; text-align:center; border:0; margin:0; padding:0; }
	/* box-sizing은 border이 가로 세로 사이즈에 영향을 주기때문에 / width가 20%인 이유는 가로를 100px로 잡았을때 5개 메뉴에 퍼센트로 할당*/
	#keyimg {height:360px; text-align:center;}
	#copySitemap {height:250px; text-align:center;}
	#list ul {overflow:hidden} /* float를 사용 시 상위 태그에 무조건 써야한다*/
	#list ul li {float:left; text-align:center; width:25px; box-sizing:border-box;}
	.select {color:#ff931e;}
	.productTitle {color:#ff931e; font-size:18px;}
	.product {color:#343434; font-size:18px;}
	#bg_01 { background-image:url(${contextPath}/images/sub02_01meal_detail01_bg01.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#bg_01{height:1435px; text-align:center;}
	#bg_02 { background-image:url(${contextPath}/images/sub02_01meal_detail01_bg02.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#bg_02{height:657px; text-align:center;}
	#bg_03 { background-image:url(${contextPath}/images/sub02_01meal_detail03_bg03.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#bg_03{height:1064px; text-align:center;}
	#bg_04 { background-image:url(${contextPath}/images/sub02_01meal_detail03_bg04.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#bg_04{height:136px; text-align:center;}
	#bg_05 { background-image:url(${contextPath}/images/sub02_01meal_detail01_bg04.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#bg_05{height:1150px; text-align:center;}
	#bg_06 { background-image:url(${contextPath}/images/sub_detail_review_bg.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#bg_06{height:84px; text-align:center;}
	#bg_09 { background-image:url(images/sub_detail_review_bg.gif); background-repeat:no-repeat; background-size:100% 100%;}
    #bg_09{height:84px; text-align:center;}
	.list {color:#343434; font-size:14px; font-family:'Naum Godic';}
	.list a:hover {text-decoration:underline;}

	/* 리뷰 링크색 */
   .ho{color:black;}
	
</style>
<script type="text/javascript">

$(function(){
	//예약날짜
	$("#mReserveDate").datepicker({
		minDate:1, //당일예약불가
		maxDate:"+1M", //내일부터 약 1달간 예약가능
		dateFormat: "yy-mm-dd", //날짜형식
		currentText: '오늘 날짜',
		changeMonth: true, 
	    dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
	    dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
	    monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
	    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
	});
	
	//예약시간
	$('#mReserveTime').timepicki({
		show_meridian:false, //am,pm 삭제
		min_hour_value:0, // 00 시부터
		max_hour_value:23, // 23시까지 <나중에 오픈/마감시간으로 수정할 것>
		step_size_minutes:30, // 30분 단위
		overflow_minutes:true
	});
});
</script>
<script type="text/javascript">
$(document).ready(function() {
    $("body").append("<a class='return_top' href='#'>▲ TOP</a>");
    var top = $(".return_top");
    $(window).scroll(function () {
        if ($(this).scrollTop() > 120) {
            top.slideDown();
        }else {
            top.slideUp();        
        }
    });
    top.click(function () {
        $('body,html').animate({ scrollTop:0 },900);return false;})
        .css({
        "right":"15px",
        "bottom":"15px",
        "padding":"7px",
        "color":"#fff",
        "background":"#343434",
        "border-radius":"5px",
        "position":"fixed",
        "z-index":"9999" })
        .hide()
        .hover(function() { $(this).css({"background":"#de7131"}) },
                     function() { $(this).css({"background":"#343434"}) }
                    );
});    
</script>
</head>

<body>
<div id="wrap">
<div id="block1"></div>
<!-- 드롭다운 시작 -->
<div id="menu">
<input type="checkbox" name="toggle" id="toggle" />
<label for="toggle"></label>
<div class="container"></div>
<div class="message">
  <ul>
    <li><img src="${contextPath }/images/sub_addMenu_home.png" onmouseover='this.src="${contextPath }/images/sub_addMenu_home_r.png"' onmouseout='this.src="${contextPath }/images/sub_addMenu_home.png"' onclick="location.href='${contextPath}/index.jsp'" style="cursor:pointer;"/></li>
    <li><a href="jsp/sub01_dateHaeng.jsp">데이트행</a></li>
    <li><a href="${contextPath }/mProductServlet?command=mproduct_list&mctype=1">식당보기</a></li>
    <li><a href="${contextPath }/mProductServlet?command=mproduct_list&mctype=2">카페보기</a></li>
    <li><a href="${contextPath }/fProductServlet?command=fproduct_list">무료관람</a></li>
    <li><a href="${contextPath }/gProductServlet?command=gproduct_list">유료관람</a></li>
    <li><a href="jsp/sub04_humancity.jsp">휴먼시티</a></li>
    <li><a href="${contextPath }/BoardServlet_notice?command=board_list">커뮤니티</a></li>
  </ul>
</div>
  </div>
<!-- 드롭다운 끝 -->
	<div id="header">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="300" height="105" rowspan="3" align="center" valign="top"></td>
    <td width="62" height="57" rowspan="3" align="center" valign="middle"><img src="${contextPath}/images/subpage_logo.png" onclick="location.href='${contextPath}/index.jsp'" style="cursor:pointer;"></td>
    <td width="1047" height="105" rowspan="3" align="center" valign="top"><img src="${contextPath}/images/sub02_title.gif"></td>
    <c:choose>
  	<c:when test="${empty loginUser }">
  		<td width="47" height="12" align="left" valign="top"><img src="${contextPath}/images/subpage_login.png" onmouseover='this.src="${contextPath}/images/subpage_login_r.png"' onmouseout='this.src="${contextPath}/images/subpage_login.png"' onclick="location.href='${contextPath}/login.do'" style="cursor:pointer;"></td>
    	<td width="57" height="12" align="right" valign="top"><img src="${contextPath}/images/subpage_join.png" onmouseover='this.src="${contextPath}/images/subpage_join_r.png"' onmouseout='this.src="${contextPath}/images/subpage_join.png"' onclick="location.href='${contextPath}/join.do'" style="cursor:pointer;"></td>  
  	</c:when>
  	<c:otherwise>
  		<td width="47"><img src="${contextPath}/images/sub_logoutBtn.gif" onmouseover='this.src="${contextPath}/images/sub_logoutBtn_r.gif"' 
  		onmouseout='this.src="${contextPath}/images/sub_logoutBtn.gif"' onclick="location.href='${contextPath}/logout.do'" style="cursor:pointer;"></td>
	    <td width="57"><img src="${contextPath}/images/sub_mypageBtn.gif" onmouseover='this.src="${contextPath}/images/sub_mypageBtn_r.gif"' 
	    onmouseout='this.src="${contextPath}/images/sub_mypageBtn.gif"' onclick="location.href='${contextPath}/MypageServlet'" style="cursor:pointer;"></td>
  	</c:otherwise>
  </c:choose>
    <td width="300" height="105" rowspan="3" align="center" valign="top"></td>
  </tr>
  <tr>
    <td height="10" colspan="2" align="center" valign="top"></td>
    </tr>
  <tr>
    <td width="64" height="16" align="left" valign="top"></td>
    <td width="46" height="16" align="right" valign="top">&nbsp;</td>
    </tr>
</table>
</td>
  </tr>
</table>
    </div>
   
    <div id="block1"></div>
    <div id="nav">
    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="25" border="0" cellspacing="0" cellpadding="0">
  <tr>
   <td align="center" valign="top" width="765"></td>
   <td align="center" valign="top">
   <img src="${contextPath}/images/sub02_menu_meal_r.png" width="49" height="25"></td>
   <td align="center" valign="top" width="276"></td>
   <td align="center" valign="top">
   <img src="${contextPath}/images/sub02_menu_cafe.png" 
   width="46" height="25" onmouseover='this.src="${contextPath}/images/sub02_menu_cafe_r.png"' 
   onmouseout='this.src="${contextPath}/images/sub02_menu_cafe.png"' 
   onclick="location.href='${contextPath }/mProductServlet?command=mproduct_list&mctype=2'" style="cursor:pointer;"></td>
   <td align="center" valign="top" width="764"></td>
  </tr>
</table>
</td>
  </tr>
</table>
  </div>
  	<div id="block2"></div>
    <div id="keyimg">
  </div>
</div>
<div id="block3"></div>
<div id="detailInfo">
<form name="frm" action="ReservationServlet" method="post">
<input type="hidden" id="command" name="command" value="">
<input type="hidden" name="mUserid" value="${loginUser.mUserid}">
<input type="hidden" name="mNo" value="${mprod.mNo }">
   <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top">
    <table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="464" height="468" rowspan="8" align="center" valign="top"></td>
    <td width="468" height="468" rowspan="8" align="center" valign="top"><img src="${contextPath }/jsp/upload/${mprod.mPicture }" width="468" height="468"></td>
    <td height="468" rowspan="8" align="center" valign="top"></td>
    <td width="144" height="10" align="left" valign="middle"></td>
    <td width="263" height="10" align="left" valign="middle"><p class="productTitle">&nbsp;</p></td>
    <td width="464" height="468" rowspan="8" align="center" valign="top"></td>
  </tr>
  <tr>
    <td height="87" align="center" valign="top"><strong>식당명</strong></td>
    <td width="263" height="87" align="left" valign="top"><p class="productTitle">${mprod.mTitle }</p>
      <p class="productTitle"><!-- (구분 : 양식 / 파스타 / 샐러드 / 돈까스 / 주류) --></p></td>
  </tr>
  <tr>
    <td width="144" height="49" align="center" valign="top"><strong>예약금</strong></td>
    <td width="263" height="49" align="left" valign="top">${mprod.mPrice }원</td>
    </tr>
  <tr>
    <td width="144" height="51" align="center" valign="top"><strong>적립금</strong></td>
    <td width="263" height="51" align="left" valign="top">
    <input type="hidden" name="mMoney" value="<fmt:parseNumber integerOnly='true'  value='${mprod.mPrice*0.05 }'/>">
    	<fmt:parseNumber integerOnly="true"  value="${mprod.mPrice*0.05 }"/> 원 (예약금의 5%)</td>
    </tr>
  <tr>
    <td width="144" height="51" align="center" valign="top"><strong>예약일</strong></td>
    <td width="263" height="51" align="left" valign="top">
		<input type="text" id="mReserveDate" name="mDate1" placeholder="날짜를 선택해주세요."></td>
    </tr>
  <tr>
    <td width="144" height="49" align="center" valign="top"><strong>시간대</strong></td>
    <td width="263" height="49" align="left" valign="top">
		<input type='text' id='mReserveTime' name='mDate2' placeholder="시간을 선택해주세요."/></td>
    </tr>
  <tr>
    <td width="144" height="63" align="center" valign="top"><strong>인원수</strong></td>
    <td width="263" height="63" align="left" valign="top">
   	<!-- 어른 --><select name="adult" size="1">
 		 <option value='1' selected>1</option>
 		 <option value='2'>2</option>
 		 <option value='3'>3</option>
 		 <option value='4'>4</option>
 		 <option value='5'>5</option>
 		 <option value='6'>전화문의</option>
	</select>
   	<!-- 아이<select name="child" size="1">
 		 <option value='1' selected>1</option>
 		 <option value='2'>2</option>
 		 <option value='3'>3</option>
 		 <option value='4'>4</option>
 		 <option value='5'>5</option>
 		 <option value='6'>전화문의</option>
	</select> -->
	</td></tr>
  <tr>
    <!-- 바로예약 버튼 -->
    <td width="171" height="108" align="right" valign="top">
    	<a class="btn" href="#" onclick="Type_go('dreservation')">지금예약하기</a>
    </td>
    <!-- 장바구니 버튼 -->
    <td width="263" height="108" align="left" valign="top">
    	<a class="btn btn-secondary" href="#" onclick="Type_go('cart')">장바구니담기</a>
    </td>
    </tr>
</table>
</td>
  </tr>
</table>
</form>
</div>
<script type="text/javascript">
function Type_go(a){
	if(document.frm.mDate1.value == ""){
		alert("날짜와 시간을 입력해주세요!");
		document.frm.mDate1.focus();
		return;
	}
	document.getElementById("command").value = a; 
	if(a=='dreservation'){
		alert("예약 페이지로 이동합니다.");
	}
	if(a=='cart'){
		alert("장바구니로 이동합니다.");
	}
	frm.submit();
}

</script>
<!--  상품 상세정보 끝  -->


<div id="block4">
</div>
<div id="detailStart">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="733" height="241" align="center" valign="top"></td>
    <td width="440" height="241" align="center" valign="top"><img src="${contextPath}/images/sub02_01meal_detail03_startPic.gif" width="440" height="241"></td>
    <td width="727" height="241" align="center" valign="top"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
<div id="block5">
</div>
<div id="bg_01">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="300"></td>
    <td align="center" valign="top"><img src="${contextPath}/images/sub02_01meal_detail03_pic01.gif" width="1302" height="1435"></td>
    <td align="center" valign="top" width="298"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
<div id="detail_01">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="340" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="300"></td>
    <td align="center" valign="top" width="1153"><img src="${contextPath}/images/sub02_01meal_detail03_pic02.gif" width="1153" height="340"></td>
    <td align="center" valign="top" width="447"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
<div id="bg_02">
	<div id="block6">
    </div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="575" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="200"></td>
    <td align="center" valign="top" width="1500"><img src="${contextPath}/images/sub02_01meal_detail03_pic03.gif" width="1500" height="623"></td>
    <td align="center" valign="top" width="200"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
<div id="block7">
</div>
<div id="detail_02">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="468" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="464"></td>
    <td align="center" valign="top" width="989"><img src="${contextPath}/images/sub02_01meal_detail03_pic04.gif" width="989" height="468"></td>
    <td align="center" valign="top" width="447"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
<div id="detail_03">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="2099" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="200"></td>
    <td align="center" valign="top" width="1500"><img src="${contextPath}/images/sub02_01meal_detail03_pic05.gif" width="1500" height="2099"></td>
    <td align="center" valign="top" width="200"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
<div id="block8">
</div>
<div id="bg_03">
<div id="detail_04">
<table width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="1064" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="200"></td>
    <td align="center" valign="top" width="1500"><img src="${contextPath}/images/sub02_01meal_detail03_pic06.gif" width="1500" height="1064"></td>
    <td align="center" valign="top" width="200"></td>
  </tr>
</table>
</td>
  </tr>
</table>

</div>
</div>
<div id="block9">
</div>
<div id="detail_05">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="2335" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="200"></td>
    <td align="center" valign="top" width="1500"><img src="${contextPath}/images/sub02_01meal_detail03_pic07.gif" width="1500" height="2335"></td>
    <td align="center" valign="top" width="200"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
<div id="block10">
</div>
<div id="bg_04">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="136" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="638"></td>
    <td align="center" valign="top" width="645"><img src="${contextPath}/images/sub02_01meal_detail03_pic08.gif" width="645" height="136"></td>
    <td align="center" valign="top" width="617"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
<div id="block11">
</div>
<div id="detail_06">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="399" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="462" height="399" rowspan="2" align="center" valign="top"></td>
    <td width="399" height="399" rowspan="2" align="center" valign="top"><img src="${contextPath}/images/sub02_01meal_detail03_pic09.gif" width="399" height="399"></td>
    <td width="26" height="399" rowspan="2" align="center" valign="top"></td>
    <td height="281" colspan="2" align="center" valign="top"><img src="${contextPath}/images/sub02_01meal_detail03_pic10.gif" width="718" height="281"></td>
    <td width="300" height="399" rowspan="2" align="center" valign="top"></td>
  </tr>
  <tr>
    <td width="170" height="118" align="left" valign="top"><a class="effect effect-1" 
    href="${contextPath}/ReservationServlet?command=reserve_list" title="Learn More">예약현황</a></td>
    <td width="379" height="118" align="center" valign="top"></td>
    </tr>
</table>
</td>
  </tr>
</table>
</div>
<div id="block12">
</div>
<div id="locationTitle">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="42" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="307"></td>
    <td align="center" valign="top" width="209"><img src="${contextPath}/images/sub02_01meal_detail01_pic11.gif" width="209" height="42"></td>
    <td align="center" valign="top" width="1384"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
<!-- 지도시작 -->
<div id="location">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="702" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="307"></td>
    <td align="center" valign="top" width="1286">
    <%-- <img src="${contextPath}/images/sub02_01meal_detail01_pic13.gif" width="1286" height="702"> --%>
    
<div id = "testMap" style="border:1px solid #CCC; width:1286px; height:702px;"></div>  
<script type="text/javascript"> 
                          var oPoint = new nhn.api.map.LatLng(${mprod.mMapX}, ${mprod.mMapY}); /* 37.278697, 127.015872 */
                        nhn.api.map.setDefaultPoint('LatLng'); 
                        oMap = new nhn.api.map.Map('testMap' ,{ 
                                                point : oPoint, 
                                                zoom : 11, 
                                                enableWheelZoom : true, 
                                                enableDragPan : true, 
                                                enableDblClickZoom : true, 
                                                mapMode : 0, 
                                                activateTrafficMap : false, 
                                                activateBicycleMap : false, 
                                                minMaxLevel : [ 1, 14 ], 
                                                size : new nhn.api.map.Size(1286, 702) 
                                        }); 
          
          var mapZoom = new nhn.api.map.ZoomControl(); // - 줌 컨트롤 선언 
mapZoom.setPosition({left:80, bottom:40}); // - 줌 컨트롤 위치 지정 
var oSize = new nhn.api.map.Size(28, 37); 
var oOffset = new nhn.api.map.Size(14, 37); 
var oIcon = new nhn.api.map.Icon('http://static.naver.com/maps2/icons/pin_spot2.png', oSize, oOffset); 
  
var oMarker = new nhn.api.map.Marker(oIcon, { title : '${mprod.mMapTitle1}, ${mprod.mMapTitle2}' });  //마커를 생성한다 행궁동, 멘야산타이메
oMarker.setPoint(oPoint); //마커의 좌표를 oPoint 에 저장된 좌표로 지정한다 
oMap.addOverlay(oMarker); //마커를 네이버 지도위에 표시한다 
  
var oLabel = new nhn.api.map.MarkerLabel(); // 마커 라벨를 선언한다. 
oMap.addOverlay(oLabel); // - 마커의 라벨을 지도에 추가한다. 
oLabel.setVisible(true, oMarker); // 마커의 라벨을 보이게 설정한다.
//마커 아이콘
var mapZoom = new nhn.api.map.ZoomControl(); // - 줌 컨트롤 선언
    mapZoom.setPosition({left: 80, bottom: 40}); // - 줌 컨트롤 위치 지정
    oMap.addControl(mapZoom); // - 줌 컨트롤 추가.
    var defaultBounds = oMap.getBound();
    var defaultCenter = oMap.getCenter();
    var defaultLevel = oMap.getLevel();
    var defaultMapMode = oMap.getMapMode();

    function setMapLevel(val) {
        oMap.setLevel(val); // - 지도의 레벨을 특정 값으로 설정합니다.
    }

    function goPanning() {
        var tempZoomOptions = {useEffect: true, centerMark: true}; // - 줌 옵션을 설정합니다.
        oMap.setCenterBy(20, -10, tempZoomOptions); // - 20 pixel 만큼 오른쪽으로 이동합니다.
    }

    function revertPanning() {
        oMap.setCenter(oPoint); // - 지도 생성 시 지정한 중심점으로 중심점을 설정한다.
    }
        </script> 
        
    </td>
    <td align="center" valign="top" width="307"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
<!-- 지도끝 -->
<div id="detail_07">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="253" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="733"></td>
    <td align="center" valign="top" width="440"><img src="${contextPath}/images/sub02_01meal_detail03_pic11.gif" width="440" height="253"></td>
    <td align="center" valign="top" width="727"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
<div id="bg_05">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="300"></td>
    <td align="center" valign="top" width="1300"><img src="${contextPath}/images/sub02_01meal_detail03_pic12.png" width="1300" height="1150"></td>
    <td align="center" valign="top" width="300"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
<!-- 리뷰부분 -->
<div id="block13"></div>
<div id="bg_09">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="84" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="406"></td>
    <td align="center" valign="top" width="567"><img src="${contextPath}/images/sub_detail_review_title.gif" width="567" height="84"></td>
    <td  align="center" valign="top" width="927"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
	<div id="review"><img src="${contextPath}/images/sub_detail_review_text.gif" width="1900" height="701"></div>
    <div id="review_subTitle">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="112" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="804"></td>
    <td align="center" valign="top" width="291"><img src="${contextPath}/images/sub_detail_review_subTitle.gif" width="291" height="112"></td>
    <td  align="center" valign="top" width="927"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>

	<div id="reviewStart"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="704" height="51" rowspan="2" align="center" valign="middle"></td>
    <td width="56" height="51" rowspan="2" align="right" valign="middle"><img src="${contextPath}/images/sub_detail_review_icon.gif" width="43" height="51"></td>
    <td width="10" height="51" rowspan="2" align="center" valign="middle"></td>
    <td width="105" height="27" align="center" valign="middle" class="select">고객 만족도</td>
    <td width="17" height="51" rowspan="2" align="center" valign="middle"></td>
    <td width="478" height="51" rowspan="2" align="left" valign="middle">
        <!-- <button class="button button_type1">
          <span class="button__label">상품 리뷰달기</span>
        </button> -->
			</td>
    <td width="522" height="51" rowspan="2" align="center" valign="middle"></td>
  </tr>
  <tr>
    <td width="105" height="24" align="center" valign="middle" class="select"><strong>4.6</strong></td>
    </tr>
</table>
</td>
  </tr>
</table>
</div>
<div id="block13">
<!-- 상품후기달기버튼:접었다펴기 -->
	<a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)"> 
<button class="button button_type1">
          <span class="button__label">상품 리뷰달기</span>
        </button>
</a><div style="DISPLAY: none"><br>
<form class="f_login" action="mProductServlet" method="post">
<input type="hidden" name="command" value="mproduct_view">
<input type="hidden" name="mUserid" value="${loginUser.mUserid }">
<input type="hidden" name="mNo" value="${mprod.mNo }">
내용입력 &nbsp;&nbsp;&nbsp; <input type="text" name="mrContext" size="120"> &nbsp;&nbsp;&nbsp; 
<input type="submit" value="등록">
</form>
</div>
</div>

    <c:if test="${listcount == 0 }">
   	 <div align="center">
 		등록된 게시글이 없습니다.
 		</div>
	</c:if>
	<c:if test="${listcount > 0 }">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="300"></td>
    <td align="center" valign="top" width="1300" background="${contextPath}/images/sub_detail_review_list_bg.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1300" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="46" colspan="5" align="center" valign="middle"></td>
    </tr>
    </c:if>
    <!-- DB에서 리뷰 게시물을 불러오는 부분 입니다. -->
	  <c:forEach var="meal_review" items="${MealReviewList }">
	  <c:if test="${!empty meal_review.mrContext }">
		  <tr class="list">
		    <td width="136" height="35" align="center" valign="middle">★★★</td>
		    <td width="88" align="center" valign="middle"></td>
		    <td width="721" height="35" align="center" valign="middle">${meal_review.mrContext }</td>
		    <td width="208" height="35" align="center" valign="middle">${meal_review.mUserid }</td>
		    <td width="147" height="35" align="center" valign="middle"> - </td>
		  </tr>
		</c:if>
	  </c:forEach>
</table>
</td>
  </tr>
</table>
</td>
    <td align="center" valign="top" width="300"></td>
  </tr>
</table>
</td>
  </tr>
</table>
<!-- 후기 끝 -->
<!--  페이지 번호 시작 -->
    <div id="block6"></div>
     <div id="list" align="center">
			<c:if test="${pageNum <= 1 }">[이전]&nbsp; </c:if>
			<c:if test="${pageNum > 1 }">
				<a class="ho" href="mProductServlet?command=mproduct_view&mNo=${mprod.mNo}&pageNum=${pageNum-1 }
				&column=${param.column}&find=${find}#list">[이전]</a>&nbsp; 
			</c:if>
			<c:forEach var="a" begin="${startpage}" end="${endpage}">
				<c:if test="${a==pageNum}">[${a }]</c:if>
				<c:if test="${a !=pageNum}"><a class="ho" href="mProductServlet?command=mproduct_view&mNo=${mprod.mNo}&pageNum=${a }
				&column=${param.column}&find=${find}#list">[${a }]</a></c:if>
			</c:forEach>
			<c:if test="${pageNum >= maxpage}">[다음]</c:if>
			<c:if test="${pageNum < maxpage}">
				<a class="ho" href="mProductServlet?command=mproduct_view&mNo=${mprod.mNo}&pageNum=${pageNum+1}&column=${param.column}
				&find=${find}#list">[다음]</a>
			</c:if>
    </div>
    <!--  페이지 번호 끝  -->

  <div id="block7"></div>
   <div id="footer">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="170" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="919" height="43" align="left" valign="top"></td>
        <td width="62" height="43" align="left" valign="top"></td>
        <td width="919" height="43" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="919" height="63" align="left" valign="top"></td>
        <td width="62" height="63" align="left" valign="top"><img src="${contextPath}/images/footer_logo.png" width="62" height="63"></td>
        <td width="919" height="63" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="919" height="50" align="left" valign="top"></td>
        <td width="62" height="50" align="left" valign="top"></td>
        <td width="919" height="50" align="left" valign="top"></td>
      </tr>
    </table></td>
  </tr>
</table> 
</td>
  </tr>
</table>
  </div>
  </div>
	  <div id="copySitemap">
</div>
</div>
</body>
</html>

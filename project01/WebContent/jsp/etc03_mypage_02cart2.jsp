<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>마이페이지_주문하기</title>
<link href="${contextPath }/css/submenu.css" rel="stylesheet" type="text/css">
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
	#keyimg { background-image:url(${contextPath}/images/etc03_02cart2_order_keyimage.gif); background-repeat:no-repeat; background-size:100% 100%;}
	body {font-family: 'Nanum Gothic', sans-serif;}
	* { margin:0; padding:0; font-family: 'Nanum Gothic', sans-serif; font-size:15px;}
	a {color:#fff; text-decoration:none;}
	a:hover {color:#ff931e; font-size:15px; font-weight:bold; text-decoration:none;}
	li {list-style:none;}
	#wrap {margin:0 auto;font-family: 'Nanum Gothic', sans-serif;} /*항상가운데로 오게*/
	#header {border:0px height:61px; text-align:center;} /* line-height 가로로 가운데 정렬*/
	#block1 {height:10px;}
	#block2 {height:20px;}
	#block3 {height:62px;}
	#block4 {height:16px;}
	#block5 {height:30px;}
	#block6 {height:58px;}
	#block7 {height:73px;}
	#copySitemap { background-image:url(${contextPath}/images/copyright250.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer { background-image:url(${contextPath}/images/footer.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer{ height:174px; text-align:center; border:0; margin:0; padding:0; }
	#copySitemap {height:250px; line-height:600px; text-align:center;}
	#list ul {overflow:hidden} /* float를 사용 시 상위 태그에 무조건 써야한다*/
	#list ul li {float:left; text-align:center; width:25px; box-sizing:border-box;}
	.select {color:#ff931e;}
	#cart {color:#ff931e; font-size:18px;}
	#price {font-size:24px;}
	#total_text {color:#404040; font-size:18px; font-family:"나눔바른고딕 Light"; font-weight:bold;}
	#total_text2 {color:#404040; font-size:24px; font-family:"나눔바른고딕 Light"; font-weight:bold;}
	#total {color:#404040; font-size:28px;}
	#total2 {color:#ff931e; font-size:25px;}
	#ps {font-size:18px; color:#F00;}
	
</style>
<script src="http://t1.daumcdn.net/tistory_admin/lib/jquery-2.1.4.min.js"></script>
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
<div id="block1"></div>
	<div id="header">
    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="300" height="105" rowspan="3" align="center" valign="top"></td>
    <td width="71" height="105" rowspan="3" align="center" valign="top"><img src="${contextPath}/images/subpage_logo.png" onclick="location.href='${contextPath}/index.jsp'" style="cursor:pointer;"></td>
    <td width="1047" height="105" rowspan="3" align="center" valign="top"><img src="${contextPath}/images/mypage_title.gif"></td>
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
    <td height="30" colspan="2" align="center" valign="top"></td>
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
    <div id="nav">
    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="25" border="0" cellspacing="0" cellpadding="0">
  <tr>
   <td align="center" valign="top" width="905"></td>
   <td align="center" valign="top"><img src="${contextPath}/images/mypage_02title.gif" width="91" height="25"></td>
   <td align="center" valign="top" width="904"></td>
  </tr>
</table>
</td>
  </tr>
</table>
  </div>
  	<div id="block2"></div>
    <div id="keyimg">
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="790" height="360" rowspan="3" align="center" valign="top"></td>
    <td height="208" colspan="5" align="center" valign="top"></td>
    <td width="780" height="360" rowspan="3" align="center" valign="top"></td>
  </tr>
  <tr>
 	 <td width="59" height="96" align="center" valign="top"><img src="${contextPath}/images/etc03_03memberInfo_reserveBtn2.png" onmouseover='this.src="${contextPath}/images/etc03_03memberInfo_reserveBtn2_r.png"' onmouseout='this.src="${contextPath}/images/etc03_03memberInfo_reserveBtn2.png"' width="59" height="96" onclick="location.href='jsp/etc03_mypage_03info.jsp'" style="cursor:pointer;"></td>
    <td width="60" height="96" align="center" valign="top"></td>
    <td width="63" height="96" align="center" valign="top"><img src="${contextPath}/images/etc03_02car_carBtn2.png" width="63" height="96"></td>
    <td width="49" height="96" align="center" valign="top"></td>
    <td width="89" height="96" align="center" valign="top"><img src="${contextPath}/images/etc03_01reserve_modifyBtn2.png" onmouseover='this.src="${contextPath}/images/etc03_01reserve_modifyBtn2_r.png"' onmouseout='this.src="${contextPath}/images/etc03_01reserve_modifyBtn2.png"' width="89" height="96" onclick="location.href='jsp/etc03_mypage_03info.jsp'" style="cursor:pointer;"></td>
    </tr>
  <tr>
    <td height="56" colspan="5" align="center" valign="top"></td>
    </tr>
</table>
</td>
  </tr>
</table>
  </div>
    <div id="block3"></div>
    <div id="notice_title">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="${contextPath}/images/etc03_mypage_02cart2_title.gif" width="422" height="29"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="block4"></div>
    <div id="contant">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="300" height="96"></td>
    <td width="1300" height="96" align="center" background="${contextPath}/images/etc03_mypage_02cart_box01.gif"><table width="1300" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="41" align="center" valign="bottom"><strong>${loginUser.mUserid }</strong> 님은, <span id="cart">[일반회원]</span> 회원이십니다.</td>
  </tr>
  <tr>
    <td height="16"></td>
  </tr>
  <tr>
    <td height="39" align="center" valign="top">가용적립금 : <span id="cart"><strong>2,000원</strong></span>       쿠폰 : <span id="cart"><strong>0개</strong></span></td>
  </tr>
</table>
</td>
    <td width="300" height="96"></td>
  </tr>
</table>
<table width="1300" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="33"></td>
  </tr>
  <tr>
    <td height="25" align="left" valign="top">일반상품 (n)</td>
  </tr>
</table>
</td></tr></table>

<div id="reserveCart_title">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="300"></td>
    <td width="28" height="46"><input type="checkbox"></td>
    <td colspan="10" width="1272" height="46"><img src="${contextPath}/images/etc03_01reserveCart_title.gif" width="1272" height="46"></td>
    <td align="center" valign="top" width="300"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    
<script type="text/javascript">
function Type_go(){
	/* document.getElementById("command").value = finish;  //id=command에 a값 넣어줌.
	alert("command값 ="+finish); */
	var chk1=document.frm.check.checked;

	if(!chk1){
        alert('결제정보를 확인해주세요!');
        return false;
    } 
	frm.submit();
}
</script>


	<form name="frm" method="post" action="ReservationServlet">
	<input type="hidden" id="command" name="command" value="finish">
	<input type="hidden" name="mUserid" value="${loginUser.mUserid }">
	<input type="hidden" name="mctype" value="1">
	<input type="hidden" name="mctype" value="2">
	<div id="reserveCart">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td align="center" valign="top" width="300"></td>
	    <td align="center" valign="top" width="1300" height="111" background="${contextPath}/images/etc03_mypage_02cart_box02.gif"><table width="1300" border="0" cellspacing="0" cellpadding="0">
	  <c:forEach items="${mproList}" var="mproSet">
	  <input type="hidden" name="mNo" value="${mproSet.mproduct.mNo }">
	  <input type="hidden" name="adult" value="${mproSet.adult }">
	  <input type="hidden" name="mDate1" value="${mproSet.mDate1 }">
	  <input type="hidden" name="mDate2" value="${mproSet.mDate2 }">
	  <input type="hidden" name="mPicture" value="${mproSet.mproduct.mPicture }">
	  <input type="hidden" name="mPrice" value="${mproSet.mproduct.mPrice }">
	  <input type="hidden" name="mTitle" value="${mproSet.mproduct.mTitle }">
	  <tr>
	    <td width="28" rowspan="3"><input type="checkbox"></td>
	    <td width="23" rowspan="3" height="111"></td>
	    <td width="108" rowspan="3" align="left" valign="middle"><img src="${contextPath}/images/${mproSet.mproduct.mPicture }" width="85" height="80"></td>
	   <td width="80" height="32"></td>
	    <td width="135" height="32" align="left" valign="middle"></td>
	    <td width="71" height="32" align="left" valign="bottom"><strong>날짜</strong></td>
	    <td width="700" height="32" colspan="3" align="left" valign="bottom">${mproSet.mDate1 }</td>
	    <td width="95" height="111" rowspan="3"><img src="${contextPath}/images/savebutton.gif">${mproSet.mMoney } won</td>
	    <td width="92" height="111" align="left" rowspan="3"><strong>${mproSet.mproduct.mPrice } won</strong></td>
	  </tr>
	  <tr>
	  <td width="80" height="48"><strong>${mproSet.mproduct.mTitle }</strong></td>
	  <td height="48" width="135"><img src="${contextPath}/images/bestbutton.gif" width="39" height="15"></td>
	  <td height="48" width="71"><strong>인원</strong></td>
	  <td width="700" height="48">${mproSet.adult }</td>
	  </tr>
	   <tr>
	  <td width="80" height="31"></td>
	  <td height="31" width="135"></td>
	  <td width="71" height="31" valign="top"><strong>시간</strong></td>
	  <td width="700" height="31" valign="top">${mproSet.mDate2 }</td>
	  </tr>
	  </c:forEach>
	      </table></td>
	    <td align="center" valign="top" width="300"></td>
	  </tr>
	</table>
	</td>
	  </tr>
	</table>
	</div>

	<div id="contant2">
	
	    <table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td align="center"><table width="1300" height="56" border="0" cellspacing="0" cellpadding="0" background="${contextPath}/images/etc03_mypage_02cart_box03.gif">
	  <tr>
	    <td width="1100" height="56"></td>
	    <td width="200" height="56">합계 : <strong id="price">${totalAmount} won</strong></td>
	  </tr>
	</table>
	<table width="1300" height="84" border="0" cellspacing="0" cellpadding="0" background="${contextPath}/images/etc03_mypage_02cart_box04.gif">
	  <tr>
	    <td width="51" height="34"></td>
	    <td colspan="3">상품 변경은 장바구니에서 가능합니다. </td>
	    </tr>
	  <tr>
	    <td colspan="2" width="1196"></td>
	    <td width="104">
	    <!-- 이전페이지 버튼 -->
	    <a href='javascript:history.go(-1)'><img src="${contextPath}/images/etc03_mypage_02cart_button06.gif" 
	    onmouseover='this.src="${contextPath}/images/etc03_mypage_02cart_button06_r.gif"' 
	    onmouseout='this.src="${contextPath}/images/etc03_mypage_02cart_button06.gif"'></a></td>
	  </tr>
	</table>
	
	
	<table width="1300" height="185" border="0" cellspacing="0" cellpadding="0" background="${contextPath}/images/etc03_mypage_02cart_box06.gif">
	  <tr>
	    <td colspan="3" width="1200" height="36" valign="top" align="left">예약정보
	    	<input type="checkbox" name="orderCheck" onclick="checkSubmit()"> 주문자 정보와 동일함
	    </td>
	    <td width="100" height="36" valign="top"><strong id="ps">*</strong>필수입력사항</td>
	  </tr>
	  <tr>
	    <td width="10" height="25" align="left"></td>
	    <td width="147" height="25" align="left">예약하시는분 <strong id="ps">*</strong></td>
	    <td colspan="2" width="1143"><input type="text" name="rName" size="20"></td>
	    </tr>
	  <tr>
	    <td colspan="4" height="20" width="1300"></td>
	    </tr>
	  <tr>
	    <td width="10" height="26" align="left"></td>
	    <td width="147" height="26" align="left">휴대전화 <strong id="ps">*</strong></td>
	    <td colspan="2" width="1143">
	    	<!-- <select name="p1">
	    	<option>선택</option>
	        <option>010</option>
	        <option>011</option>
	        <option>016</option>
	         <option>017</option></select> - <input type="text" name="p2" size="5"> - 
	                    <input type="text" name="p3" size="5"> --><input type="text" name="rPhone" size="20"> </td>
	    </tr>
	  <tr>
	    <td colspan="4" height="19" width="1300"></td>
	    </tr>
	  <tr>
	    <td width="10" height="25" align="left"></td>
	    <td width="147" height="25" align="left">이메일 <strong id="ps">*</strong></td>
	    <td colspan="2" width="1143"><!-- <input type="text" size="20"> @ <input type="text" size="20"> <select>
	    				<option>선택</option>
	                    <option>naver.com</option>
	                    <option>daum.net</option>
	                    <option>gmail.co.kr</option>
	                    <option>nsu.ac.kr</option></select> -->
	                    <input type="text" name="rEmail" size="50"></td>
	    </tr>
	  <tr>
	    <td colspan="2" width="157" height="34"></td>
	    <td colspan="2" width="1143" height="34">- 이메일 주소란에는 반드시 수신가능한 이메일 주소를 입력해 주세요</td>
	    </tr>
	</table>
	
	
	<table width="1300" height="231" border="0" cellpadding="0" cellspacing="0" background="${contextPath}/images/etc03_mypage_02cart_box07.gif">
	  <tr>
	    <td colspan="4" height="26"></td>
	    </tr>
	  <tr>
	    <td height="29" width="10"></td>
	    <td width="148" height="29" align="left" valign="bottom">총 할인금액</td>
	    <td width="1142" colspan="2" valign="bottom"><strong>0 won</strong></td>
	    </tr>
	  <tr>
	    <td colspan="4" height="24"></td>
	    </tr>
	  <tr>
	    <td height="41" width="10"></td>
	    <td width="148" height="41" align="left" valign="top">적립금</td>
	    <td width="185" height="41" valign="top"><input type="text"></td>
	    <td width="957" height="41" valign="top">원 (총 사용가능 적립금 : <strong id="cart">2,000원</strong>)</td>
	  </tr>
	  <tr>
	    <td colspan="2" width="158" height="68"></td>
	    <td width="1142" height="68" colspan="2" valign="top">- 적립금은 최소 1,000 이상일 때 결제가 가능합니다.<p>
	- 최대 사용금액은 제한이 없습니다.<p>
	- 적립금으로만 예약할 경우, 예약금액이 0으로 보여지는 것은 정상이며 [예약하기] 버튼을 누르면 예약이 완료됩니다.</td>
	    </tr>
	   <tr>
	   	<td height="43" width="10"></td>
	    <td width="148" height="43" align="left" valign="middle">쿠폰</td>
	    <td height="43" width="1142" colspan="2"><select><option>선택</option>
	                    <option>생일축하쿠폰 5%할인</option>
	              <option>회원가입쿠폰 1000원할인</option></select></td>
	   </tr>
	</table>
	<table width="1300" height="156" border="0" cellspacing="0" cellpadding="0" background="${contextPath}/images/etc03_mypage_02cart_box08.gif">
	  <tr>
	    <td colspan="3" height="30" width="1300"></td>
	    </tr>
	  <tr>
	    <td width="433" height="43" align="center" valign="middle" id="total_text">주문금액</td>
	    <td width="433" height="43" align="center" valign="middle" id="total_text">할인금액</td>
	    <td width="434" height="43" align="center" valign="middle" id="total_text">총 결제금액</td>
	  </tr>
	  <tr>
	    <!-- 적립금 사용시 계산 -->
	    <td width="433" height="54" align="center" valign="middle"><strong id="total">${totalAmount} won</strong></td>
	    <td width="433" height="54" align="center" valign="middle"><strong id="total">- 0 won</strong></td>
	    <td width="434" height="54" align="center" valign="middle"><strong id="total">= ${totalAmount} won</strong></td>
	  </tr>
	  <tr>
	    <td colspan="3" height="29" width="1300"></td>
	    </tr>
	</table>
	<table width="1300" height="303" border="0" cellspacing="0" cellpadding="0" background="${contextPath}/images/etc03_mypage_02cart_box09.gif">
	  <tr>
	    <td colspan="7" align="left" valign="top">결제수단</td>
	    </tr>
	  <tr>
	    <td width="32" height="37"></td>
	    <td width="1068" height="37" colspan="3" align="left" valign="middle">
	     <label><input type="radio" name="mcbuy" value="1"/>무통장 입금</label>
	     <label><input type="radio" name="mcbuy" value="2"/>카드 결제</label>
	     <label><input type="radio" name="mcbuy" value="3"/>휴대폰 결제</label></td>
	    <td colspan="3" width="200" height="37" align="center" valign="middle"><strong id="total_text">최종 결제금액</strong></td>
	    </tr>
	  <tr>
	    <td colspan="4" height="23" width="1100"></td>
	    <td colspan="3" width="200" height="23" valign="middle" align="center"><strong id="total2">${totalAmount } won</strong></td>
	    </tr>
	  <tr>
	    <td width="32" height="46"></td>
	    <td width="137" height="46" >입금자명</td>
	    <td width="1131" height="46" colspan="5" align="left"><input type="text"></td>
	    </tr>
	  <tr>
	    <td width="32" height="48"></td>
	    <td width="137" height="48">입금은행</td>
	    <td width="884"><input type="text"></td>
	    <td width="247" height="48" colspan="4" align="left" valign="top">
	    <input type="checkbox" name="check" > 결제정보를 확인하였으며, 구매진행에 동의합니다.</td>
	    </tr>
	  <tr>
	    <td colspan="2" width="169" height="70"></td>
	    <td width="884" height="70" valign="top">최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다. <p>
	    소액 결제의 경우 PG사 정책 에 따라 결제 금액 제한이 있을 수 있습니다.</td>
	    <td width="247" height="70" colspan="4" align="left" valign="middle"><img src="${contextPath}/images/etc03_mypage_02cart_button07.gif" 
	    onmouseover='this.src="${contextPath}/images/etc03_mypage_02cart_button07_r.gif"' 
	    onmouseout='this.src="${contextPath}/images/etc03_mypage_02cart_button07.gif"' 
	    onclick="Type_go()" style="cursor:pointer;"></td>
	    </tr>
	  <tr>
	    <td colspan="3" width="1053" height="34"></td>
	    <td width="160" height="34" colspan="2" align="center" valign="top">총 적립예정금액</td>
	    <td width="87" height="34" colspan="2" align="left" valign="top"><strong>500 won</strong></td>
	    </tr>
	</table>
	</td>
	</tr></table>
	</td>
	  </tr>
	</table>
	</div>
	</form>





  <div id="block5"></div>
    
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
        <td width="62" height="63" align="left" valign="top"><a href=""><img src="${contextPath}/images/footer_logo.png" width="62" height="63"></a></td>
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
	  <div id="copySitemap">
</div>
</div>
</div>
</body>
</html>


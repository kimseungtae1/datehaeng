<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>마이페이지_장바구니</title>
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
	#keyimg { background-image:url(${contextPath}/images/etc03_02cart_keyimage.gif); background-repeat:no-repeat; background-size:100% 100%;}
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
	#total {color:#404040; font-size:28px;}
	
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
 	 <td width="59" height="96" align="center" valign="top"><img src="${contextPath}/images/etc03_03memberInfo_reserveBtn2.png" onmouseover='this.src="${contextPath}/images/etc03_03memberInfo_reserveBtn2_r.png"' onmouseout='this.src="${contextPath}/images/etc03_03memberInfo_reserveBtn2.png"' width="59" height="96" onclick="location.href='${contextPath}/ReservationServlet?command=reserve_list'" style="cursor:pointer;"></td>
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
    <td align="left" valign="top"><img src="${contextPath}/images/etc03_mypage_02cart_title.gif" width="422" height="29"></td>
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

<script type="text/javascript">
function Type_go(a){
	document.getElementById("command").value = a;  //id=command에 a값 넣어줌.
	frm.submit();
}
</script>
<script type="text/javascript">
//------------------------------------체크박스 관련 스크립트
// 선택상품삭제
function go_delete(){
	
  	if( $(":checkbox[name='chkList']:checked").length==0 ){
   		 alert("삭제할 항목을 하나이상 체크해주세요.");
   	 return;
  	}
	// 체크된 체크박스 값 가져오기.
	var chk = document.getElementsByName("chkList"); //체크박스 객체 담기
	var len = chk.length; // 체크박스 전체 개수
	var checkRow=''; //체크된 체크박스 value를 담기위한 변수
	var checkCnt=0; //체크된 체크박스의 개수
	var checkLast=0; //체크된 체크박스 중 마지막 체크박스의 인덱스를 담기 위한 변수
	var rowid=''; //체크된 체크박스의 모든 value 값을 담음
	var cnt=0;
	
	//체크된 박스 개수 확인.
	for(var i=0;i<len;i++) {
		if(chk[i].checked == true){
			checkCnt++; // 체크된 체크박스의 개수
			checkLast = i; // 체크된 체크박스의 인덱스
		}
	}
	for(var i=0; i<len; i++){
		if(chk[i].checked == true){ //체크가 되어있는 값 구분
			checkRow = chk[i].value;
		
		if(checkCnt == 1){ 
			rowid += checkRow;
		}else{
			if(i == checkLast){ // 체크된 체크박스중 마지막 체크박스
				rowid += checkRow; //',' X
			}else{ // 마지막 체크박스가 아닐때
				rowid += checkRow+","; // ',' O
			}
		}
			cnt++;
			checkRow='';
		}
	}	
		document.getElementById("deletepro").value = rowid;
		deleteform.submit();
}
//---------------------------------------------------------
//전체선택&해제
var check = false;
function CheckAll(){
	var chk = document.getElementsByName("chkList");
	if(check == false){
		check = true;
		for(var i=0; i<chk.length;i++){                                                                    
		chk[i].checked = true;     //모두 체크
	}
	}else{
		check = false;
	for(var i=0; i<chk.length;i++){                                                                    
		chk[i].checked = false;     //모두 해제
			}
		}
	}

</script>

<div id="reserveCart_title">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="300"></td>
    <td width="28" height="46">
		<!-- 전체 체크박스 -->
    	<input type="checkbox" name="checkall" onclick="javascript:CheckAll()" ></td>
    <td colspan="10" width="1272" height="46"><img src="${contextPath}/images/etc03_01reserveCart_title.gif" width="1272" height="46"></td>
    <td align="center" valign="top" width="300"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>

<!--  상품 목록 시작.식당  -->
	<div id="reserveCart">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td align="center" valign="top" width="300"></td>
	    <td align="center" valign="top" width="1300" height="111" background="${contextPath}/images/etc03_mypage_02cart_box02.gif">
	  <form name="frm" action="ReservationServlet" method="post">
	  <c:forEach items="${mproList}" var="mproSet" varStatus="stat">
	  <input type="hidden" id="command" name="command" value="">
	  <input type="hidden" name="mctype" value="1">
	  <input type="hidden" name="mctype" value="2">
	  <input type="hidden" name="index" value="${stat.index }">
	    <table width="1300" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td width="28" rowspan="3">
	    	<input type="checkbox" name="chkList" value="${stat.index }" ></td>
	    <td width="23" rowspan="3" height="111"></td>
	    <td width="108" rowspan="3" align="left" valign="middle"><img src="${contextPath}/images/${mproSet.mproduct.mPicture }" width="85" height="80"></td>
	   <td width="80" height="32"></td>
	    <td width="135" height="32" align="left" valign="middle"></td>
	    <td width="71" height="32" align="left" valign="bottom"><strong>날짜</strong></td>
	    <td width="700" height="32" colspan="3" align="left" valign="bottom">${mproSet.mDate1 }</td>
	    <td width="95" height="111" rowspan="3"><img src="${contextPath}/images/savebutton.gif">${mproSet.mMoney }won</td>
	    <td width="92" height="111" align="left" rowspan="3"><strong>${mproSet.mproduct.mPrice } won</strong></td>
	  </tr>
	  <tr>
	  <td width="80" height="48"><strong>${mproSet.mproduct.mTitle }</strong></td>
	  <td height="48" width="135"><img src="${contextPath}/images/bestbutton.gif" width="39" height="15"></td>
	  <td height="48" width="71"><strong>인원</strong></td>
	  <td width="700" height="48">${mproSet.adult }명</td>
	  </tr>
	   <tr>
	  <td width="80" height="31"></td>
	  <td height="31" width="135"></td>
	  <td width="71" height="31" valign="top"><strong>시간</strong></td>
	  <td width="700" height="31" valign="top">${mproSet.mDate2 }</td>
	  </tr>
	      </table></c:forEach></form></td>
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
	    <td width="200" height="56">합계 : <strong id="price">${totalAmount } won</strong></td>
	  </tr>
	</table><table width="1300" height="84" border="0" cellspacing="0" cellpadding="0" background="${contextPath}/images/etc03_mypage_02cart_box04.gif">
	  <tr>
	    <td width="51" height="34"></td>
	    <td colspan="3">할인 적용 금액은 주문서 작성의 결제 예정금액에서 확인 가능합니다. </td>
	    </tr>
	  <tr>
	    <td width="77" colspan="2" align="center" valign="middle">선택상품</td>
	    <!-- 선택상품 삭제 -->
	    <form name="deleteform" action="ReservationServlet">
			<input type="hidden" id="command" name="command" value="cartdelete2">
			<input type="hidden" id="deletepro" name="index" value="">
		</form>
	    <td width="1119"><img src="${contextPath}/images/etc03_mypage_02cart_button02.gif" 
	    	onmouseover='this.src="${contextPath}/images/etc03_mypage_02cart_button02_r.gif"' 
	    	onmouseout='this.src="${contextPath}/images/etc03_mypage_02cart_button02.gif"' 
	    	onclick="go_delete();"  style="cursor:pointer;"></td>
	    <td width="104"><!-- 장바구니 비우기 버튼 -->
	    	<img src="${contextPath}/images/etc03_mypage_02cart_button01.gif" 
	    	onmouseover='this.src="${contextPath}/images/etc03_mypage_02cart_button01_r.gif"' 
	    	onmouseout='this.src="${contextPath}/images/etc03_mypage_02cart_button01.gif"' 
	    	onclick="Type_go('cartdelete')" style="cursor:pointer;"></td>
	  </tr>
	</table>
	<table width="1300" height="137" border="0" cellspacing="0" cellpadding="0" background="${contextPath}/images/etc03_mypage_02cart_box05.gif">
	  <tr>
	    <td height="37" colspan="3" align="center" valign="middle" id="total_text">결제예정금액</td>
	    </tr>
	  <tr>
	    <td height="60" colspan="3" align="center" valign="middle"> <strong id="total">= ${totalAmount } won</strong></td>
	    </tr>
	  <tr>
	    <!-- 선택 상품 주문 -->
	    <td width="114" height="40" align="left" valign="bottom">
	    	<img src="${contextPath}/images/etc03_mypage_02cart_button03.gif" 
	    	onmouseover='this.src="${contextPath}/images/etc03_mypage_02cart_button03_r.gif"' 
	    	onmouseout='this.src="${contextPath}/images/etc03_mypage_02cart_button03.gif"' 
	    	onclick="" style="cursor:pointer;">
	    </td>
	    <!-- 쇼핑계속하기 -->
	    <td width="1082" height="40" align="left" valign="bottom">
	    	<img src="${contextPath}/images/etc03_mypage_02cart_button04.gif" 
	    	onmouseover='this.src="${contextPath}/images/etc03_mypage_02cart_button04_r.gif"' 
	    	onmouseout='this.src="${contextPath}/images/etc03_mypage_02cart_button04.gif"' 
	    	onclick="Type_go('mproduct_list')" style="cursor:pointer;">
	    </td>
	    <!-- 전체상품주문 버튼 -->
	    <td width="104" height="40" valign="bottom">
	   		<img src="${contextPath}/images/etc03_mypage_02cart_button05.gif"
	   		 onmouseover='this.src="${contextPath}/images/etc03_mypage_02cart_button05_r.gif"' 
	   		 onmouseout='this.src="${contextPath}/images/etc03_mypage_02cart_button05.gif"' 
	   		 onclick="Type_go('allpayment')" style="cursor:pointer;">
	    </td>
	  </tr>
	</table>
	</td>
	</tr></table>
	</td>
	  </tr>
	</table>
	</div>
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


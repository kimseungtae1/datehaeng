<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>마이페이지_예약내역</title>
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
	#keyimg { background-image:url(${contextPath}/images/etc03_01reserveDetail_keyimage.gif); background-repeat:no-repeat; background-size:100% 100%;}
	body {font-family: 'Nanum Gothic', sans-serif;}
	* { margin:0; padding:0; font-family: 'Nanum Gothic', sans-serif; font-size:15px;}
	a {color:#fff; text-decoration:none;}
	a:hover {color:#ff931e; font-size:15px; font-weight:bold; text-decoration:none;}
	li {list-style:none;}
	#wrap {margin:0 auto;font-family: 'Nanum Gothic', sans-serif;} /*항상가운데로 오게*/
	#header {border:0px height:61px; text-align:center;} /* line-height 가로로 가운데 정렬*/
	#block1 {height:20px;}
	#block2 {height:90px;}
	#block3 {height:91px;}
	#block4 {height:57px;}
	#block5 {height:32px;}
	#block6 {height:9px;}
	#block7 {height:44px;}
	#block8 {height:7px;}
	#block9 {height:14px;}
	#block9 {height:27px;}
	#copySitemap { background-image:url(${contextPath}/images/copyright250.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer { background-image:url(${contextPath}/images/footer.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer{ height:174px; text-align:center; border:0; margin:0; padding:0; }
	/* box-sizing은 border이 가로 세로 사이즈에 영향을 주기때문에 / width가 20%인 이유는 가로를 100px로 잡았을때 5개 메뉴에 퍼센트로 할당*/
	#copySitemap {height:250px; line-height:600px; text-align:center;}
	#list ul {overflow:hidden} /* float를 사용 시 상위 태그에 무조건 써야한다*/
	#list ul li {float:left; text-align:center; width:25px; box-sizing:border-box;}
	.select {color:#ff931e; font-family: 'Nanum Gothic', sans-serif;}
	.basic {color:#343434; font-size:12px;font-family: 'Nanum Gothic', sans-serif;}
	.reserveInfo {color:#343434; font-size:13px;font-family: 'Nanum Gothic', sans-serif;}
	.stress {color:#de7131; font-size:20px; font-family: 'Nanum Gothic', sans-serif;}
	
	
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
    <td width="62" height="57" rowspan="3" align="center" valign="middle"><img src="${contextPath}/images/subpage_logo.png" onclick="location.href='${contextPath}/index.jsp'" style="cursor:pointer;"></td>
    <td width="1047" height="105" rowspan="3" align="center" valign="top"><img src="${contextPath}/images/etc03_title.gif"></td>
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
   <td align="center" valign="top" width="903"></td>
   <td align="center" valign="top" width="94"><img src="${contextPath}/images/etc03_01reserve_title.png" width="94" height="25"></td>
   <td align="center" valign="top" width="903"></td>
  </tr>
</table>
</td>
  </tr>
</table>
  </div>
  <div id="block1"></div>
    <div id="keyimg">
   <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="775" height="360" rowspan="3" align="center" valign="top"></td>
    <td height="208" colspan="5" align="center" valign="top"></td>
    <td width="800" height="360" rowspan="3" align="center" valign="top"></td>
  </tr>
  <tr>
    <td width="89" height="96" align="center" valign="top">
    <img src="${contextPath}/images/etc03_01reserve_modifyBtn2.png" 
    onmouseover='this.src="${contextPath}/images/etc03_01reserve_modifyBtn2_r.png"' 
    onmouseout='this.src="${contextPath}/images/etc03_01reserve_modifyBtn2.png"' width="89" height="96" 
    onclick="location.href='jsp/etc03_mypage_03info.jsp'" style="cursor:pointer;"></td>
    <td width="45" height="96" align="center" valign="top"></td>
    <td width="59" height="96" align="center" valign="top">
    <img src="${contextPath}/images/etc03_01reserve_reserveBtn2_r.png" width="59" height="96"></td>
    <td width="49" height="96" align="center" valign="top"></td>
    <td width="73" height="96" align="right" valign="top">
    <img src="${contextPath}/images/etc03_01reserve_carBtn2.png" 
    onmouseover='this.src="${contextPath}/images/etc03_01reserve_carBtn2_r.png"' 
    onmouseout='this.src="${contextPath}/images/etc03_01reserve_carBtn2.png"' width="63" height="96" 
    onclick="location.href='${contextPath}/CartViewServlet?command=cart_list'" style="cursor:pointer;"></td>
    </tr>
  <tr>
    <td height="56" colspan="5" align="center" valign="top"></td>
    </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="block4"></div>
    <div id="reserveDetail_title">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
   <td align="center" valign="top" width="298"></td>
   <td align="center" valign="top" width="116" height="30"><img src="${contextPath}/images/etc03_01reserve_detail_title.gif"></td>
   <td align="center" valign="top" width="1486"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="block5"></div>
    <div id="reserveDetailt_subTitle">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="317"></td>
    <td align="center" valign="top" width="113"><img src="${contextPath}/images/etc03_01reserve_detail_subtitle01.gif" width="113" height="31"></td>
    <td align="center" valign="top" width="1470"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="reserveDetail_info">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="300"></td>
    <td align="center" valign="top" width="1300" height="113" background="${contextPath}/images/etc03_01reserve_detail_sublist01.gif"><table width="1300" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="54" colspan="9" align="center" valign="middle"></td>
        </tr>
      <tr>
        <td width="140" height="59" align="center" valign="middle" class="reserveInfo">
			<fmt:formatDate value="${reserve.rDate }" pattern="yyyy"/>
            <fmt:formatDate value="${reserve.rDate }" pattern="MM"/>
            <fmt:formatDate value="${reserve.rDate }" pattern="dd"/>
            <!-- 상품번호 인원수 예약번호 -->
			${reserve.mcNo }${reserve.adult }${reserve.rNo }
		</td>
        <td width="196" height="59" align="center" valign="middle" class="reserveInfo"><fmt:formatDate value="${reserve.rDate }" dateStyle="long"/></td>
        <td width="121" height="59" align="center" valign="middle" class="reserveInfo">${reserve.rName }</td>
        <td width="176" height="59" align="center" valign="middle" class="reserveInfo">${reserve.rPhone }</td>
        <td width="234" height="59" align="center" valign="middle" class="reserveInfo">예약금 확인중 
          <input type="button" value="예약취소" onclick="location.href='${contextPath}/ReservationServlet?command=cancel&rNo=${reserve.rNo}'"></td>
        <td width="157" height="59" align="center" valign="middle" class="reserveInfo"><strong>${reserve.mcPrice }won</strong></td>
        <td width="113" height="59" align="center" valign="middle" class="reserveInfo"><strong>${reserve.mcPrice-1000 }won</strong></td>
        <td width="132" height="59" align="center" valign="middle" class="reserveInfo">
        <strong>
			<c:if test="${reserve.mcbuy==1 }">
				무통장입금
			</c:if>
			<c:if test="${reserve.mcbuy==2 }">
				카드결제
			</c:if>
			<c:if test="${reserve.mcbuy==3 }">
				핸드폰결제
			</c:if>
			
		</strong></td>
        <td width="31" height="59" align="center" valign="middle"></td>
      </tr>
    </table></td>
    <td align="center" valign="top" width="300"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
  <div id="block6"></div>
 	 <div id="text">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="334"></td>
    <td align="left" valign="top" width="970"></td>
    <td width="600" align="left" valign="meidle" class="basic">- 카드결제 시 명세서에는 데이트행으로 표기됩니다.</td>
  </tr>
</table>
</td>
  </tr>
</table>
 	 </div>
    <div id="block7"></div>
    	<div id="reserve_subTitle">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="317"></td>
    <td align="left" valign="top" width="94"><img src="${contextPath}/images/etc03_01reserve_detail_subtitle02.gif" width="94" height="22"></td>
    <td align="center" valign="top" width="1489"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="block8"></div>
    <div id="reserveList_title">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="300"></td>
    <td align="center" valign="top" width="1300"><img src="${contextPath}/images/etc03_01reserve_detail_sublist02.gif"></td>
    <td align="center" valign="top" width="300"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="reserveDitail_List">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="300"></td>
    <td align="center" valign="top" width="1300" height="112" background="${contextPath}/images/etc03_01reserve_detail_sublist02_add.gif"><table width="1300" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="142" height="112" rowspan="3" align="right" valign="middle"><p><strong><span class="reserveInfo"><img src="${contextPath}/images/${reserve.mcPicture }" width="85" height="80"></span></strong></td>
        <td width="9" height="111" rowspan="3" align="center" valign="middle"></td>
        <td width="216" height="37" align="left" valign="bottom"></td>
        <td width="45" height="37" align="left" valign="bottom"><strong><span class="reserveInfo">날짜 :</span></strong></td>
        <td width="390" height="37" align="left" valign="bottom"><strong><span class="reserveInfo">${reserve.rDate1 }</span></strong></td>
        <td width="130" height="111" rowspan="3" align="center" valign="middle"><strong><span class="reserveInfo">${reserve.mcPrice }won</span></strong></td>
        <td width="97" height="111" rowspan="3" align="center" valign="middle">일반예약</td>
        <td width="176" height="111" rowspan="3" align="center" valign="middle"><span class="reserveInfo">예약금 확인중</span></td>
        <td width="95" height="111" rowspan="3" align="center" valign="middle"><strong><span class="reserveInfo">-</span></strong></td>
      </tr>
      <tr>
        <td width="216" height="37" align="left" valign="middle"><strong><span class="reserveInfo">${reserve.mcTitle }</span></strong></td>
        <td width="45" height="37" align="left" valign="middle"><strong><span class="reserveInfo">인원 :</span></strong></td>
        <td width="390" height="37" align="left" valign="middle"><strong><span class="reserveInfo">${reserve.adult }명</span></strong></td>
        </tr>
      <tr>
        <td width="216" height="37" align="left" valign="top"></td>
        <td width="45" height="37" align="left" valign="top"><strong><span class="reserveInfo">시간 :</span></strong></td>
        <td width="390" height="37" align="left" valign="top"><strong><span class="reserveInfo">${reserve.rDate2 }</span></strong></td>
      </tr>
      </table></td>
    <td align="center" valign="top" width="300"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="reserveResult">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="300"></td>
    <td align="center" valign="top" width="1300" height="43" background="${contextPath}/images/etc03_01reserve_detail_sublist02_result.gif"><table width="1300" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="830" height="43" align="center" valign="middle"></td>
        <td width="470" height="43" align="left" valign="middle"><span class="basic">상품예약금액 ${reserve.mcPrice } - 적립금 1,000 + 쿠폰적용 0 = 합계 : </span><span class="stress"><strong>${reserve.mcPrice-1000 }won</strong></span></td>
      </tr>
    </table></td>
    <td align="center" valign="top" width="300"></td>
  </tr>
</table>
</td>
  </tr>
</table>

    </div>
    <div id="block9"></div>
    <div id="reserveListBtn">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="1430"></td>
    <td align="center" valign="top" width="154"><img src="${contextPath}/images/etc03_01reserve_detail_reservelistBtn.gif" 
    onmouseover='this.src="${contextPath}/images/etc03_01reserve_detail_reservelistBtn_r.gif"' 
    onmouseout='this.src="${contextPath}/images/etc03_01reserve_detail_reservelistBtn.gif"' width="154" height="34"
    onclick="location.href='${contextPath}/ReservationServlet?command=reserve_list'" style="cursor:pointer;"></td>
    <td align="center" valign="top" width="316"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="block10"></div>
     <div id="list">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="24" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="300"></td>
    <td align="center" valign="top" width="590"></td>
    <td align="center" valign="top" width="125">
    <ul>
            <li class="select"><a href="#"><strong>1</strong></a></li>
        	<li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li></ul></td>
    <td align="center" valign="top" width="590"></td>
    <td align="center" valign="top" width="300"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
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
        <td width="62" height="63" align="left" valign="top"><a href="#"><img src="${contextPath }/images/footer_logo.png" width="62" height="63"></a></td>
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
</body>
</html>

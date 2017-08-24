<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>이벤트</title>
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
	#keyimg { background-image:url(${contextPath}/images/sub05_02event_keyimage.gif); background-repeat:no-repeat; background-size:100% 100%;}
	body {font-family: 'Nanum Gothic', sans-serif;}
	* { margin:0; padding:0; font-family: 'Nanum Gothic', sans-serif; font-size:15px;}
	a {color:#fff; text-decoration:none;}
	a:hover {color:#ff931e; font-size:15px; font-weight:bold; text-decoration:none;}
	li {list-style:none;}
	#wrap {margin:0 auto;font-family: 'Nanum Gothic', sans-serif;} /*항상가운데로 오게*/
	#header {border:0px height:61px; text-align:center;} /* line-height 가로로 가운데 정렬*/
	#block1 {height:20px;}
	#block2 {height:20px;}
	#block3 {height:62px;}
	#block4 {height:22px;}
	#block5 {height:31px;}
	#block6 {height:58px;}
	#block7 {height:73px;}
	#copySitemap { background-image:url(${contextPath}/images/copyright250.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer { background-image:url(${contextPath}/images/footer.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer{ height:174px; text-align:center; border:0; margin:0; padding:0; }
	/* box-sizing은 border이 가로 세로 사이즈에 영향을 주기때문에 / width가 20%인 이유는 가로를 100px로 잡았을때 5개 메뉴에 퍼센트로 할당*/
	#keyimg {height:360px; line-height:600px; text-align:center;}
	#copySitemap {height:250px; line-height:600px; text-align:center;}
	#list ul {overflow:hidden} /* float를 사용 시 상위 태그에 무조건 써야한다*/
	#list ul li {float:left; text-align:center; width:25px; box-sizing:border-box;}
	.select {color:#ff931e;}
	.basic {color:#343434; font-size:12px;font-family: 'Nanum Gothic', sans-serif;}
	
	
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
    <li><a href="sub01_dateHaeng.jsp">데이트행</a></li>
    <li><a href="${contextPath }/mProductServlet?command=mproduct_list&mctype=1">식당보기</a></li>
    <li><a href="${contextPath }/mProductServlet?command=mproduct_list&mctype=2">카페보기</a></li>
    <li><a href="${contextPath }/fProductServlet?command=fproduct_list">무료관람</a></li>
    <li><a href="${contextPath }/gProductServlet?command=gproduct_list">유료관람</a></li>
    <li><a href="sub04_humancity.jsp">휴먼시티</a></li>
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
    <td width="1047" height="105" rowspan="3" align="center" valign="top"><img src="${contextPath}/images/sub05_title.gif"></td>
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
   <td align="center" valign="top" width="520"></td>
   <td align="center" valign="top"><img src="${contextPath}/images/sub05_menu_notice.png" width="99" height="25" onmouseover='this.src="${contextPath}/images/sub05_menu_notice_r.png"' onmouseout='this.src="${contextPath}/images/sub05_menu_notice.png"' onclick="location.href='${contextPath }/BoardServlet_notice?command=board_list'" style="cursor:pointer;"></td>
   <td align="center" valign="top" width="285"></td>
   <td align="center" valign="top"><img src="${contextPath}/images/sub05_menu_event_r.png" width="69" height="25"></td>
   <td align="center" valign="top" width="321"></td>
   <td align="center" valign="top"><img src="${contextPath}/images/sub05_menu_qna.png" width="99" height="25" onmouseover='this.src="${contextPath}/images/sub05_menu_qna_r.png"' onmouseout='this.src="${contextPath}/images/sub05_menu_qna.png"' onclick="location.href='${contextPath }/BoardServlet?command=board_list'" style="cursor:pointer;"></td>
   <td align="center" valign="top" width="509"></td>
  </tr>
</table>
</td>
  </tr>
</table>
  </div>
  	<div id="block2"></div>
    <div id="keyimg">
    </div>
    <div id="block3"></div>
    <div id="notice_title">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="${contextPath}/images/sub05_02event_title.gif" width="422" height="29"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="block4"></div>
    <div id="title">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="300"></td>
    <td align="center" valign="top" width="1300" height="35" background="${contextPath}/images/sub05_02event_detailTitle.gif"><table width="1300" height="35" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="right" valign="middle" width="99"><strong class="basic">SUBJECT</strong></td>
    <td align="center" valign="middle" width="106"></td>
    <td width="1095" align="left" valign="middle" class="basic">[장기이벤트] 회원가입시 적립금 1,000점 즉시 지급!</td>
  </tr>
</table>
</td>
    <td align="center" valign="top" width="300"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="block5"></div>
    <div id="eventDetail">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="1764" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="300"></td>
    <td align="center" valign="top" width="1300"><img src="${contextPath}/images/sub05_02event_detail01.gif" width="1300" height="1705"></td>
    <td align="center" valign="top" width="300"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
   <div id="event_bottom">
   <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="100" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="300"></td>
    <td align="center" valign="top" width="1300" height="100" background="${contextPath}/images/sub05_02event_detailbottom.gif"><table width="1300" height="35" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="middle" width="60"><input type="button" value="목록" name="event_list"></td>
    <td align="center" valign="middle" width="1192"></td>
    <td align="left" valign="middle" width="48"><input type="button" value="삭제" name="event_delete"></td>
  </tr>
</table>
</td>
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

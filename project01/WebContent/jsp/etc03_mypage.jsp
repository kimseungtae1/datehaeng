<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>마이페이지</title>
<link href="${contextPath }/css/jquery.fullPage.css" rel="stylesheet" type="text/css">
<script src="${contextPath }/js/jquery-2.1.3.min.js"></script>
<script src="${contextPath }/js/jquery.fullPage.min.js"></script>
<script>
   $(document).ready(function() {
        $('#fullpage').fullpage({
         scrollBar:true,//스크롤바 나타내기
         scrollingSpeed:1500,//스크롤링 속도
         loopBottom: true//마지막 섹션에서 스크롤하면 처음섹션으로 이동
      });
    });
		</script>
<style>
#fullpage {margin:0 auto;}
.page1 {	background:url('${contextPath }/images/mypage_bg.gif') 50% 50% no-repeat; 
			background-size:cover;}
.page2 {	background:url('${contextPath }/images/copy_bg.jpg') 50% 50% no-repeat; 
			background-size:cover;}

.logo{
	width:445;
	height:105;
	left:40px;
	top:15px;
	position:fixed;
	z-index:999;}
.loginText{
	width:200;
	height:19;
	right:45px;
	top:25px;
	position:fixed;
	z-index:999;}
.subMenu{
	width:54;
	height:19;
	right:90px;
	top:110px;
	position:fixed;
	z-index:999;
}
.userId{
	width:375;
	height:48;
	left:880px;
	top:190px;
	position:absolute;
	z-index:999;
}
.addInfo{
	width:232;
	height:107;
	left:890px;
	top:220px;
	position:absolute;
	z-index:999;
}
.reserve{
	width:375;
	height:484;
	left:370px;
	bottom:90px;
	position:absolute;
	z-index:999;
}
.modify{
	width:375;
	height:484;
	left:820px;
	bottom:90px;
	position:absolute;
	z-index:999;
}
.cart{
	width:375;
	height:484;
	left:1270px;
	bottom:90px;
	position:absolute;
	z-index:999;
}
.copySitemap{
	width:1209;
	height:457;
	left:350px;
	top:80px;
	position:absolute;}
#welcomeUser {font-family:"맑은 고딕"; font-size:26px; color:#FFF;}
#addInfo {font-family:"맑은 고딕"; font-size:18px; color:#FFF;}
</style>
</head>

<body>
<div id="fullpage"><!--고유명사-->
<div class="section page1">
	<div class="logo">	<!--상단 로고 div 생성-->
    <img src="${contextPath}/images/sub_logo.png" onclick="location.href='${contextPath}/jsp/index.jsp'" style="cursor:pointer;">
    </div>
       <div class="loginText">	<!--상단 우측 로그인 회원가입 메뉴 div 생성-->
    <table width="200" height="26" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <c:choose>
  	<c:when test="${empty loginUser }">
  		<td width="47" height="12" align="left" valign="top"><img src="${contextPath}/images/subpage_login.png" onmouseover='this.src="${contextPath}/images/subpage_login_r.png"' onmouseout='this.src="${contextPath}/images/subpage_login.png"' onclick="location.href='${contextPath}/login.do'" style="cursor:pointer;"></td>
    	<td width="57" height="12" align="right" valign="top"><img src="${contextPath}/images/subpage_join.png" onmouseover='this.src="${contextPath}/images/subpage_join_r.png"' onmouseout='this.src="${contextPath}/images/subpage_join.png"' onclick="location.href='${contextPath}/join.do'" style="cursor:pointer;"></td>  
  	</c:when>
  	<c:otherwise>
  		<td width="100"><img src="${contextPath}/images/index_logout_r.png" onmouseover='this.src="${contextPath}/images/index_logout_r.png"' onmouseout='this.src="${contextPath}/images/index_logout_r.png"' onclick="location.href='${contextPath}/logout.do'" style="cursor:pointer;"></td>
	    <td width="110"><%-- <img src="${contextPath}/images/index_mypage_r.png" onmouseover='this.src="${contextPath}/images/index_mypage_r.png"' onmouseout='this.src="${contextPath}/images/index_mypage_r.png"' onclick="location.href='etc03_mypage.jsp'" style="cursor:pointer;"> --%></td>
  	</c:otherwise>
  </c:choose>
</table>
    </div>
    <div class="subMenu">
<%-- <img src="${contextPath}/images/sub_addMenu.png" onmouseover='this.src="${contextPath}/images/sub_addMenu_r.png"' onmouseout='this.src="${contextPath}/images/sub_addMenu.png"' onclick="location.href='#'" style="cursor:pointer;"> --%>
    </div>
	<div class="userId" id="welcomeUser">
    ${loginUser.mUserid}님, 환영합니다 !
    </div>
    <div class="addInfo" id="addInfo">
    <table width="232" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="bottom" width="112" height="53"><strong>적립금</strong></td>
    <td align="right" valign="bottom" width="120" height="53">1,000원</td>
  </tr>
  <tr>
    <td align="left" valign="middle" width="112" height="54"><strong>보유쿠폰</strong></td>
    <td align="right" valign="middle" width="120" height="54">2장</td>
  </tr>
</table>
    </div>
    
<script type="text/javascript">
function list(){
	
	frm.submit();
}
</script>
    <%-- <form name="frm" action="CartViewServlet" method="post">
    	<input type="hidden" id="command" name="command" value="">
		<input type="hidden" name="mUserid" value="${loginUser.mUserid}"> --%>
    <div class="reserve">
    <form action="ReservationServlet" method="post" name="frm">
    <a class="btn btn-secondary" href="#" onclick="location.href='${contextPath}/ReservationServlet?command=reserve_list'">
    <img src="${contextPath}/images/mypage_reserveBtn.png" onmouseover='this.src="${contextPath}/images/mypage_reserveBtn_r.png"' 
    onmouseout='this.src="${contextPath}/images/mypage_reserveBtn.png"'></a>
    </form>
    </div>
    <div class="modify">
    <a class="btn btn-secondary" href="#" onclick="location.href='jsp/etc03_mypage_03info.jsp'">
    <img src="${contextPath}/images/mypage_modifyBtn.png" onmouseover='this.src="${contextPath}/images/mypage_modifyBtn_r.png"' onmouseout='this.src="${contextPath}/images/mypage_modifyBtn.png"' onclick="location.href=''" style="cursor:pointer;">
    </a>
    </div>
    <div class="cart">
    <a class="btn btn-secondary" href="#" onclick="location.href='${contextPath}/CartViewServlet?command=cart_list'">
    <img src="${contextPath}/images/mypage_cartBtn.png" onmouseover='this.src="${contextPath}/images/mypage_cartBtn_r.png"' 
    onmouseout='this.src="${contextPath}/images/mypage_cartBtn.png"'></a>
    </div>
    <!-- </form> -->
</div>

<div class="section page2">	<!--두번째 페이지 copyright-->
	  <div class="copySitemap">
    	<img src="${contextPath}/images/index_copyright.png">
  </div>
</div>
</div>
</body>
</html>

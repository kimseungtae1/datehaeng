<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>관리자페이지</title>
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
.page1 {	background:url('${contextPath }/images/managerpage_bg.gif') 50% 50% no-repeat; 
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
	top:90px;
	position:fixed;
	z-index:999;
}
.manager{
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
.product{
	width:375;
	height:484;
	left:370px;
	bottom:90px;
	position:absolute;
	z-index:999;
}
.member{
	width:375;
	height:484;
	left:820px;
	bottom:90px;
	position:absolute;
	z-index:999;
}
.notice{
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
    <img src="${contextPath }/images/sub_logo.png" onclick="location.href='#'" style="cursor:pointer;">
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
	    <td width="110"><img src="${contextPath}/images/index_mypage_r.png" onmouseover='this.src="${contextPath}/images/index_mypage_r.png"' onmouseout='this.src="${contextPath}/images/index_mypage_r.png"' onclick="location.href='etc03_mypage.jsp'" style="cursor:pointer;"></td>
  	</c:otherwise>
  </c:choose>
</table>
    </div>
    <div class="subMenu">
<img src="${contextPath }/images/sub_addMenu.png" onmouseover='this.src="${contextPath }/images/sub_addMenu_r.png"' onmouseout='this.src="${contextPath }/images/sub_addMenu.png"' onclick="location.href='#'" style="cursor:pointer;">
    </div>
	<div class="manager" id="welcomeUser">
    관리자님, 안녕하세요 !
    </div>
    <div class="addInfo" id="addInfo">
    <table width="232" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="bottom" width="112" height="53"><strong>예약건수</strong></td>
    <td align="right" valign="bottom" width="120" height="53">12건</td>
  </tr>
  <tr>
    <td align="left" valign="middle" width="112" height="54"><strong>가입회원</strong></td>
    <td align="right" valign="middle" width="120" height="54">22명</td>
  </tr>
</table>

    </div>
    <div class="product">
    <img src="${contextPath }/images/manager_productBtn.png" onmouseover='this.src="${contextPath }/images/manager_productBtn_r.png"' onmouseout='this.src="${contextPath }/images/manager_productBtn.png"' onclick="location.href='#'" style="cursor:pointer;"></div>
    <div class="member">
    <img src="${contextPath }/images/manager_memberBtn.png" onmouseover='this.src="${contextPath }/images/manager_memberBtn_r.png"' onmouseout='this.src="${contextPath }/images/manager_memberBtn.png"' onclick="location.href='#'" style="cursor:pointer;">
    </div>
    <div class="notice">
    <img src="${contextPath }/images/manager_noticeBtn.png" onmouseover='this.src="${contextPath }/images/manager_noticeBtn_r.png"' onmouseout='this.src="${contextPath }/images/manager_noticeBtn.png"' onclick="location.href='#'" style="cursor:pointer;">
    </div>
</div>
<div class="section page2">	<!--두번째 페이지 copyright-->
	  <div class="copySitemap">
    	<img src="${contextPath }/images/index_copyright.png">
  </div>
</div>
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>로그인행</title>
<link href="${contextPath}/css/jquery.fullPage.css" rel="stylesheet" type="text/css">
<script src="${contextPath}/js/jquery-2.1.3.min.js"></script>
<script src="${contextPath}/js/jquery.fullPage.min.js"></script>
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
.page1 {	background:url('${contextPath}/images/login_bg.jpg') 50% 50% no-repeat; 
			background-size:cover;}
.page2 {	background:url('${contextPath}/images/copy_bg.jpg') 50% 50% no-repeat; 
			background-size:cover;}

.logo{
	width:445;
	height:105;
	left:40px;
	top:15px;
	position:fixed;
	z-index:999;}
.login{
	width:460;
	height:90;
	left:770px;
	bottom:220px;
	position:absolute;
	z-index:999;}
.subMenu{
	width:54;
	height:19;
	right:90px;
	top:90px;
	position:fixed;
	z-index:999;
}
.text{
	width:916;
	height:330;
	left:550px;
	top:250px;
	position:absolute;}
.loginText{
	width:200;
	height:19;
	right:45px;
	top:25px;
	position:fixed;
	z-index:999;}

.searchId{
	width:210;
	height:73;
	left:610px;
	bottom:50px;;
	position:absolute;}
.searchPw{
	width:210;
	height:73;
	left:905px;
	bottom:50px;
	position:absolute;}
.joinUs{
	width:210;
	height:73;
	left:1200px;
	bottom:50px;
	position:absolute;}
.copySitemap{
	width:1209;
	height:457;
	left:400px;
	top:80px;
	position:absolute;}
</style>
</head>

<body>
<form action="${contextPath}/login.do" method="post" name="frm" onsubmit="return ${contextPath}/imagesubmit()">
<div id="fullpage"><!--고유명사-->
<div class="section page1">
	<div class="logo">	<!--상단 로고 div 생성-->
    <img src="${contextPath}/images/sub_logo.png" onclick="location.href='${contextPath}/index.jsp'" style="cursor:pointer;">
    </div>
       <div class="loginText">	<!--상단 우측 로그인 회원가입 메뉴 div 생성-->
    <table width="200" height="26" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="${contextPath}/images/index_login.png" width="53" height="19" onmouseover='this.src="${contextPath}/images/index_login_r.png"' onmouseout='this.src="${contextPath}/images/index_login.png"' onclick="location.href='${contextPath}/join.do'" style="cursor:pointer;"></td>
    <td><img src="${contextPath}/images/index_join.png" width="72" height="20" onmouseover='this.src="${contextPath}/images/index_join_r.png"' onmouseout='this.src="${contextPath}/images/index_join.png"' onclick="location.href='${contextPath}/join.do'" style="cursor:pointer;"></td>
</table>
    </div>
    <div class="subMenu">
<%-- <img src="${contextPath}/images/sub_addMenu.png" onmouseover='this.src="${contextPath}/images/sub_addMenu_r.png"' onmouseout='this.src="${contextPath}/images/sub_addMenu.png"' onclick="location.href='#'" style="cursor:pointer;"> --%>
    </div>
	<div class="text">
    <img src="${contextPath}/images/etc01_login_bg.png">
    </div>
     <div class="login">
    <table width="460" height="90" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="93" height="40" align="right" valign="middle"><img src="${contextPath}/images/etc01_id.png" width="55" height="18"></td>
    <td width="37" height="40"></td>
    <td width="230" height="40" align="left" valign="middle"><input type="text" size="30" name="mUserid" value="${mUserid }"></td>
    <td width="100" height="90" rowspan="3" align="left" valign="middle"><a href="#">
    <input type="image" src="${contextPath}/images/etc01_loginBtn.png" width="100" height="21" onmouseover='this.src="${contextPath}/images/etc01_loginBtn_r.png"' 
    onmouseout='this.src="${contextPath}/images/etc01_loginBtn.png"' style="cursor:pointer;">
  </tr>
  <tr>
    <td width="93" height="10" align="right" valign="middle"></td>
    <td width="37" height="10"></td>
    <td width="341" height="10"></td>
    </tr>
  <tr>
    <td width="93" height="40" align="right" valign="middle"><img src="${contextPath}/images/etc01_pw.png" width="75" height="18"></td>
    <td width="37" height="40"></td>
    <td width="230" height="40" align="left" valign="middle"><input type="password" size="30" name="mPw">&nbsp;&nbsp;${message }</td>
    </tr>
</table>
</div>
    <div class="searchId">
    <img src="${contextPath}/images/etc01_login_searchIdBtn.png" onmouseover='this.src="${contextPath}/images/etc01_login_searchidBtn_r.png"' onmouseout='this.src="${contextPath}/images/etc01_login_searchIdBtn.png"' onclick="location.href='#'" style="cursor:pointer;">
    </div>
    <div class="searchPw">
    <img src="${contextPath}/images/etc01_login_searchPwBtn.png" onmouseover='this.src="${contextPath}/images/etc01_login_searchpwBtn_r.png"' onmouseout='this.src="${contextPath}/images/etc01_login_searchPwBtn.png"' onclick="location.href='#'" style="cursor:pointer;">
    </div>
    <div class="joinUs">
    <img src="${contextPath}/images/etc01_login_joinBtn.png" onmouseover='this.src="${contextPath}/images/etc01_login_joinBtn_r.png"' onmouseout='this.src="${contextPath}/images/etc01_login_joinBtn.png"' onclick="location.href='${contextPath}/join.do'" style="cursor:pointer;">
    </div>
</div>
<div class="section page2">	<!--두번째 페이지 copyright-->
	  <div class="copySitemap">
    	<img src="${contextPath}/images/index_copyright.png">
  </div>
</div>
</div>
</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>데이트행소개행</title>
<link href="${contextPath }/css/jquery.fullPage.css" rel="stylesheet" type="text/css">
<script src="${contextPath }/js/jquery-2.1.3.min.js"></script>
<script src="${contextPath }/js/jquery.fullPage.min.js"></script>
<link rel="stylesheet" type="text/css" href="${contextPath }/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="${contextPath }/css/demo.css" />
<link rel="stylesheet" type="text/css" href="${contextPath }/css/component.css" />
<script src="${contextPath }/js/modernizr.custom.js"></script>
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
.page1 {	background:url('${contextPath }/images/sub01_dateHaeng_bg.jpg') 50% 50% no-repeat; 
			background-size:cover;}
.page2 {	background:url('${contextPath }/images/copy_bg.jpg') 50% 50% no-repeat; 
			background-size:cover;}

.logo{
	width:90;
	height:83;
	left:40px;
	top:25px;
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
.text{
	width:682;
	height:372;
	left:680px;
	top:320px;
	position:absolute;}
.mealBtn{
	width:222;
	height:68;
	left:500px;
	bottom:100px;
	position:absolute;}
.enjoyBtn{
	width:222;
	height:68;
	left:900px;
	bottom:100px;
	position:absolute;}
.communityBtn{
	width:222;
	height:68;
	left:1310px;
	bottom:100px;
	position:absolute;}
.copySitemap{
	width:1209;
	height:457;
	left:350px;
	top:80px;
	position:absolute;}
</style>
</head>

<body>
<div id="fullpage"><!--고유명사-->
<div class="section page1">
	<div class="logo">
    <img src="${contextPath }/images/sub_logo.png" onclick="location.href='${contextPath }/index.jsp'" style="cursor:pointer;">
    </div>
       <div class="loginText">	<!--상단 우측 로그인 회원가입 메뉴 div 생성-->
    <table width="200" height="26" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <c:choose>
  	<c:when test="${empty loginUser }">
	    <td><img src="${contextPath }/images/index_login.png" width="53" height="19" onmouseover='this.src="${contextPath }/images/index_login_r.png"' onmouseout='this.src="${contextPath }/images/index_login.png"'  onclick="location.href='${contextPath }/login.do'" style="cursor:pointer;"></td>
    <td><img src="${contextPath }/images/index_join.png" width="72" height="20" onmouseover='this.src="${contextPath }/images/index_join_r.png"' onmouseout='this.src="${contextPath }/images/index_join.png"'  onclick="location.href='${contextPath }/join.do'" style="cursor:pointer;"></td>
  	</c:when>
  	<c:otherwise>
  		<td><img src="${contextPath }/images/index_logout.png" onmouseover='this.src="${contextPath }/images/index_logout_r.png"' onmouseout='this.src="${contextPath }/images/index_logout.png"' onclick="location.href='${contextPath }/logout.do'" style="cursor:pointer;"></td>
	    <td><img src="${contextPath }/images/index_mypage.png" onmouseover='this.src="${contextPath }/images/index_mypage_r.png"' onmouseout='this.src="${contextPath }/images/index_mypage.png"' onclick="location.href='${contextPath }/MypageServlet'" style="cursor:pointer;"></td>
  	</c:otherwise>
  </c:choose>
</table>
    </div>
    <div class="subMenu">
<%-- <img src="${contextPath }/images/sub_addMenu.png" onmouseover='this.src="${contextPath }/images/sub_addMenu_r.png"' onmouseout='this.src="${contextPath }/images/sub_addMenu.png"' onclick="location.href='#'" style="cursor:pointer;"> --%> 
    </div>
	<div class="text">
    <img src="${contextPath }/images/sub01_Text.png">
    </div>
    <section class="color-1">
            <nav class="cl-effect-8">
               <a href="${contextPath }/mProductServlet?command=mproduct_list&mctype=1">먹을거리</a>
               <a href="${contextPath }/fProductServlet?command=fproduct_list">즐길거리</a>
               <a href="${contextPath }/BoardServlet_notice?command=board_list">커뮤니티</a>
            </nav>
         </section>
    <%-- <div class="mealBtn">
    <img src="${contextPath }/images/sub01_mealBtn.png" onmouseover='this.src="${contextPath }/images/sub01_mealBtn_r.png"' onmouseout='this.src="${contextPath }/images/sub01_mealBtn.png"' onclick="location.href='${contextPath }/mProductServlet?command=mproduct_list'" style="cursor:pointer;">
    </div>
    <div class="enjoyBtn">
    <img src="${contextPath }/images/sub01_enjoyBtn.png" onmouseover='this.src="${contextPath }/images/sub01_enjoyBtn_r.png"' onmouseout='this.src="${contextPath }/images/sub01_enjoyBtn.png"' onclick="location.href='#'" style="cursor:pointer;">
    </div>
    <div class="communityBtn">
    <img src="${contextPath }/images/sub01_communityBtn.png" onmouseover='this.src="${contextPath }/images/sub01_communityBtn_r.png"' onmouseout='this.src="${contextPath }/images/sub01_communityBtn.png"' onclick="location.href='${contextPath }/BoardServlet_notice?command=board_list'" style="cursor:pointer;">
    </div> --%>
</div>
<div class="section page2">	<!--두번째 페이지 copyright-->
	  <div class="copySitemap">
    	<img src="${contextPath }/images/index_copyright.png">
  </div>
</div>
</div>
</body>
</html>


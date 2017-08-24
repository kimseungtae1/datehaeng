<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<c:if test="${empty loginUser }">		<%-- el에 loginUser가 비어 있다면! 로그인으로 가자!--%>
	<jsp:forward page="login.do"/>
</c:if>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>데이트행</title>
<link href="${contextPath}/css/jquery.fullPage.css" rel="stylesheet" type="text/css">
<link href="${contextPath}/css/index_arrow.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${contextPath}/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="${contextPath}/css/demo.css" />
<link rel="stylesheet" type="text/css" href="${contextPath}/css/component.css" />
<script src="${contextPath}/js/modernizr.custom.js"></script>
<script src="${contextPath}/js/jquery-2.1.3.min.js"></script>
<script src="${contextPath}/js/jquery.fullPage.min.js"></script>
<script src="${contextPath}/js/vide.min.js"></script>
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
.page1 {	background:url('${contextPath}/images/index_bg.jpg') 50% 50% no-repeat; 
			background-size:cover;}
.page2 {	background:url('${contextPath}/images/index_sub01_keyimg.gif') 50% 50% no-repeat; 
			background-size:cover;}
.page3 {	background:url('${contextPath}/images/index_sub02_keyimg.gif') 50% 50% no-repeat; 
			background-size:cover;}
.page4 {	background:url('${contextPath}/images/index_sub03_keyimg.gif') 50% 50% no-repeat; 
			background-size:cover;}
.page5 {	background:url('${contextPath}/images/index_sub04_keyimg.gif') 50% 50% no-repeat; 
			background-size:cover;}
.page6 {	background:url('${contextPath}/images/index_sub05_keyimg.gif') 50% 50% no-repeat; 
			background-size:cover;}
.page7 {	background:url('${contextPath}/images/copy_bg.jpg') 50% 50% no-repeat; 
			background-size:cover;}
			/* .page12345678은 해당 페이지 백그라운드 이미지*/
.menuDateHaeng {
				width:211;
				height:211;	
				left:1060px;			
				top:250px;
				position:absolute;}
			/*page1에서 DAYTTO 메뉴 div 스타일*/
.menuCommunity {
				width:211;
				height:211;	
				left:1325px;			
				top:250px;
				position:absolute;}
			/*page1에서 NOTICE 메뉴 div 스타일*/
.menuMeal {
				width:192;
				height:499;	
				left:520px;			
				top:250px;
				position:absolute;
				}
			/*page1에서 COUPLE 메뉴 div 스타일*/
.menuEnjoy {
				width:192;
				height:499;	
				left:770px;			
				top:250px;
				position:absolute;
				}
			/*page1에서 GUSET HOUSE 메뉴 div 스타일*/
.menuHumancity {
				width:466;
				height:212;	
				left:1060px;			
				top:540px;
				position:absolute;}
			/*page1에서 I SEOUL U 메뉴 div 스타일*/
.logo{
	width:90;
	height:83;
	left:40px;
	top:25px;
	position:fixed;
	z-index:999;}
			/*page1에서 로고 div 스타일*/
.loginText{
	width:54;
	height:19;
	right:45px;
	top:25px;
	position:fixed;
	z-index:999;}
			/*page1에서 로그인 회원가입 메뉴아이콘 div 스타일*/
.indexText{
	width:338;
	height:29;
	left:520px;
	top:200px;
	position:absolute;}
			/*page1에서 '데이트 상품 및 예약서비스' div 스타일*/
			
.dateHaengText{
	width:41;
	height:307;
	left:840px;
	top:250px;
	position:absolute;}
			/*page2에서 텍스트 div 스타일*/
.subDetails{
	width:166;
	height:51;
	left:930px;
	bottom:250px;
	position:absolute;}
			/*page2,3,4,5,6,7에서 디테일 버튼 div 스타일*/
.subDetails2{
	width:166;
	height:51;
	left:820px;
	bottom:212px;
	position:absolute;}
.subDetails3{
	width:166;
	height:51;
	left:984px;
	bottom:212px;
	position:absolute;}
			/*식당.카페.무료.유료 아이콘 div 스타일*/
.mealText{
	width:341;
	height:300;
	left:840px;
	top:250px;
	position:absolute;}
			/*page3에서 텍스트 div 스타일*/
.enjoyText{
	width:352;
	height:299;
	left:840px;
	top:250px;
	position:absolute;}
			/*page4에서 텍스트 div 스타일*/
.humancityText{
	width:546;
	height:299;
	left:740px;
	top:250px;
	position:absolute;}
			/*page5에서 텍스트 div 스타일*/
.communityText{
	width:334;
	height:299;
	left:840px;
	top:250px;
	position:absolute;}
			/*page6에서 텍스트 div 스타일*/
.copySitemap{
	width:1209;
	height:457;
	left:400px;
	top:80px;
	position:absolute;}
			/*page8에서 사이트맵 div 스타일*/

.subDateHaengBtn{
	width:132;
	height:40;
	right:100px;
	top:300px;
	position:fixed;
	z-index:999;}
.subMealBtn{
	width:132;
	height:40;
	right:100px;
	top:370px;
	position:fixed;
	z-index:999;}
.subEnjoyBtn{
	width:132;
	height:40;
	right:100px;
	top:440px;
	position:fixed;
	z-index:999;}
.subHumancityBtn{
	width:132;
	height:0;
	right:100px;
	top:510px;
	position:fixed;
	z-index:999;}
.subCommunityBtn{
	width:132;
	height:40;
	right:100px;
	top:580px;
	position:fixed;
	z-index:999;}
/*
li {
	list-style:none;} 

a {
	color:red; 
	text-decoration:none;}
a:hover {color:green; 
		text-decoration:underline;}
			*/
		</style>
</head>

<body>
<div class="logo"><a href="#1">	<!--상단 로고 div 생성-->
    <img src="${contextPath}/images/index_logo.png">
    </a></div>
     <div class="loginText">	<!--상단 우측 로그인 회원가입 메뉴 div 생성-->
    <table width="184" height="26" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <c:choose>
  	<c:when test="${empty loginUser }">
	    <td><img src="${contextPath}/images/index_login.png" width="53" height="19" onmouseover='this.src="${contextPath}/images/index_login_r.png"' onmouseout='this.src="${contextPath}/images/index_login.png"'  onclick="location.href='login.do'" style="cursor:pointer;"></td>
    <td><img src="${contextPath}/images/index_join.png" width="72" height="20" onmouseover='this.src="${contextPath}/images/index_join_r.png"' onmouseout='this.src="${contextPath}/images/index_join.png"'  onclick="location.href='join.do'" style="cursor:pointer;"></td>
  	</c:when>
  	<c:otherwise>
  		<td><img src="${contextPath}/images/index_logout.png" onmouseover='this.src="${contextPath}/images/index_logout_r.png"' onmouseout='this.src="${contextPath}/images/index_logout.png"' onclick="location.href='logout.do'" style="cursor:pointer;"></td>
	    <td><img src="${contextPath}/images/index_mypage.png" onmouseover='this.src="${contextPath}/images/index_mypage_r.png"' onmouseout='this.src="${contextPath}/images/index_mypage.png"' onclick="location.href='MypageServlet'" style="cursor:pointer;"></td>
  	</c:otherwise>
  </c:choose>
  </tr>
</table>
    </div>
<div id="fullpage">
<div class="section page1" data-anchor="1">	<!--첫번째 페이지 index-->
    <div class="indexText">	<!--'데이트 상품 및 예약서비스' div 생성-->
    <img src="${contextPath}/images/index_text.png">
    </div>
       <div class="menuDateHaeng"><a href="#2">	<!--DAYTTO 메뉴 div 생성-->
  <img src="${contextPath}/images/index_menuBtn_03dateHaeng.png" onmouseover='this.src="${contextPath}/images/index_menuBtn_03dateHaeng_r.png"' onmouseout='this.src="${contextPath}/images/index_menuBtn_03dateHaeng.png"' style="cursor:pointer;"></a></div>
   <div class="menuCommunity"><a href="#6">	<!--NOTICE 메뉴 div 생성-->
  <img src="${contextPath}/images/index_menuBtn_04community.png" onmouseover='this.src="${contextPath}/images/index_menuBtn_04community_r.png"' onmouseout='this.src="${contextPath}/images/index_menuBtn_04community.png"' style="cursor:pointer;"></a></div>
   <div class="menuMeal"><a href="#3">	<!--COUPLE 메뉴 div 생성-->
  <img src="${contextPath}/images/index_menuBtn_01meal.png" onmouseover='this.src="${contextPath}/images/index_menuBtn_01meal_r.png"' onmouseout='this.src="${contextPath}/images/index_menuBtn_01meal.png"' style="cursor:pointer;"></a></div>
  <div class="menuEnjoy"><a href="#4">	<!--GUEST HOUSE 메뉴 div 생성-->
  <img src="${contextPath}/images/index_menuBtn_02enjoy.png" onmouseover='this.src="${contextPath}/images/index_menuBtn_02enjoy_r.png"' onmouseout='this.src="${contextPath}/images/index_menuBtn_02enjoy.png"' style="cursor:pointer;"></a></div>
  <div class="menuHumancity"><a href="#5">	<!--I SEOUL U 메뉴 div 생성-->
  <img src="${contextPath}/images/index_menuBtn_05humancity.png" onmouseover='this.src="${contextPath}/images/index_menuBtn_05humancity_r.png"' onmouseout='this.src="${contextPath}/images/index_menuBtn_05humancity.png"' style="cursor:pointer;"></a></div>
 
<div class="arrow"><a href="#2">	<!--하단 화살표 아이콘 div 생성-->
    <ul>
    <li></li>
	<li></li>
    </ul>
    </a></div>
     <div class="subDateHaengBtn">
    <img src="${contextPath}/images/subMenuBtn.png" onmouseover='this.src="${contextPath}/images/subMenuBtn_01dateHaeng.png"' 
    onmouseout='this.src="${contextPath}/images/subMenuBtn.png"' onclick="location.href='jsp/sub01_dateHaeng.jsp'" style="cursor:pointer;">
    </div>
    <div class="subMealBtn">
    <img src="${contextPath}/images/subMenuBtn.png" onmouseover='this.src="${contextPath}/images/subMenuBtn_02meal.png"' 
    onmouseout='this.src="${contextPath}/images/subMenuBtn.png"' onclick="location.href='${contextPath }/mProductServlet?command=mproduct_list&mctype=1'" style="cursor:pointer;">
    </div>
      <div class="subEnjoyBtn">
    <img src="${contextPath}/images/subMenuBtn.png" onmouseover='this.src="${contextPath}/images/subMenuBtn_03enjoy.png"' 
    onmouseout='this.src="${contextPath}/images/subMenuBtn.png"' onclick="location.href='${contextPath }/fProductServlet?command=fproduct_list'" style="cursor:pointer;">
    </div>
    <div class="subHumancityBtn">
    <img src="${contextPath}/images/subMenuBtn.png" onmouseover='this.src="${contextPath}/images/subMenuBtn_04humancity.png"' 
    onmouseout='this.src="${contextPath}/images/subMenuBtn.png"' onclick="location.href='jsp/sub04_humancity.jsp'" style="cursor:pointer;">
    </div>
    <div class="subCommunityBtn">
    <img src="${contextPath}/images/subMenuBtn.png" onmouseover='this.src="${contextPath}/images/subMenuBtn_05community.png"' 
    onmouseout='this.src="${contextPath}/images/subMenuBtn.png"' onclick="location.href='${contextPath }/BoardServlet_notice?command=board_list'" style="cursor:pointer;">
    </div>
</div>
<div class="section page2" data-anchor="2">   <!--두번째 페이지 DAYTTO-->
         <!--data-anchor="2"는 첫번째 페이지에서 href="#2"클릭시 두번째 페이지로 이동한다-->
     <div class="dateHaengText">   <!--두번째 페이지 텍스트 div생성-->
       <img src="${contextPath}/images/index_dateHaengText.png">
    </div>
    
    <section class="color-6">
   <nav class="cl-effect-16">
      <a href="jsp/sub01_dateHaeng.jsp" data-hover="Details">Details</a>
   </nav>
</section>

    <div class="arrow"><a href="#3">   <!--화살표 아이콘 div생성-->
    <ul>
    <li></li>
	<li></li>
    </ul>
    </a></div>
</div>
<div class="section page3" data-anchor="3">   <!--세번째 페이지 COUPLE-->   
     <div class="mealText">
       <img src="${contextPath}/images/index_mealText.png">
    </div>
   <section class="color-6">
   <nav class="cl-effect-16-2">
      <a href="${contextPath }/mProductServlet?command=mproduct_list&mctype=1" data-hover="식당">식당</a>
   </nav>
</section>
    <section class="color-6">
   <nav class="cl-effect-16-3">
      <a href="${contextPath }/mProductServlet?command=mproduct_list&mctype=2" data-hover="카페">카페</a>
   </nav>
</section>
    <div class="arrow"><a href="#4">   <!--화살표 아이콘 div생성-->
     <ul>
    <li></li>
	<li></li>
    </ul>
    </a></div>
</div>
<div class="section page4" data-anchor="4">   <!--네번째 페이지 SINGLE-->   
     <div class="enjoyText">
       <img src="${contextPath}/images/index_enjoyText.png">
    </div>
   <section class="color-6">
   <nav class="cl-effect-16-2">
      <a href="${contextPath }/fProductServlet?command=fproduct_list" data-hover="무료">무료</a>
   </nav>
</section>
    <section class="color-6">
   <nav class="cl-effect-16-3">
      <a href="${contextPath }/gProductServlet?command=gproduct_list" data-hover="유료">유료</a>
   </nav>
</section>
    <div class="arrow"><a href="#5">   <!--화살표 아이콘 div생성-->
     <ul>
    <li></li>
	<li></li>
    </ul>
    </a></div>
</div>
<div class="section page5" data-anchor="5">   <!--다섯번째 페이지 GUEST HOUSE-->      
     <div class="humancityText">
       <img src="${contextPath}/images/index_humancityText.png">
    </div>
   <section class="color-6">
   <nav class="cl-effect-16">
      <a href="jsp/sub04_humancity.jsp" data-hover="Details">Details</a>
   </nav>
</section>
    <div class="arrow"><a href="#6">   <!--화살표 아이콘 div생성-->
     <ul>
    <li></li>
	<li></li>
    </ul>
    </a></div>
</div>
<div class="section page6" data-anchor="6">   <!--여섯번째 페이지 I SEOUL U-->      
     <div class="communityText">
       <img src="${contextPath}/images/index_communityText.png">
    </div>
   <section class="color-6">
   <nav class="cl-effect-16">
      <a href="${contextPath }/BoardServlet_notice?command=board_list" data-hover="Details">Details</a>
   </nav>
</section>
    <div class="arrow"><a href="#7">   <!--화살표 아이콘 div생성-->
     <ul>
    <li></li>
	<li></li>
    </ul>
    </a></div>
</div>
<div class="section page7">	<!--여덟번째 페이지 copyright-->
	  <div class="copySitemap">
    	<img src="${contextPath}/images/index_copyright.png">
    </div>
</div>
</div>
</body>
</html>

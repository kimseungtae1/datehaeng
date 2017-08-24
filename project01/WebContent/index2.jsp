<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<%--드롭다운 meta 정보 시작 --%>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%--드롭다운 meta 정보 끝 --%>
<title>데이트행</title>
<link href="css/jquery.fullPage.css" rel="stylesheet" type="text/css">
<script src="js/jquery-2.1.3.min.js"></script>
<script src="js/jquery.fullPage.min.js"></script>
<script src="js/vide.min.js"></script>
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
.page1 {	background:url('images/index_bg.jpg') 50% 50% no-repeat; 
			background-size:cover;}
.page2 {	background:url('images/sub01_keyimg.gif') 50% 50% no-repeat; 
			background-size:cover;}
.page3 {	background:url('images/sub02_keyimg.gif') 50% 50% no-repeat; 
			background-size:cover;}
.page4 {	background:url('images/sub03_keyimg.gif') 50% 50% no-repeat; 
			background-size:cover;}
.page5 {	background:url('images/sub04_keyimg.gif') 50% 50% no-repeat; 
			background-size:cover;}
.page6 {	background:url('images/sub05_keyimg.gif') 50% 50% no-repeat; 
			background-size:cover;}
.page7 {	background:url('images/copy_bg.jpg') 50% 50% no-repeat; 
			background-size:cover;}
			/* .page12345678은 해당 페이지 백그라운드 이미지*/
.menuDateHaeng {
				width:211;
				height:211;	
				left:1040px;			
				top:250px;
				position:absolute;}
			/*page1에서 DAYTTO 메뉴 div 스타일*/
.menuCommunity {
				width:211;
				height:211;	
				left:1305px;			
				top:250px;
				position:absolute;}
			/*page1에서 NOTICE 메뉴 div 스타일*/
.menuMeal {
				width:192;
				height:499;	
				left:480px;			
				top:250px;
				position:absolute;
				}
			/*page1에서 COUPLE 메뉴 div 스타일*/
.menuEnjoy {
				width:192;
				height:499;	
				left:730px;			
				top:250px;
				position:absolute;
				}
			/*page1에서 GUSET HOUSE 메뉴 div 스타일*/
.menuHumancity {
				width:466;
				height:212;	
				left:1040px;			
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
	left:480px;
	top:200px;
	position:absolute;}
			/*page1에서 '데이트 상품 및 예약서비스' div 스타일*/
.add{
	width:45;
	height:36;
	left:955px;
	bottom:60px;
	position:absolute;
	animation-duration: 3s;
  animation-name: slidein;}
  @keyframes slidein {
  from {
    margin-left: 100%;
    width: 300%; 
  }

  to {
    margin-left: 0%;
    width: 100%;
  }
}
			/*page1에서 하단 화살표 아이콘 div 스타일*/
			
.dateHaengText{
	width:41;
	height:307;
	left:790px;
	top:250px;
	position:absolute;}
			/*page2에서 텍스트 div 스타일*/
.subDetails{
	width:166;
	height:51;
	left:880px;
	bottom:250px;
	position:absolute;}
			/*page2,3,4,5,6,7에서 디테일 버튼 div 스타일*/
.subAdd{
	width:45;
	height:36;
	left:950px;
	bottom:80px;
	position:absolute;}
			/*page2,3,4,5,6,7에서 하단 화살표 아이콘 div 스타일*/
.mealText{
	width:341;
	height:300;
	left:790px;
	top:250px;
	position:absolute;}
			/*page3에서 텍스트 div 스타일*/
.enjoyText{
	width:352;
	height:299;
	left:790px;
	top:250px;
	position:absolute;}
			/*page4에서 텍스트 div 스타일*/
.humancityText{
	width:546;
	height:299;
	left:690px;
	top:250px;
	position:absolute;}
			/*page5에서 텍스트 div 스타일*/
.communityText{
	width:334;
	height:299;
	left:790px;
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
.subDetails2{
   width:166;
   height:51;
   left:770px;
   bottom:212px;
   position:absolute;}
.subDetails3{
   width:166;
   height:51;
   left:984px;
   bottom:212px;
   position:absolute;}
         /*식당.카페.무료.유료 아이콘 div 스타일*/
         
         	/*드롭다운 스타일 시작*/
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline
}

article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section { display: block }

body { line-height: 1 }

ol, ul { list-style: none }

blockquote, q { quotes: none }

blockquote:before, blockquote:after, q:before, q:after {
  content: '';
  content: none
}

table {
  border-collapse: collapse;
  border-spacing: 0
}

* { box-sizing: border-box; }

body {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
  height: 100vh;
  font-family: 'Roboto', sans-serif;
  font-size: 18px;
}

.screen {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  margin: auto;
  width: 1900px;
  height: 568px;
  background-color: #ededed;
  overflow: hidden;
}
@media (max-height: 568px) {

.screen {
  top: 24px;
  bottom: auto;
}
}
@media (max-width: 400px) {

.screen {
  top: 0;
  width: 100vw;
  height: 100vh;
}
}

nav {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 60px;
  background-color: white;
  -webkit-transform: translate3d(0, 0, 0);
  transform: translate3d(0, 0, 0);
}

.menu-container {
  position: relative;
  -webkit-transform: translateX(0);
  transform: translateX(0);
  -webkit-transition: -webkit-transform 0.25s ease-out;
  transition: -webkit-transform 0.25s ease-out;
  transition: transform 0.25s ease-out;
  transition: transform 0.25s ease-out, -webkit-transform 0.25s ease-out;
}

.view-submenu .menu-container {
  -webkit-transform: translateX(-100%);
  transform: translateX(-100%);
}

ul {
  position: absolute;
  top: 60px;
  padding: 6px;
  width: 100%;
  height: 508px;
  color: blue;
  background-color: white;
}

ul li a {
  opacity: 0;
  display: block;
  padding: 10px 12px;
  position: relative;
  cursor: pointer;
  border-radius: 3px;
  -webkit-transform: translateY(12px);
  transform: translateY(12px);
  -webkit-transition: opacity 0.15s 0.1s ease-out, -webkit-transform 0.15s 0.1s ease-out;
  transition: opacity 0.15s 0.1s ease-out, -webkit-transform 0.15s 0.1s ease-out;
  transition: opacity 0.15s 0.1s ease-out, transform 0.15s 0.1s ease-out;
  transition: opacity 0.15s 0.1s ease-out, transform 0.15s 0.1s ease-out, -webkit-transform 0.15s 0.1s ease-out;
}

ul li.has-children span {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  margin: auto;
  padding: 12px 16px;
  text-indent: -9999px;
}

ul li.has-children span:after {
  content: "";
  position: absolute;
  top: 0;
  right: 12px;
  bottom: 0;
  margin: auto;
  padding: 4px;
  width: 0px;
  height: 0px;
  cursor: pointer;
  font-size: 0;
  border-bottom: 2px solid #ededed;
  border-right: 2px solid #ededed;
  -webkit-transform: rotate(-45deg);
  transform: rotate(-45deg);
}

ul li.has-children span:hover:after { border-color: #bababa; }

.menu {
  opacity: 0;
  -webkit-transition: background-color 0.25s ease-out, opacity 0.15s ease-out;
  transition: background-color 0.25s ease-out, opacity 0.15s ease-out;
}

.menu.is-visible { opacity: 1; }

.menu.is-visible li a {
  opacity: 1;
  -webkit-transform: translateY(0);
  transform: translateY(0);
}

.view-submenu .menu { background-color: #3e3e3e; }

.view-submenu .menu > li > a {
  opacity: 0;
  -webkit-transition: opacity 0.15s ease-out;
  transition: opacity 0.15s ease-out;
}

.submenu {
  position: absolute;
  top: 0;
  left: 100%;
  background-color: #313131;
}

.submenu li { margin-left: 60px; }

.hide-submenu {
  position: absolute;
  top: 0;
  left: 0;
  width: 60px;
  height: 508px;
  cursor: pointer;
  background-color: #313131;
  -webkit-transition: background-color 0.25s ease-out;
  transition: background-color 0.25s ease-out;
}

.hide-submenu:before {
  opacity: 0;
  content: "";
  position: absolute;
  top: 0;
  right: 12px;
  bottom: 0;
  margin: auto;
  padding: 4px;
  width: 6px;
  height: 6px;
  cursor: pointer;
  font-size: 0;
  border-bottom: 2px solid #ededed;
  border-right: 2px solid #ededed;
  -webkit-transform: rotate(135deg);
  transform: rotate(135deg);
  left: 0;
  right: -6px;
  -webkit-transition: opacity 0.1s ease-out;
  transition: opacity 0.1s ease-out;
}

.view-submenu .hide-submenu { background-color: #3e3e3e; }

.view-submenu .hide-submenu:before {
  opacity: 1;
  -webkit-transition: opacity 0.15s 0.3s ease-out;
  transition: opacity 0.15s 0.3s ease-out;
}

.toggle {
  position: absolute;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
  top: 0;
  left: 18px;
  bottom: 0;
  margin: auto;
  cursor: pointer;
}

.toggle span {
  position: relative;
  -webkit-align-self: center;
  -ms-flex-item-align: center;
  align-self: center;
  font-size: 0;
  width: 26px;
  height: 2px;
  background-color: #ededed;
  border-radius: 100px;
  -webkit-transition: background-color 0.2s ease-out;
  transition: background-color 0.2s ease-out;
}

.toggle span:before, .toggle span:after {
  content: "";
  position: absolute;
  width: 100%;
  height: 100%;
  background-color: #ededed;
  border-radius: 100px;
  -webkit-transition: -webkit-transform .2s ease-out;
  transition: -webkit-transform .2s ease-out;
  transition: transform .2s ease-out;
  transition: transform .2s ease-out, -webkit-transform .2s ease-out;
}

.toggle span:before { bottom: calc(100% + 6px); }

.toggle span:after { top: calc(100% + 6px); }

.is-visible .toggle span { background-color: transparent; }

.is-visible .toggle span:before {
  bottom: auto;
  -webkit-transform: rotate(45deg);
  transform: rotate(45deg);
}

.is-visible .toggle span:after {
  top: auto;
  -webkit-transform: rotate(-45deg);
  transform: rotate(-45deg);
}

.visually-hidden {
  border: 0;
  clip: rect(0 0 0 0);
  height: 1px;
  margin: -1px;
  overflow: hidden;
  padding: 0;
  position: absolute;
  width: 1px;
}
	
	/*드롭다운 스타일 끝*/
         
		</style>
</head>

<body>
<div class="logo"><a href="#1">	<!--상단 로고 div 생성-->
    <img src="images/index_logo.png">
    </a></div>
     <div class="loginText">	<!--상단 우측 로그인 회원가입 메뉴 div 생성-->
    <table width="184" height="26" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <c:choose>
  	<c:when test="${empty loginUser }">
	    <td><img src="images/index_login.png" width="53" height="19" onmouseover='this.src="images/index_login_r.png"' onmouseout='this.src="images/index_login.png"'  onclick="location.href='login.do'" style="cursor:pointer;"></td>
    <td><img src="images/index_join.png" width="72" height="20" onmouseover='this.src="images/index_join_r.png"' onmouseout='this.src="images/index_join.png"'  onclick="location.href='join.do'" style="cursor:pointer;"></td>
  	</c:when>
  	<c:otherwise>
  		<td><img src="images/index_logout.png" onmouseover='this.src="images/index_logout_r.png"' onmouseout='this.src="images/index_logout.png"' onclick="location.href='logout.do'" style="cursor:pointer;"></td>
	    <td><img src="images/index_mypage.png" onmouseover='this.src="images/index_mypage_r.png"' onmouseout='this.src="images/index_mypage.png"' onclick="location.href='jsp/etc03_mypage.jsp'" style="cursor:pointer;"></td>
  	</c:otherwise>
  </c:choose>
  </tr>
</table>
    </div>
    <%-- 드롭다운 시작--%>
    <nav>
    <div class="toggle"><span>Menu</span></div>
    <div class="menu-container">
      <ul class="menu visually-hidden">
        <li><a>데이트행</a></li>
        <li class="has-children"><a>먹을거리<span>more</span></a>
          <ul class="submenu">
            <li><a>식당</a></li>
            <li><a>카페</a></li>
          </ul>
        </li>
        <li class="has-children"><a>즐길거리<span>more</span></a>
          <ul class="submenu">
            <li><a>무료</a></li>
            <li><a>유료</a></li>
          </ul>
        </li>
        <li><a>휴먼시티화성</a></li>
        <li class="has-children"><a>게시판<span>more</span></a>
          <ul class="submenu">
            <li><a>공지사항</a></li>
            <li><a>이벤트</a></li>
            <li><a>질문답변</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </nav>
  <%-- 드롭다운 끝--%>
  
  <%-- 드롭다운 스크립트 시작--%>
  <script src="http://code.jquery.com/jquery-3.0.0.min.js"></script> 
<script>
var nav           = $('nav');
var menu          = $('.menu');
var menuContainer = $('.menu-container');
var subMenu       = $('.submenu');
var toggle        = $('.toggle');
var subToggle     = $('.has-children span');
var back          = '<div class="hide-submenu"></div>';
var subHide       = $(back);

// Toggle menu
toggle.on("click", function() {
  nav.toggleClass('is-visible');
  if(menu.hasClass('visually-hidden')) {
    menu.toggleClass('visually-hidden is-visible')
  } else {
    menu.removeClass('is-visible');
    // Wait for CSS animation
    setTimeout(function() {
      nav.removeClass('view-submenu');
      menu.addClass('visually-hidden');
    }, 200);
  }
});

// Add submenu hide bar
subHide.prependTo(subMenu);
var subHideToggle = $('.hide-submenu');

// Show submenu
subToggle.on("click", function() {
  nav.addClass('view-submenu');
  // Hide all the submenus...
  subMenu.hide();
  // ...except for the one being called
  $(this).parents('li').find('.submenu').show();
});
// Hide submenu
subHideToggle.on("click", function() {
  nav.removeClass('view-submenu');
});
</script>
<%-- 드롭다운 스크립트 끝--%>
<div id="fullpage">
<div class="section page1" data-anchor="1">	<!--첫번째 페이지 index-->
    <div class="indexText">	<!--'데이트 상품 및 예약서비스' div 생성-->
    <img src="images/index_text.png">
    </div>
       <div class="menuDateHaeng"><a href="#2">	<!--DAYTTO 메뉴 div 생성-->
  <img src="images/index_menuBtn_03dateHaeng.png" onmouseover='this.src="images/index_menuBtn_03dateHaeng_r.png"' onmouseout='this.src="images/index_menuBtn_03dateHaeng.png"' style="cursor:pointer;"></a></div>
   <div class="menuCommunity"><a href="#6">	<!--NOTICE 메뉴 div 생성-->
  <img src="images/index_menuBtn_04community.png" onmouseover='this.src="images/index_menuBtn_04community_r.png"' onmouseout='this.src="images/index_menuBtn_04community.png"' style="cursor:pointer;"></a></div>
   <div class="menuMeal"><a href="#3">	<!--COUPLE 메뉴 div 생성-->
  <img src="images/index_menuBtn_01meal.png" onmouseover='this.src="images/index_menuBtn_01meal_r.png"' onmouseout='this.src="images/index_menuBtn_01meal.png"' style="cursor:pointer;"></a></div>
  <div class="menuEnjoy"><a href="#4">	<!--GUEST HOUSE 메뉴 div 생성-->
  <img src="images/index_menuBtn_02enjoy.png" onmouseover='this.src="images/index_menuBtn_02enjoy_r.png"' onmouseout='this.src="images/index_menuBtn_02enjoy.png"' style="cursor:pointer;"></a></div>
  <div class="menuHumancity"><a href="#5">	<!--I SEOUL U 메뉴 div 생성-->
  <img src="images/index_menuBtn_05humancity.png" onmouseover='this.src="images/index_menuBtn_05humancity_r.png"' onmouseout='this.src="images/index_menuBtn_05humancity.png"' style="cursor:pointer;"></a></div>
 
    <div class="add"><a href="#2">	<!--하단 화살표 아이콘 div 생성-->
    <img src="images/add_btn.png">
    </a></div>
     <div class="subDateHaengBtn">
    <img src="images/subMenuBtn.png" onmouseover='this.src="images/subMenuBtn_01dateHaeng.png"' onmouseout='this.src="images/subMenuBtn.png"' onclick="location.href='jsp/sub01_dateHaeng.jsp'" style="cursor:pointer;">
     </div>
    <div class="subMealBtn">
    <img src="images/subMenuBtn.png" onmouseover='this.src="images/subMenuBtn_02meal.png"' onmouseout='this.src="images/subMenuBtn.png"' onclick="location.href='${contextPath }/mProductServlet?command=mproduct_list'" style="cursor:pointer;">
    </div>
      <div class="subEnjoyBtn">
    <img src="images/subMenuBtn.png" onmouseover='this.src="images/subMenuBtn_03enjoy.png"' onmouseout='this.src="images/subMenuBtn.png"' onclick="location.href='#'" style="cursor:pointer;">
    </div>
    <div class="subHumancityBtn">
    <img src="images/subMenuBtn.png" onmouseover='this.src="images/subMenuBtn_04humancity.png"' onmouseout='this.src="images/subMenuBtn.png"' onclick="location.href='jsp/sub04_humancity.jsp'" style="cursor:pointer;">
    </div>
    <div class="subCommunityBtn">
    <img src="images/subMenuBtn.png" onmouseover='this.src="images/subMenuBtn_05community.png"' onmouseout='this.src="images/subMenuBtn.png"' onclick="location.href='${contextPath }/BoardServlet_notice?command=board_list'" style="cursor:pointer;">
    </div>
</div>
<div class="section page2" data-anchor="2">	<!--두번째 페이지 DAYTTO-->
			<!--data-anchor="2"는 첫번째 페이지에서 href="#2"클릭시 두번째 페이지로 이동한다-->
	  <div class="dateHaengText">	<!--두번째 페이지 텍스트 div생성-->
    	<img src="images/index_dateHaengText.png">
    </div>
    <div class="subDetails">	<!--디테일 버튼 div생성-->
    <img src="images/sub_detailbutton.png" onmouseover='this.src="images/sub_detailbutton_r.png"' onmouseout='this.src="images/sub_detailbutton.png"' onclick="location.href='jsp/sub01_dateHaeng.jsp'" style="cursor:pointer;">
    </div>
    <div class="subAdd"><a href="#3">	<!--화살표 아이콘 div생성-->
    <img src="images/add_btn.png">
    </a></div>
</div>
<div class="section page3" data-anchor="3">	<!--세번째 페이지 COUPLE-->	
	  <div class="mealText">
    	<img src="images/index_mealText.png">
    </div>
    <%-- <div class="subDetails">	<!--디테일 버튼 div생성-->
    <img src="images/sub_detailbutton.png" onmouseover='this.src="images/sub_detailbutton_r.png"' onmouseout='this.src="images/sub_detailbutton.png"' onclick="location.href='${contextPath }/mProductServlet?command=mproduct_list'" style="cursor:pointer;">
    </div> --%>
    <div class="subDetails2">	<!--디테일 버튼 div생성-->
    <img src="images/sub_meal_detailbutton.png" onmouseover='this.src="images/sub_meal_detailbutton_r.png"' onmouseout='this.src="images/sub_meal_detailbutton.png"' onclick="location.href='${contextPath }/mProductServlet?command=mproduct_list'" style="cursor:pointer;">
    </div>
    <div class="subDetails3">	<!--디테일 버튼 div생성-->
    <img src="images/sub_cafe_detailbutton.png" onmouseover='this.src="images/sub_cafe_detailbutton_r.png"' onmouseout='this.src="images/sub_cafe_detailbutton.png"' onclick="location.href='${contextPath }/cProductServlet?command=cproduct_list'" style="cursor:pointer;">
    </div>
    <div class="subAdd"><a href="#4">	<!--화살표 아이콘 div생성-->
    <img src="images/add_btn.png">
    </a></div>
</div>
<div class="section page4" data-anchor="4">	<!--네번째 페이지 SINGLE-->	
	  <div class="enjoyText">
    	<img src="images/index_enjoyText.png">
    </div>
   <!-- <div class="subDetails">	디테일 버튼 div생성
    <img src="images/sub_detailbutton.png" onmouseover='this.src="images/sub_detailbutton_r.png"' onmouseout='this.src="images/sub_detailbutton.png"' onclick="location.href=''" style="cursor:pointer;">
    </div> -->
    <div class="subDetails2">	<!--디테일 버튼 div생성-->
    <img src="images/sub_ej_detailbutton.png" onmouseover='this.src="images/sub_ej_detailbutton_r.png"' onmouseout='this.src="images/sub_ej_detailbutton.png"' onclick="location.href=''" style="cursor:pointer;">
    </div>
    <div class="subDetails3">	<!--디테일 버튼 div생성-->
    <img src="images/sub_ejm_detailbutton.png" onmouseover='this.src="images/sub_ejm_detailbutton_r.png"' onmouseout='this.src="images/sub_ejm_detailbutton.png"' onclick="location.href=''" style="cursor:pointer;">
    </div>
    <div class="subAdd"><a href="#5">	<!--화살표 아이콘 div생성-->
    <img src="images/add_btn.png">
    </a></div>
</div>
<div class="section page5" data-anchor="5">	<!--다섯번째 페이지 GUEST HOUSE-->		
	  <div class="humancityText">
    	<img src="images/index_humancityText.png">
    </div>
    <div class="subDetails">	<!--디테일 버튼 div생성-->
    <img src="images/sub_detailbutton.png" onmouseover='this.src="images/sub_detailbutton_r.png"' onmouseout='this.src="images/sub_detailbutton.png"' onclick="location.href='jsp/sub04_humancity.jsp'" style="cursor:pointer;">
    </div>
    <div class="subAdd"><a href="#6">	<!--화살표 아이콘 div생성-->
    <img src="images/add_btn.png">
    </a></div>
</div>
<div class="section page6" data-anchor="6">	<!--여섯번째 페이지 I SEOUL U-->		
	  <div class="communityText">
    	<img src="images/index_communityText.png">
    </div>
   <div class="subDetails">	<!--디테일 버튼 div생성-->
    <img src="images/sub_detailbutton.png" onmouseover='this.src="images/sub_detailbutton_r.png"' onmouseout='this.src="images/sub_detailbutton.png"' onclick="location.href='${contextPath }/BoardServlet_notice?command=board_list'" style="cursor:pointer;">
    </div>
    <div class="subAdd"><a href="#7">	<!--화살표 아이콘 div생성-->
    <img src="images/add_btn.png">
    </a></div>
</div>
<div class="section page7">	<!--여덟번째 페이지 copyright-->
	  <div class="copySitemap">
    	<img src="images/index_copyright.png">
    </div>
</div>
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>데이트행_휴먼시티</title>
<script src="http://t1.daumcdn.net/tistory_admin/lib/jquery-2.1.4.min.js"></script>
<link href="${contextPath }/css/sub03_free_slider2.css" rel="stylesheet" type="text/css">
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
	#keyimg { background-image:url(${contextPath}/images/sub04_keyimage.gif); background-repeat:no-repeat; background-size:100% 100%;}
	body {font-family: 'Nanum Gothic', sans-serif;}
	* { margin:0; padding:0; font-family: 'Nanum Gothic', sans-serif; font-size:15px;}
	a {color:#fff; text-decoration:none;}
	a:hover {color:#ff931e; text-decoration:underline;}
	li {list-style:none;}
	#wrap {margin:0 auto;font-family: 'Nanum Gothic', sans-serif;} /*항상가운데로 오게*/
	#header {border:0px height:61px; text-align:center;} /* line-height 가로로 가운데 정렬*/
	#block1 {height:20px;}
	#block2 {height:90px;}
	#block3 {height:91px;}
	#block4 {height:57px;}
	#block5 {height:32px;}
	#block6 {height:37px;}
	#block7 {height:38px;}
	#block8 {height:58px;}
	
	#copySitemap { background-image:url(${contextPath}/images/copyright250.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer{border:0; margin:0; padding:0; }
	/* box-sizing은 border이 가로 세로 사이즈에 영향을 주기때문에 / width가 20%인 이유는 가로를 100px로 잡았을때 5개 메뉴에 퍼센트로 할당*/
	#keyimg {height:360px; line-height:100px; text-align:center;}
	#footer { background-image:url(${contextPath}/images/footer.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer{ height:174px; text-align:center; border:0; margin:0; padding:0; }
	#copySitemap {height:250px; line-height:250px; text-align:center;}
	#list ul {overflow:hidden} /* float를 사용 시 상위 태그에 무조건 써야한다*/
	#list ul li {float:left; text-align:center; width:25px; box-sizing:border-box;}
	.select {color:#ff931e; font-family: 'Nanum Gothic', sans-serif;}
	.basic {color:#343434; font-size:12px;font-family: 'Nanum Gothic', sans-serif; line-height:20px;}
	.basic a:hover {text-decoration:underline;}
	.reserveInfo {color:#343434; font-size:13px;font-family: 'Nanum Gothic', sans-serif;}<br>
	.addBtn{	width:76;
				height:76;	
				left:1000px;			
				top:1000px;
				position:absolute;}
	#poster01 table td img {display:block;}
	#poster02 table td img {display:block;}
	#poster03 table td img {display:block;}
	#poster04 table td img {display:block;}
	#poster05 table td img {display:block;}
	#poster06 table td img {display:block;}
	#poster07 table td img {display:block;}

	/* 드롭다운 css 시작 */
/*We are fixing a menu and pulling them out of the screen by negative 'left'*/

.side-menu {
    padding: 0;
    margin: 0;
    font-size: 0;
    position: fixed;
    left: -160px;
    top: 100px;
    opacity: .95;
    overflow: hidden;
    -webkit-transition: all .3s ease-in-out;
    transition: all .3s ease-in-out;
}

/*We need to hide the default input box*/

#menu-button {
    display: none;
}

/*if checkbox is checked next sibling's .side menu child slides in*/

#menu-button:checked + .menu-wrap .side-menu {
    left: 0px;
}

/*this is the label for the checkbox which act as a button for our menu*/

.menu-button--label {
    color: #de7131;
    position: fixed;
    top: 50px;
    left: 10px;
    font-size: 3rem;
    text-align: center;
    line-height: 0;
    cursor: pointer;
    -webkit-transition: all 1s;
    transition: all 1s;
}

/*Fancy rotation effect for our menu button. It rotates back when mouse leaves it */

.menu-button--label:hover {
    -webkit-transform: rotateY(180deg);
    transform: rotateY(180deg);
    -webkit-transition: all 1s;
    transition: all 1s;
}

/*We are giving the li item a shorter width to activate 'pop-out' effect when you hover*/

.side-menu--list li {
    font-size: 0;
    width: 160px;
}
.side-menu--list a {
    color: #fff;
    display: block;
    text-decoration: none;
    height: 2rem;
    line-height: 2rem;
    background: #e5e5e5;
    padding-left: 1rem;
    width: 180px;
    font-size: 1.2rem;
}
.side-menu--list {
    list-style: none;
    padding-left: 0;
}

/*.subset is a sub-menu that we are styling to stand out a bit*/

.side-menu--list li a.subset {
    font-size: 1.4rem;
    height: 2.2rem;
    line-height: 2.2rem;
    padding-left: .5rem;
    background: #de7131;
}

/*Applying overflow:hidden to get rid of the cluttering when the height is minimized*/

.side-menu--list li {
    height: 2.2rem;
    overflow: hidden;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

/*when you hover a li it expands to show all the menu links(and expands itself only)*/

.side-menu--list li:hover {
    height: 8.2rem;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
    cursor: pointer;
    width: 180px;
}

/*We are skipping a sub-menu link and applying transformation to the follow-ups*/

.side-menu--list li a:not(:first-child):hover {
    cursor: pointer;
    background-color: #de7131;
    color: #black;
    -webkit-transition: all .3s ease-in-out;
    transition: all .3s ease-in-out;
    -webkit-transform: translateX(10px);
    transform: translateX(10px);
}
	/* 드롭다운 css끝 */
	/* 리뷰 링크색 */
   .ho{color:black;}
	
</style>
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
    <td width="1047" height="105" rowspan="3" align="center" valign="top"><img src="${contextPath}/images/sub04_title.gif"></td>
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
    <td width="46" height="16" align="right" valign="top"><%-- <img src="${contextPath}/images/sub_addMenu_r.png" onclick="location.href=''" style="cursor:pointer;"> --%></td>
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
   <td align="center" valign="top" width="887"></td>
   <td align="center" valign="top" width="127"><img src="${contextPath}/images/sub04_menu.png" width="127" height="25"></td>
   <td align="center" valign="top"></td>
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
    <td align="center" valign="top" height="805" colspan="3"></td>
    </tr>
  <tr>
    <td align="center" valign="top" width="916" height="68"></td>
    <td align="center" valign="top" width="68" height="68"><a href="sub04_humancity.jsp#poster01" target="_parent"><img src="${contextPath}/images/sub04_addBtn.png" width="68" height="68"></a></td>
    <td align="center" valign="top" width="916" height="68""></td>
  </tr>
  <tr>
    <td align="center" valign="top" height="27" colspan="3"></td>
    </tr>
</table>
</td>
  </tr>
</table>

    </div>
    <div id="block4"></div>
    <div id="reserve_title">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
   <td align="center" valign="top" width="300"></td>
   <td align="center" valign="top" width="225"><img src="${contextPath}/images/sub04_subtitle.gif" width="225" height="29"></td>
   <td align="center" valign="top" width="1375"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="block5"></div>
  	<div id="poster01">
   <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="313" height="450"></td>
    <td align="center" valign="top" width="1287"  height="450" background="${contextPath}/images/sub04_poster_bg.gif"><table width="1287" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="710" height="450" rowspan="5" align="center" valign="top">
    <a href="http://www.suwon.go.kr/web/board/BD_board.view.do?seq=20170323173410542&bbsCd=1042&pageType=&showSummaryYn=N&delDesc=&q_currPage=1&q_sortName=&q_sortOrder=&q_rowPerPage=10&q_searchKeyType=TITLE___1002&q_searchKey=&q_searchVal=%EA%B4%91%EA%B5%90">
    <img src="${contextPath}/images/sub04_poster01.gif" onmouseover='this.src="${contextPath}/images/sub04_poster01_r.gif"' 
    onmouseout='this.src="${contextPath}/images/sub04_poster01.gif"' width="710" height="450"></a></td>
    <td height="73" colspan="3" align="center" valign="bottom" class="basic">
    <a class="ho" href="http://www.suwon.go.kr/web/board/BD_board.view.do?seq=20170323173410542&bbsCd=1042&pageType=&showSummaryYn=N&delDesc=&q_currPage=1&q_sortName=&q_sortOrder=&q_rowPerPage=10&q_searchKeyType=TITLE___1002&q_searchKey=&q_searchVal=광교">
    <strong>2017년 광교마루길 행복나눔 한마당 축제</strong></a></td>
    </tr>
  <tr>
    <td height="183" colspan="3" align="center" valign="top"></td>
    </tr>
  <tr>
    <td width="261" height="47" align="center" valign="top"></td>
    <td width="46" height="47" align="center" valign="top"><img src="${contextPath}/images/sub04_dateIcon.gif" width="46" height="47"></td>
    <td width="270" height="47" align="center" valign="top"></td>
  </tr>
  <tr>
    <td height="19" colspan="3" align="center" valign="top"></td>
    </tr>
  <tr>
    <td height="120" colspan="3" align="center" valign="top" class="basic">2017년 4월 7일 ~ 2017년 4월 8일<br>
      14:00 ~ 19:00<br>
      in 광교공원</td>
    </tr>
</table>
</td>
    <td align="center" valign="top" width="300" height="450"></td>
  </tr>
</table>
</td>
  </tr>
</table>

    </div>
    <div id="block6"></div>
    <div id="poster02">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="313" height="450"></td>
    <td align="center" valign="top" width="1287" height="450" background="${contextPath}/images/sub04_poster_bg.gif"><table width="1287" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="73" colspan="3" align="center" valign="bottom" class="basic">
    <a class="ho"  href="http://www.suwon.go.kr/web/board/BD_board.view.do?seq=20170316173704542&bbsCd=1042&pageType=&showSummaryYn=N&delDesc=&q_currPage=1&q_sortName=&q_sortOrder=&q_rowPerPage=10&q_searchKeyType=TITLE___1002&q_searchKey=&q_searchVal=황구지천">
    <strong>황구지천 벚꽃축제</strong></a></td>
    <td width="707" height="450" rowspan="5" align="center" valign="top">
    <a href="http://www.suwon.go.kr/web/board/BD_board.view.do?seq=20170316173704542&bbsCd=1042&pageType=&showSummaryYn=N&delDesc=&q_currPage=1&q_sortName=&q_sortOrder=&q_rowPerPage=10&q_searchKeyType=TITLE___1002&q_searchKey=&q_searchVal=%ED%99%A9%EA%B5%AC%EC%A7%80%EC%B2%9C"><img src="${contextPath}/images/sub04_poster02.gif" onmouseover='this.src="${contextPath}/images/sub04_poster02_r.gif"' onmouseout='this.src="${contextPath}/images/sub04_poster02.gif"' width="707" height="450"></a></td>
  </tr>
  <tr>
    <td height="183" colspan="3" align="center" valign="top"></td>
    </tr>
  <tr>
    <td width="273" height="47" align="center" valign="top"></td>
    <td width="46" height="47" align="center" valign="top"><img src="${contextPath}/images/sub04_dateIcon.gif" width="46" height="47"></td>
    <td width="261" height="47" align="center" valign="top"></td>
    </tr>
  <tr>
    <td height="19" colspan="3" align="center" valign="top"></td>
    </tr>
  <tr>
    <td height="120" colspan="3" align="center" valign="top" class="basic">2017년 4월 8일 ~ 2017년 4월 9일<br>
      개막식 : 2017년 4월 8일 15:00<br>
      in 황구지천</td>
    </tr>
</table>
</td>
    <td align="center" valign="top" width="300" height="450"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
	<div id="block6"></div>
    <div id="poster03">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="313" height="450"></td>
    <td align="center" valign="top" width="1287" height="450" background="${contextPath}/images/sub04_poster_bg.gif"><table width="1287" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="710" height="45" rowspan="5" align="center" valign="top"><a href="#"><img src="${contextPath}/images/sub04_poster03.gif" width="710" height="450" onmouseover='this.src="${contextPath}/images/sub04_poster03_r.gif"' onmouseout='this.src="${contextPath}/images/sub04_poster03.gif"'></a></td>
    <td height="73" colspan="3" align="center" valign="bottom" class="reserveInfo"><a class="ho" href="#"><strong>2017 수원박물관 가족문화 행사</strong></a></td>
    </tr>
  <tr>
    <td height="183" colspan="3" align="center" valign="top"></td>
    </tr>
  <tr>
    <td width="261" height="47" align="center" valign="top"></td>
    <td width="46" height="47" align="center" valign="top"><img src="${contextPath}/images/sub04_dateIcon.gif" width="46" height="47"></td>
    <td width="270" height="47" align="center" valign="top"></td>
  </tr>
  <tr>
    <td height="19" colspan="3" align="center" valign="top"></td>
    </tr>
  <tr>
    <td height="120" colspan="3" align="center" valign="top" class="basic" >2017년 5월 5일<br>
      10:00 ~ 17:00<br>
      in 수원박물관 야외무대</td>
    </tr>
</table>
</td>
    <td align="center" valign="top" width="300" height="450"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="block6"></div>
        <div id="poster04">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="313" height="450"></td>
    <td align="center" valign="top" width="1287" height="450" background="${contextPath}/images/sub04_poster_bg.gif"><table width="1287" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="73" colspan="3" align="center" valign="bottom" class="basic"><a class="ho" href="#"><strong>2017 수원시 카카오톡 통큰 무료-할인</strong></a></td>
    <td width="707" height="450" rowspan="5" align="center" valign="top"><a href="#"><img src="${contextPath}/images/sub04_poster04.gif" onmouseover='this.src="${contextPath}/images/sub04_poster04_r.gif"' onmouseout='this.src="${contextPath}/images/sub04_poster04.gif"' width="707" height="450"></a></td>
  </tr>
  <tr>
    <td height="183" colspan="3" align="center" valign="top"></td>
    </tr>
  <tr>
    <td width="273" height="47" align="center" valign="top"></td>
    <td width="46" height="47" align="center" valign="top"><img src="${contextPath}/images/sub04_dateIcon.gif" width="46" height="47"></td>
    <td width="261" height="47" align="center" valign="top"></td>
    </tr>
  <tr>
    <td height="19" colspan="3" align="center" valign="top"></td>
    </tr>
  <tr>
    <td height="120" colspan="3" align="center" valign="top" class="basic">2017년 4월 1일 ~ 2017년 4월 30일<br>
in 수원</td>
    </tr>
</table>
</td>
    <td align="center" valign="top" width="300" height="450"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>
    <div id="block6"></div>
    <div id="poster05">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="450" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="313" height="450"></td>
    <td align="center" valign="top" width="1287" height="450" background="${contextPath}/images/sub04_poster_bg.gif"><table width="1287" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="73" colspan="3" align="center" valign="bottom" class="basic"><a class="ho" href="#"><strong>수원시 외국어마을과 함께하는 2017<br>
GLOBAL CHILDREN’S DAY FESTIVAL
    </strong></a></td>
    <td width="707" height="450" rowspan="5" align="center" valign="top"><a href="#"><img src="${contextPath}/images/sub04_poster05.gif" onmouseover='this.src="${contextPath}/images/sub04_poster05_r.gif"' onmouseout='this.src="${contextPath}/images/sub04_poster05.gif"' width="707" height="450"></a></td>
  </tr>
  <tr>
    <td height="183" colspan="3" align="center" valign="top"></td>
    </tr>
  <tr>
    <td width="273" height="47" align="center" valign="top"></td>
    <td width="46" height="47" align="center" valign="top"><img src="${contextPath}/images/sub04_dateIcon.gif" width="46" height="47"></td>
    <td width="261" height="47" align="center" valign="top"></td>
    </tr>
  <tr>
    <td height="19" colspan="3" align="center" valign="top"></td>
    </tr>
  <tr>
    <td height="120" colspan="3" align="center" valign="top" class="basic">2017년 5월 4일<br>
10:00 ~ 15:00<br>
in 수원시 외국어마을</td>
    </tr>
</table>
</td>
    <td align="center" valign="top" width="300" height="450"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="block6"></div>
    <div id="poster06">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="313" height="450"></td>
    <td align="center" valign="top" width="1287" height="450" background="${contextPath}/images/sub04_poster_bg.gif"><table width="1287" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="710" height="45" rowspan="5" align="center" valign="top"><a href="#"><img src="${contextPath}/images/sub04_poster06.gif" width="710" height="450" onmouseover='this.src="${contextPath}/images/sub04_poster06_r.gif"' onmouseout='this.src="${contextPath}/images/sub04_poster06.gif"'></a></td>
    <td height="73" colspan="3" align="center" valign="bottom" class="reserveInfo"><a class="ho" href="#"><strong>다둥이 가족축제</strong></a></td>
    </tr>
  <tr>
    <td height="183" colspan="3" align="center" valign="top"></td>
    </tr>
  <tr>
    <td width="261" height="47" align="center" valign="top"></td>
    <td width="46" height="47" align="center" valign="top"><img src="${contextPath}/images/sub04_dateIcon.gif" width="46" height="47"></td>
    <td width="270" height="47" align="center" valign="top"></td>
  </tr>
  <tr>
    <td height="19" colspan="3" align="center" valign="top"></td>
    </tr>
  <tr>
    <td height="120" colspan="3" align="center" valign="top" class="basic" >2017년 6월 3일<br>
14:00 ~ 19:00<br>
in 광교호수공원 (마당극장)</td>
    </tr>
</table>
</td>
    <td align="center" valign="top" width="300" height="450"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
   <div id="block6"></div>
    <div id="poster07">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="450" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="313" height="450"></td>
    <td align="center" valign="top" width="1287" height="450" background="${contextPath}/images/sub04_poster_bg.gif"><table width="1287" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="73" colspan="3" align="center" valign="bottom" class="basic"><a class="ho" href="#"><strong>2017 수원 마을 축제<br>
마을 꽃이 피다
    </strong></a></td>
    <td width="707" height="450" rowspan="5" align="center" valign="top"><a href="#"><img src="${contextPath}/images/sub04_poster07.gif" onmouseover='this.src="${contextPath}/images/sub04_poster07_r.gif"' onmouseout='this.src="${contextPath}/images/sub04_poster07.gif"' width="707" height="450"></a></td>
  </tr>
  <tr>
    <td height="183" colspan="3" align="center" valign="top"></td>
    </tr>
  <tr>
    <td width="273" height="47" align="center" valign="top"></td>
    <td width="46" height="47" align="center" valign="top"><img src="${contextPath}/images/sub04_dateIcon.gif" width="46" height="47"></td>
    <td width="261" height="47" align="center" valign="top"></td>
    </tr>
  <tr>
    <td height="19" colspan="3" align="center" valign="top"></td>
    </tr>
  <tr>
    <td height="120" colspan="3" align="center" valign="top" class="basic">2017년 6월 9일 ~ 11일<br>
in 수원 라마다호텔, 인계동</td>
    </tr>
</table>
</td>
    <td align="center" valign="top" width="300" height="450"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="block8"></div>
  <div id="footer">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900px" height="170" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top" background="${contextPath}/images/footer.gif"><table width="1900px" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="919" height="43" align="left" valign="top"></td>
        <td width="62" height="43" align="left" valign="top"></td>
        <td width="919" height="43" align="left" valign="top"></td>
      </tr>
      <tr>
        <td width="919" height="63" align="left" valign="top"></td>
        <td width="62" height="63" align="left" valign="top"><a href="#"><img src="${contextPath}/images/footer_logo.png" width="62" height="63"></a></td>
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


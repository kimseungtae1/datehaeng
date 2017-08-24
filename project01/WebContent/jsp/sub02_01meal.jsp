<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>데이트행식사행</title>
<script src="${contextPath }/js/masonry.pkgd.min.js"></script>
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
	#block4 {height:26px;}
	#block5 {height:30px;}
	#block6 {height:58px;}
	#block7 {height:73px;}
	#copySitemap { background-image:url(images/copyright250.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer { background-image:url(images/footer.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer{ height:174px; text-align:center; border:0; margin:0; padding:0; }
	/* box-sizing은 border이 가로 세로 사이즈에 영향을 주기때문에 / width가 20%인 이유는 가로를 100px로 잡았을때 5개 메뉴에 퍼센트로 할당*/
	#copySitemap {height:250px; line-height:600px; text-align:center;}
	#list ul {overflow:hidden} /* float를 사용 시 상위 태그에 무조건 써야한다*/
	#list ul li {float:left; text-align:center; width:25px; box-sizing:border-box;}
	.select {color:#ff931e;}
	.productTitle {color:#ff931e; font-size:18px;}
	.product {color:#343434; font-size:18px;}
	#more { color:#b1b1b1; font-family:"Nanum Gothic"; font-size:40px; font-weight:bold;}
	 
         ul{padding-top:0px;}                     /*  상단 여백 10px  */
         .first{
         	display:inline;                         /*  세로나열을 가로나열로 변경 */
            font:bold 12px Dotum;                     /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
            padding:0 10px;   
         }
         .second {
            display:inline;                         /*  세로나열을 가로나열로 변경 */
            border-left:1px solid #999;             /* 각 메뉴의 왼쪽에 "|" 표시(분류 표시) */
            font:bold 12px Dotum;                     /* 폰트 설정 - 12px의 돋움체 굵은 글씨로 표시 */
            padding:0 10px;                         /* 각 메뉴 간격 */
            }
	.item {
  width: 412px;
  float: left;
  overflow: hidden;
  }
  .item img{
  	-webkit-transform:scale(1);
	-moz-transform:scale(1);
	-ms-transform:scale(1);	
	-o-transform:scale(1);	
	transform:scale(1);
	-webkit-transition:.3s;
	-moz-transition:.3s;
	-ms-transition:.3s;
	-o-transition:.3s;
	transition:.3s;
}
.item:hover img {
	-webkit-transform:scale(1.2);
	-moz-transform:scale(1.2);
	-ms-transform:scale(1.2);	
	-o-transform:scale(1.2);
	transform:scale(1.2);
}
	#container{
		left:20%;
		width:1266px;}

  /*베스트상품 css 시작*/
  @keyframes slidein {
  from {
    margin-left: 100%;
    width: 300%; 
  }

  to {
    margin-left: 0%;
    width: 20%;
  }
/*베스트상품 css 끝*/

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

	/* 더보기 버튼 시작  */

function moreList(){
	$.ajax({
	        type: "POST",
	        url: "jsp/sub02_01meal_ajax.jsp",
/* 	        data: , */
	        beforeSend:  function() {
	        $('#more').append('<img src="${contextPath }/images/sub02_morebox.gif" />');
	    },
	    success: function(html){
	        $("#more").remove();
	        $("#container").append(html);
	    }
	});
};
	/* 더보기버튼 끝 */
</script>
	

</head>

<body>
<!-- <form action="" method="post" enctype="multipart/form-data"> -->
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
    <td width="1047" height="105" rowspan="3" align="center" valign="top"><img src="${contextPath}/images/sub02_title.gif"></td>
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
   <td align="center" valign="top" width="765"></td>
   <td align="center" valign="top"><img src="${contextPath}/images/sub02_menu_meal_r.png" width="49" height="25"></td>
   <td align="center" valign="top" width="276"></td>
   <td align="center" valign="top"><img src="${contextPath}/images/sub02_menu_cafe.png" width="46" height="25" onmouseover='this.src="${contextPath}/images/sub02_menu_cafe_r.png"' onmouseout='this.src="${contextPath}/images/sub02_menu_cafe.png"' onclick="location.href='${contextPath }/mProductServlet?command=mproduct_list&mctype=2'" style="cursor:pointer;"></td>
   <td align="center" valign="top" width="764"></td>
  </tr>
</table>
</td>
  </tr>
</table>
  </div>
  	<div id="block2"></div>
    <div id="keyimg">
    <ul class="slides">
    <input type="radio" name="radio-btn" id="img-1" checked />
    <li class="slide-container">
		<div class="slide">
			 <img src="${contextPath }/images/sub02_01meal_01_kmg.gif"/>
        </div>
		<div class="nav">
			<label for="img-6" class="prev">&#x2039;</label>
			<label for="img-2" class="next">&#x203a;</label>
		</div>
    </li>

    <input type="radio" name="radio-btn" id="img-2" />
    <li class="slide-container">
        <div class="slide">
        <img src="${contextPath }/images/sub02_01meal_02_kmg.gif"/>
         
        </div>
		<div class="nav">
			<label for="img-1" class="prev">&#x2039;</label>
			<label for="img-3" class="next">&#x203a;</label>
		</div>
    </li>

    <input type="radio" name="radio-btn" id="img-3" />
    <li class="slide-container">
        <div class="slide">
          <img src="${contextPath }/images/sub02_01meal_04_kmg.gif"/>
        </div>
		<div class="nav">
			<label for="img-2" class="prev">&#x2039;</label>
			<label for="img-4" class="next">&#x203a;</label>
		</div>
    </li>

    <input type="radio" name="radio-btn" id="img-4" />
    <li class="slide-container">
        <div class="slide">
          <img src="${contextPath }/images/sub02_01meal_03_kmg.gif"/>
        </div>
		<div class="nav">
			<label for="img-3" class="prev">&#x2039;</label>
			<label for="img-5" class="next">&#x203a;</label>
		</div>
    </li>

    <input type="radio" name="radio-btn" id="img-5" />
    <li class="slide-container">
        <div class="slide">
          <img src="${contextPath }/images/sub02_01meal_05_kmg.gif"/>
        </div>
		<div class="nav">
			<label for="img-4" class="prev">&#x2039;</label>
			<label for="img-6" class="next">&#x203a;</label>
		</div>
    </li>

    <input type="radio" name="radio-btn" id="img-6" />
    <li class="slide-container">
        <div class="slide">
          <img src="${contextPath }/images/sub02_01meal_06_kmg.gif"/>
        </div>
		<div class="nav">
			<label for="img-5" class="prev">&#x2039;</label>
			<label for="img-1" class="next">&#x203a;</label>
		</div>
    </li>

    <li class="nav-dots">
      <label for="img-1" class="nav-dot" id="img-dot-1"></label>
      <label for="img-2" class="nav-dot" id="img-dot-2"></label>
      <label for="img-3" class="nav-dot" id="img-dot-3"></label>
      <label for="img-4" class="nav-dot" id="img-dot-4"></label>
      <label for="img-5" class="nav-dot" id="img-dot-5"></label>
      <label for="img-6" class="nav-dot" id="img-dot-6"></label>
    </li>
</ul>
        </div>
    </div>
    <div id="block3"></div>
    <div id="meal_best">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="${contextPath }/images/sub02_01meal_title.gif" width="427" height="25"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <!--  베스트 상품 3개 시작  -->
<div id="block4"></div>
<div id="best">
	<c:forEach var="mProBestList" items="${mProBestList }">
		<div class="best_meal_01" style="background: #fff; left:400px; float:left; width: 380px; position: relative; margin: 20px 20px 100px 20px; border: 1px solid #ccc;" >
			   <div class="header" style="height: 250px; opacity: 0.9; "><img width="380px;" height="250px;" src="${contextPath}/images/${mProBestList.mPicture }"></div>
			   <h1 class="name" style="font-size: 1.4em; text-align: center; letter-spacing: 0.1em; text-transform: uppercase; padding: 20px;"><strong>식당명</strong> ${mProBestList.mTitle }</h1>
			   <div class="border" style="border: #EF233C 2px solid; position: relative; margin: 0 auto; width: 64px;"></div>
			   <p class="info" style="margin-top: -11px; font-weight: 700; letter-spacing: 0.1em; padding: 30px;"><strong>예약금</strong> : ${mProBestList.mPrice } 원</p>
			   <p class="info" style="margin-top: -11px; font-weight: 700; letter-spacing: 0.1em; padding: 30px;"><strong>음식 종류</strong> : ${mProBestList.mType }</p>
			   <p class="info" style="margin-top: -11px; font-weight: 700; letter-spacing: 0.1em; padding: 30px;"><strong>${mProBestList.mEx }</strong>  </p>
			   <div class="grey-border"></div>
			   <a href="mProductServlet?command=mproduct_view&mNo=${mProBestList.mNo }" class="button" style="background: #212129; color: #fff; font-weight: bold; text-transform: uppercase; display: block; text-align: center; padding: 8px 0; transition: 300ms;">상세보기</a>
		</div>
	</c:forEach>

</div>
    <!--  베스트 상품 2개 끝  -->
    

    <div id="block4"></div>
    <div id="meal">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="${contextPath}/images/sub02_01meal_title2.gif" height="25"></td>
  </tr>
</table>
</td>
  </tr>
</table>
</div>

<%--  <!-- 식당 구분 select box 시작 -->
<div id="block8"></div>
		<div></div>
     <div id="range">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="325"></td>
    <td align="center" valign="top" width="130"><strong>음식 종류 구분 :</strong></td>
    <td align="left" valign="top"><!-- <form><select name="range">
   						<option value="">전체보기</option>
    					<option value="한식">한식행</option>
                        <option value="일식">일식행</option>
                        <option value="중식">중식행</option>
                        <option value="양식">양식행</option>
                        <option value="한잔">한잔행</option></select></form> -->
    <!-- function Type_go(a){
	document.getElementById("type").value = a; 
	typeform.submit();
} -->
	<form name="typeform" action="${contextPath }/mProductServlet?command=mproduct_list">
				<input type="hidden" id="type" name="type" value="">
	</form>
	<ul>
		<li class="first"><a style="color:#5b5a5a;" href="${contextPath }/mProductServlet?command=mproduct_list">전체보기</a></li>
		<li class="second"><a style="color:#5b5a5a;" href="${contextPath }/mProductServlet?command=mproduct_list&type='한식'"> 한식</a></li>
		<li class="second"><a style="color:#5b5a5a;" href="${contextPath }/mProductServlet?command=mproduct_list&type=일식"> 일식</a></li>
		<li class="second"><a style="color:#5b5a5a;" href="${contextPath }/mProductServlet?command=mproduct_list&type='중식'"> 중식</a></li>
		<li class="second"><a style="color:#5b5a5a;" href="${contextPath }/mProductServlet?command=mproduct_list&type='양식'"> 양식</a></li>
		<li class="second"><a style="color:#5b5a5a;" href="${contextPath }/mProductServlet?command=mproduct_list&type='한잔'"> 한잔</a></li>
	</ul>
	<input type="button" value="전체보기" onclick="location.href='${contextPath }/mProductServlet?command=mproduct_list'">
    <input type="button" value="한식" onclick="location.href='${contextPath }/mProductServlet?command=mproduct_list&type=1'">
    <input type="button" value="일식" onclick="location.href='${contextPath }/mProductServlet?command=mproduct_list&type=2'">
    <input type="button" value="중식" onclick="location.href='${contextPath }/mProductServlet?command=mproduct_list&type=3'">
    <input type="button" value="양식" onclick="location.href='${contextPath }/mProductServlet?command=mproduct_list&type=4'">
    <input type="button" value="한잔" onclick="location.href='${contextPath }/mProductServlet?command=mproduct_list&type=5'">
    </td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <!-- 식당 구분 select box 끝 --> --%>

<!-- 상품 등록 버튼 시작 -->
<c:if test="${loginUser.mUserid=='admin' }">
	<img src="${contextPath }/images/sub05_03qna_questionBtn.gif" onclick="location.href='${contextPath }/mProductServlet?command=mproduct_write_form'" style="cursor:pointer;">
</c:if>
<!-- 상품 등록 버튼 끝-->

<%-- <c:choose>
	<c:when test="${mType eq '한식'}">
	
	</c:when>
	<c:when test="${mType eq '일식'}">
	
	</c:when>
	<c:when test="${mType eq '중식'}">
	
	</c:when>
	<c:when test="${mType eq '양식'}">
	
	</c:when>
	<c:when test="${mType eq '한잔'}">
	
	</c:when>
</c:choose> --%>
<!-- 상품목록 시작 -->
 <div id="block4"></div>
 <div id="container">
 <c:forEach var="mProList" items="${mProList }">
	  <div class="item">
	  	<img src="${contextPath }/jsp/upload/${mProList.mPicture }" width="412"  
	  	onmouseover='this.src="${contextPath }/jsp/upload/${mProList.mPicture2 }"' 
	  	onmouseout='this.src="${contextPath }/jsp/upload/${mProList.mPicture }"' 
	  	onclick="location.href='${contextPath }/mProductServlet?command=mproduct_view&mNo=${mProList.mNo}'" style="cursor:pointer;">
	  </div>
  </c:forEach>
  <script>
  var container = document.querySelector( '#container' );
  var msnry = new Masonry( container, {
    // options
    columnWidth: 422,
    itemSelector: '.item',
  } ); 
</script>
</div>
 <!-- 상품 목록 끝 --> 
 
 <!-- 더보기 버튼 시작-->
 <%-- <div id="block5"></div>
  <div id="more">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="40" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1300" border="0" cellspacing="0" cellpadding="0">
     <tr>
     <td width="44"></td>
     <td id="addbtn" align="center" valign="middle" background="${contextPath }/images/sub02_morebox.gif" width="1256" height="40" onclick="location.href='javascript:moreList();'" style="cursor:pointer;">더보기</td>
     </tr>
    </table></td>
  </tr>
</table> 
</td>
  </tr>
</table>
</div> --%>
 <!-- 더보기 버튼 끝 -->

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
<!-- </form> -->
</body>
</html>

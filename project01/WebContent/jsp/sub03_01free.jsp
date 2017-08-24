<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>데이트행즐겨봐!</title>
<script src="${contextPath }/js/masonry.pkgd.min.js"></script>
<script src="http://t1.daumcdn.net/tistory_admin/lib/jquery-2.1.4.min.js"></script>
<link href="${contextPath }/css/sub03_free_slider.css" rel="stylesheet" type="text/css">
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
	#block7 {height:10px;}
	#copySitemap { background-image:url(${contextPath}/images/copyright250.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer{border:0; margin:0; padding:0; }
	#footer { background-image:url(${contextPath}/images/footer.gif); background-repeat:no-repeat; background-size:100% 100%;}
	/* box-sizing은 border이 가로 세로 사이즈에 영향을 주기때문에 / width가 20%인 이유는 가로를 100px로 잡았을때 5개 메뉴에 퍼센트로 할당*/
	#copySitemap {height:250px; line-height:600px; text-align:center;}
	#list ul {overflow:hidden} /* float를 사용 시 상위 태그에 무조건 써야한다*/
	#list ul li {float:left; text-align:center; width:25px; box-sizing:border-box;}
	.select {color:#ff931e;}
	.productTitle {color:#ff931e; font-size:18px;}
	.product {color:#343434; font-size:18px;}
	#free_item table td img {display:block;}
	#free_item{left:20%; width:1266px;}
	.item {
  width: 412px;
  float: left;
  overflow: hidden;
  }
	
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
        "background":"#6799ff",
        "border-radius":"5px",
        "position":"fixed",
        "z-index":"9999" })
        .hide()
        .hover(function() { $(this).css({"background":"##de7131"}) },
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
    <td width="62" height="57" rowspan="3" align="center" valign="top"><img src="${contextPath}/images/subpage_logo.png"  onclick="location.href='${contextPath}/index.jsp'" style="cursor:pointer;"></td>
    <td width="1047" height="105" rowspan="3" align="center" valign="top"><img src="${contextPath}/images/sub03_title.gif"></td>
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
   <td align="center" valign="top" width="748"></td>
   <td align="center" valign="top"><img src="${contextPath}/images/sub03_menu_free_r.gif" width="49" height="25"></td>
   <td align="center" valign="top" width="276"></td>
   <td align="center" valign="top"><img src="${contextPath}/images/sub03_menu_charge.gif" width="48" height="25" 
   onmouseover='this.src="${contextPath}/images/sub03_menu_charge_r.gif"' 
   onmouseout='this.src="${contextPath}/images/sub03_menu_charge.gif"' 
   onclick="location.href='${contextPath }/gProductServlet?command=gproduct_list'" style="cursor:pointer;"></td>
   <td align="center" valign="top" width="781"></td>
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
			 <img src="${contextPath}/images/sub03_01free_slide06.gif"/>
        </div>
		<div class="nav">
			<label for="img-6" class="prev">&#x2039;</label>
			<label for="img-2" class="next">&#x203a;</label>
		</div>
    </li>

    <input type="radio" name="radio-btn" id="img-2" />
    <li class="slide-container">
        <div class="slide">
        <img src="${contextPath}/images/sub03_01free_slide01.gif"/>
         
        </div>
		<div class="nav">
			<label for="img-1" class="prev">&#x2039;</label>
			<label for="img-3" class="next">&#x203a;</label>
		</div>
    </li>

    <input type="radio" name="radio-btn" id="img-3" />
    <li class="slide-container">
        <div class="slide">
          <img src="${contextPath}/images/sub03_01free_slide03.gif"/>
        </div>
		<div class="nav">
			<label for="img-2" class="prev">&#x2039;</label>
			<label for="img-4" class="next">&#x203a;</label>
		</div>
    </li>

    <input type="radio" name="radio-btn" id="img-4" />
    <li class="slide-container">
        <div class="slide">
          <img src="${contextPath}/images/sub03_01free_slide04.gif"/>
        </div>
		<div class="nav">
			<label for="img-3" class="prev">&#x2039;</label>
			<label for="img-5" class="next">&#x203a;</label>
		</div>
    </li>

    <input type="radio" name="radio-btn" id="img-5" />
    <li class="slide-container">
        <div class="slide">
          <img src="${contextPath}/images/sub03_01free_slide05.gif"/>
        </div>
		<div class="nav">
			<label for="img-4" class="prev">&#x2039;</label>
			<label for="img-6" class="next">&#x203a;</label>
		</div>
    </li>

    <input type="radio" name="radio-btn" id="img-6" />
    <li class="slide-container">
        <div class="slide">
          <img src="${contextPath}/images/sub03_01free_slide02.gif"/>
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
    <div id="free">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="${contextPath}/images/sub03_01free_title.gif" width="470" height="25"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
<!-- 상품 등록 버튼 시작 -->
<c:if test="${loginUser.mUserid=='admin' }">
	<img src="${contextPath }/images/sub05_03qna_questionBtn.gif" 
	onclick="location.href='${contextPath }/fProductServlet?command=fproduct_write_form'" style="cursor:pointer;">
</c:if>
<!-- 상품 등록 버튼 끝-->

<!-- 상품목록 시작 -->
 <div id="block4"></div>
 <div id=free_item>
 <c:forEach var="fProList" items="${fProList }">
  <div class="item">
  	<img src="${contextPath }/jsp/upload/${fProList.fPicture }" width="412"  
  	onmouseover='this.src="${contextPath }/jsp/upload/${fProList.fPicture2 }"' 
  	onmouseout='this.src="${contextPath }/jsp/upload/${fProList.fPicture }"' 
  	onclick="location.href='${contextPath }/fProductServlet?command=fproduct_view&fNo=${fProList.fNo}'" style="cursor:pointer;">
  </div>
  </c:forEach>
  <script>
  var free_item = document.querySelector( '#free_item' );
  var msnry = new Masonry( free_item, {
    // options
    columnWidth: 422,
    itemSelector: '.item',
  } ); 
</script>
</div>
 <!-- 상품 목록 끝 -->
    <%-- <div id="block4"></div>
    <div id="free_item">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="323"></td>
    <td align="center" valign="top" width="1277"><table width="1277" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="386" align="right" valign="top"><img src="${contextPath}/images/sub03_01free_item01.gif" onmouseover='this.src="${contextPath}/images/sub03_01free_item01_r.gif"' onmouseout='this.src="${contextPath}/images/sub03_01free_item01.gif"' width="386" height="243"></td>
    <td width="14" height="14" rowspan="9" align="right" valign="top"></td>
    <td colspan="3" rowspan="3" align="right" valign="top"><img src="${contextPath}/images/sub03_01free_item02.gif" onmouseover='this.src="${contextPath}/images/sub03_01free_item02_r.gif"' onmouseout='this.src="${contextPath}/images/sub03_01free_item02.gif"' width="492" height="329"></td>
    <td width="14" rowspan="5" align="center" valign="top"></td>
    <td rowspan="5" align="left" valign="top"><img src="${contextPath}/images/sub03_01free_item03.gif" onmouseover='this.src="${contextPath}/images/sub03_01free_item03_r.gif"' onmouseout='this.src="${contextPath}/images/sub03_01free_item03.gif"' width="371" height="528"></td>
  </tr>
  <tr align="right">
    <td height="14" valign="top"></td>
    </tr>
  <tr align="right">
    <td rowspan="5" valign="top"><img src="${contextPath}/images/sub03_01free_item04.gif" onmouseover='this.src="${contextPath}/images/sub03_01free_item04_r.gif"' onmouseout='this.src="${contextPath}/images/sub03_01free_item04.gif"' width="386" height="321"></td>
    </tr>
  <tr>
    <td height="14" colspan="3" valign="top"></td>
    </tr>
  <tr>
    <td colspan="3" valign="top"><img src="${contextPath}/images/sub03_01free_item05.gif" onmouseover='this.src="${contextPath}/images/sub03_01free_item05_r.gif"' onmouseout='this.src="${contextPath}/images/sub03_01free_item05.gif"' width="492" height="185"></td>
    </tr>
  <tr>
    <td height="14" colspan="5" valign="top"></td>
    </tr>
  <tr>
    <td colspan="5" rowspan="3" valign="top"><img src="${contextPath}/images/sub03_01free_item07.gif" onmouseover='this.src="${contextPath}/images/sub03_01free_item07_r.gif"' onmouseout='this.src="${contextPath}/images/sub03_01free_item07.gif"' width="877" height="358"></td>
    </tr>
  <tr align="right">
    <td height="14" valign="top"></td>
    </tr>
  <tr align="right">
    <td valign="top"><img src="${contextPath}/images/sub03_01free_item06.gif" onmouseover='this.src="${contextPath}/images/sub03_01free_item06_r.gif"' onmouseout='this.src="${contextPath}/images/sub03_01free_item06.gif"' width="386" height="308"></td>
    </tr>
  <tr align="right">
    <td height="14" colspan="7" valign="top"></td>
    </tr>
  <tr>
    <td colspan="3" align="right" valign="top"><img src="${contextPath}/images/sub03_01free_item08.gif" onmouseover='this.src="${contextPath}/images/sub03_01free_item08_r.gif"' onmouseout='this.src="${contextPath}/images/sub03_01free_item08.gif"' width="512" height="423"></td>
    <td width="14" align="center" valign="top"></td>
    <td width="363" align="left" valign="top"><img src="${contextPath}/images/sub03_01free_item09.gif" onmouseover='this.src="${contextPath}/images/sub03_01free_item09_r.gif"' onmouseout='this.src="${contextPath}/images/sub03_01free_item09.gif"' width="366" height="423"></td>
    <td width="14" align="left" valign="top"></td>
    <td align="left" valign="top"><img src="${contextPath}/images/sub03_01free_item10.gif" onmouseover='this.src="${contextPath}/images/sub03_01free_item10_r.gif"' onmouseout='this.src="${contextPath}/images/sub03_01free_item10.gif"' width="371" height="423"></td>
  </tr>
</table>
</td>
    <td align="center" valign="top" width="300"></td>
  </tr>
</table>
</td>
  </tr>
</table>

    </div> --%>
   
    <div id="block6"></div>
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

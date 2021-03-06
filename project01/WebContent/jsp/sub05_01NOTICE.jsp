<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>공지사항</title>
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
	#keyimg { background-image:url(${contextPath}/images/sub05_01notice_keyimage.gif); background-repeat:no-repeat; background-size:100% 100%;}
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
	#block4 {height:6px;}
	#block5 {height:30px;}
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
	.hu{color:#a0a0a0;}
	
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

function check() {
    if (document.sf.find.value == "") {
        alert("검색어를 입력하세요.");
        document.sf.find.focus();
        return;
    }
    document.sf.submit();
}
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
    <td width="71" height="105" rowspan="3" align="center" valign="top"><img src="${contextPath}/images/subpage_logo.png" onclick="location.href='${contextPath}/index.jsp'" style="cursor:pointer;"></td>
    <td width="1047" height="105" rowspan="3" align="center" valign="top"><img src="${contextPath}/images/sub05_title.gif"></td>
    <!-- <td width="64" height="12" align="left" valign="top"><img src="${contextPath}/images/subpage_login.png" onmouseover='this.src="${contextPath}/images/subpage_login_r.png"' onmouseout='this.src="${contextPath}/images/subpage_login.png"'></td>
    <td width="46" height="12" align="left" valign="top"><img src="${contextPath}/images/subpage_join.png" onmouseover='this.src="${contextPath}/images/subpage_join_r.png"' onmouseout='this.src="${contextPath}/images/subpage_join.png"'></td> -->
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
   <td align="center" valign="top"><img src="${contextPath}/images/sub05_menu_notice_r.png" width="99" height="25"></td>
   <td align="center" valign="top" width="285"></td>
   <td align="center" valign="top"><img src="${contextPath}/images/sub05_menu_event.png" width="69" height="25" onmouseover='this.src="${contextPath}/images/sub05_menu_event_r.png"' onmouseout='this.src="${contextPath}/images/sub05_menu_event.png"' onclick="location.href='jsp/sub05_02event.jsp'" style="cursor:pointer;"></td>
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
    <td align="left" valign="top"><img src="${contextPath}/images/sub05_01notice_title.gif" width="422" height="29"></td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="range">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" width="1365"></td>
    <td align="center" valign="top" width="99">
    <c:if test="${loginUser.mUserid=='admin' }">
    <img src="${contextPath }/images/sub05_03qna_questionBtn.gif" onclick="location.href='${contextPath }/BoardServlet_notice?command=board_write_form'" style="cursor:pointer;">
    </c:if>
    </td>
    <td align="center" valign="top" width="10"></td>
    <td align="left" valign="top">
    <form action="BoardServlet_notice" method="post" name="sf">
    	<input type="hidden" value="command">
		<select name="range" onchange="sm()">
			<option value="hits">조회순</option>
			<option value="ascDate">등록순</option>
		</select>
		<script type="text/javascript">
			function sm(){
				document.sf.submit();
			}
		</script>
	</form>
	</td>
  </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="block4"></div>
    <div id="contant">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" background="${contextPath}/images/sub05_table.gif" border="0" cellspacing="0" cellpadding="0">
  <tr height="46">
 <td align="center" valign="middle" width="300"></td>
    <td align="center" valign="middle" width="203"></td>
    <td align="left" valign="middle" width="667"></td>
    <td align="center" valign="middle" width="101"></td>
    <td align="center" valign="middle" width="167"></td>
    <td align="center" valign="middle" width="102"></td>
    <td align="center" valign="middle" width="60"></td>
    <td align="center" valign="middle" width="300"></td>
  </tr>
  <c:forEach var="notice" items="${noticeList }">
	  <tr height="35">
	  	<td align="center" valign="middle" width="300"></td>
	    <td align="center" valign="middle" width="203">${notice.nNo }</td>
	    <td align="left" valign="middle" width="667"><a class="hu" href="BoardServlet_notice?command=board_view&nNo=${notice.nNo}">${notice.nTitle }</a></td>
	    <td align="center" valign="middle" width="101">${notice.mUserid }</td>
	    <td align="center" valign="middle" width="167"><fmt:formatDate value="${notice.nDate }"/></td>
	    <td align="center" valign="middle" width="102">${notice.nReadcount }</td>
	    <td align="center" valign="middle" width="60"></td>
	    <td align="center" valign="middle" width="300"></td>
	  </tr>
  </c:forEach>
</table>
</td>
  </tr>
</table>
    </div>
  <!-- 검색 시작 -->
<div id="block5"></div>
<div align="center">
	<form action="BoardServlet_notice?command=board_list" method="post" name="sf">
		게시글 검색:
		<select name="column" size="1">
			<option value="">선택하세요.</option>
			<option value="nTitle" <c:if test="${'nTitle'==column }">selected</c:if>>제목</option>
			<option value="nContext" <c:if test="${'nContext'==column }">selected</c:if>>내용</option>
			<option value="mUserid" <c:if test="${'mUserid'==column }">selected</c:if>>작성자</option>
		</select>
		<script type="text/javascript">
			document.sf.column.value="${param.column}";
		</script>
		<input type="text" name="find" size="50" value="${find}">
		<input type="button" value="검색" onClick="check()">
		<input type="hidden" name="page" value="0">
	</form>
</div>
	<!-- 검색 끝 -->
     <!--  페이지 번호 시작 -->
    <div id="block6"></div>
     <div id="list" align="center">
    <!-- <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" height="24" border="0" cellspacing="0" cellpadding="0">
 <tr> -->
		<td colspan="5">
			<c:if test="${pageNum <= 1 }">[이전]&nbsp; </c:if>
			<c:if test="${pageNum > 1 }">
				<a class="hu" href="BoardServlet_notice?command=board_list&pageNum=${pageNum-1 }&column=${param.column}&find=${find}">[이전]</a>&nbsp; 
			</c:if>
			<c:forEach var="a" begin="${startpage}" end="${endpage}">
				<c:if test="${a==pageNum}">[${a }]</c:if>
				<c:if test="${a !=pageNum}"><a class="hu" href="BoardServlet?command=board_list&pageNum=${a }&column=${param.column}&find=${find}">[${a }]</a></c:if>
			</c:forEach>
			<c:if test="${pageNum >= maxpage}">[다음]</c:if>
			<c:if test="${pageNum < maxpage}">
				<a class="hu" href="BoardServlet_notice?command=board_list&pageNum=${pageNum+1}&column=${param.column}&find=${find}">[다음]</a>
			</c:if>
		<!-- </td>	
	</tr>
</table>
</td>
  </tr>
</table> -->
    </div>
    <!--  페이지 번호 끝  -->
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

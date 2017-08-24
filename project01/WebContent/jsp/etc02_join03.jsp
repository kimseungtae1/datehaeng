<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>데이트행_회원가입</title>
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
	#keyimg { background-image:url(${contextPath}/images/etc02_keyimg.gif); background-repeat:no-repeat; background-size:100% 100%;}
	body {font-family: 'Nanum Gothic', sans-serif;}
	* { margin:0; padding:0; font-family: 'Nanum Gothic', sans-serif; font-size:15px;}
	a {color:#fff; text-decoration:none;}
	a:hover {color:#ff931e; text-decoration:underline;}
	li {list-style:none;}
	#wrap {margin:0 auto;font-family: 'Nanum Gothic', sans-serif;} /*항상가운데로 오게*/
	#header {border:0px height:61px; text-align:center;} /* line-height 가로로 가운데 정렬*/
	#block1 {height:20px;}
	#block2 {height:20px;}
	#block3 {height:62px;}
	#block4 {height:28px;}
	#block5 {height:62px;}
	#block6 {height:23px;}
	#block7 {height:38px;}
	#copySitemap { background-image:url(${contextPath}/images/copyright250.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer { background-image:url(${contextPath}/images/footer.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer{ height:174px; text-align:center; border:0; margin:0; padding:0; }
	/* box-sizing은 border이 가로 세로 사이즈에 영향을 주기때문에 / width가 20%인 이유는 가로를 100px로 잡았을때 5개 메뉴에 퍼센트로 할당*/
	#keyimg {height:900px; line-height:600px; text-align:center;}
	#copySitemap {height:250px; line-height:600px; text-align:center;}
	#list ul {overflow:hidden} /* float를 사용 시 상위 태그에 무조건 써야한다*/
	#list ul li {float:left; text-align:center; width:25px; box-sizing:border-box;}
	.select {color:#ff931e;}
	.join {font-size:35px; color:#ff931e; font-weight:bold;}
	.joincheck {font-weight:bold; font-size:16px;}
	.tab {border-style:solid; border-color:#cccccc; border-width:1px; font-size:16px; font-weight:bold;}
	.tab2 {border-style:solid; border-color:#cccccc; border-width:1px;}
	
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
</script>
</head>

<body>
<form action="JoinServlet3" method="post" name="frm">
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
    <td width="1047" height="105" rowspan="3" align="center" valign="top"><img src="${contextPath}/images/etc02_title.gif"></td>
    <td width="47" height="12" align="left" valign="top"><img src="${contextPath}/images/subpage_login.png" onmouseover='this.src="${contextPath}/images/subpage_login_r.png"' onmouseout='this.src="${contextPath}/images/subpage_login.png"'></td>
    <td width="57" height="12" align="right" valign="top"><img src="${contextPath}/images/subpage_join.png" onmouseover='this.src="${contextPath}/images/subpage_join_r.png"' onmouseout='this.src="${contextPath}/images/subpage_join.png"'></td>
    <td width="300" height="105" rowspan="3" align="center" valign="top"></td>
  </tr>
  <tr>
    <td height="10" colspan="2" align="center" valign="top"></td>
    </tr>
  <tr>
    <td width="64" height="16" align="left" valign="top"></td>
    <td width="46" height="16" align="right" valign="top"><%-- <img src="${contextPath}/images/sub_addMenu_r.png"> --%></td>
    </tr>
</table>
</td>
  </tr>
</table>
    </div>
    <div id="keyimg">
    </div>
<div id="block3"></div>
    <div id="join">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1000" border="0" cellspacing="0" cellpadding="0">
    <tr><td align="center" valign="top"><table width="900" border="0" cellspacing="0" cellpadding="0">
    <tr>
    <td height="142" align="left" valign="middle"><img src="${contextPath}/images/join_01.gif" width="260" height="142"></td>
    <td width="91" height="142"></td>
    <td height="142" align="left" valign="middle"><img src="${contextPath}/images/join_02.gif" width="227" height="142"></td>
    <td width="92" height="142"></td>
    <td height="142" align="left" valign="middle"><img src="${contextPath}/images/join_03_r.gif" width="227" height="142"></td>
    </tr></table></td></tr>
  <tr>
    <td align="center" valign="top"><table width="800" border="0" cellspacing="0" cellpadding="0">
    <tr><td height="50" colspan="4"></td></tr>
    <tr><td height="1" colspan="4"><img src="../승태지림/${contextPath}/images/join_line.gif" width="800" height="1"></td></tr>
  <tr>
    <td height="50" colspan="4" align="center" valign="middle" class="join">WELCOME</td>
    </tr>
    <tr><td height="1" colspan="4"><img src="../승태지림/${contextPath}/images/join_line.gif" width="800" height="1"></td></tr>
    <tr><td height="50" colspan="4"></td></tr>
    <tr><td height="50" colspan="4" align="center" valign="middle" class="joincheck">가입을 축하합니다<p>
    가입정보를 한번 더 확인해주시기 바랍니다.</td></tr>
    <tr><td height="30" colspan="4"></td></tr> 
  <tr>
  <td width="300"></td>
    <td width="130" height="40" align="left" valign="middle">아이디</td>
    <td width="370" height="36" colspan="3">${param.mUserid }</td>
  </tr>
  <tr>
  <td width="300"></td>
    <td width="130" height="40" align="left" valign="middle">이름</td>
    <td width="370" height="40">${param.mName }</td>
  </tr>
  
  <tr>
  <td width="300"></td>
    <td width="130" height="40" align="left" valign="middle">생년월일</td>
    <td width="370" height="40" colspan="3">${param.mBirth }</td>
  </tr>
   <tr>
   <td width="300"></td>
    <td width="130" height="40" align="left" valign="middle">휴대전화</td>
    <td width="370" height="40" colspan="3">${param.mPhone }</td>
  </tr>
  <tr>
  <td width="300"></td>
    <td width="130" height="40" align="left" valign="middle">주소</td>
    <td width="370" height="40" colspan="3">${param.mAddress }</td>
  </tr>
  <tr>
  <td width="300"></td>
    <td width="130" height="40" align="left" valign="middle">성별</td>
    <td width="370" height="40" colspan="3">${param.mGender }</td>
  </tr>
  <tr>
  <td width="300"></td>
    <td width="130" height="40" align="left" valign="middle">이메일</td>
    <td width="370" height="40" colspan="3">${param.mEmail }</td>
  </tr>
 <tr>
    <td height="50" colspan="4" align="center" valign="bottom"><input type="submit" value="확인">
    							<input type="reset" value="취소"></td>
                                
    </tr>
    <tr>
            	<td height="30"></td></tr>
</table>
</td>
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
</form>
</body>
</html>

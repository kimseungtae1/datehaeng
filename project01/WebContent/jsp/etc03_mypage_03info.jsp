<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>마이페이지_회원정보수정</title>
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
	#keyimg { background-image:url(${contextPath}/images/etc03_03memberInfo_keyimage.gif); background-repeat:no-repeat; background-size:100% 100%;}
	body {font-family: 'Nanum Gothic', sans-serif;}
	* { margin:0; padding:0; font-family: 'Nanum Gothic', sans-serif; font-size:15px;}
	a {color:#fff; text-decoration:none;}
	a:hover {color:#ff931e; font-size:15px; font-weight:bold; text-decoration:none;}
	li {list-style:none;}
	#wrap {margin:0 auto;font-family: 'Nanum Gothic', sans-serif;} /*항상가운데로 오게*/
	#header {border:0px height:61px; text-align:center;} /* line-height 가로로 가운데 정렬*/
	#block1 {height:10px;}
	#block2 {height:20px;}
	#block3 {height:62px;}
	#block4 {height:16px;}
	#block5 {height:30px;}
	#block6 {height:58px;}
	#block7 {height:73px;}
	#copySitemap { background-image:url(${contextPath}/images/copyright250.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer { background-image:url(${contextPath}/images/footer.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer{ height:174px; text-align:center; border:0; margin:0; padding:0; }
	#copySitemap {height:250px; line-height:600px; text-align:center;}
	#list ul {overflow:hidden} /* float를 사용 시 상위 태그에 무조건 써야한다*/
	#list ul li {float:left; text-align:center; width:25px; box-sizing:border-box;}
	.select {color:#ff931e;}
	#cart {color:#ff931e; font-size:18px;}
	#price {font-size:24px;}
	#total_text {color:#404040; font-size:18px; font-family:"나눔바른고딕 Light"; font-weight:bold;}
	#total_text2 {color:#404040; font-size:24px; font-family:"나눔바른고딕 Light"; font-weight:bold;}
	#total {color:#404040; font-size:28px;}
	#total2 {color:#ff931e; font-size:25px;}
	#ps {font-size:18px; color:#F00;}
	
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
<form action="${contextPath}/memberUpdate.do" method="post" name="frm">
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
    <td width="71" height="105" rowspan="3" align="center" valign="top"><img src="${contextPath}/images/subpage_logo.png" onclick="location.href='${contextPath}/index.jsp'" style="cursor:pointer;"></td>
    <td width="1047" height="105" rowspan="3" align="center" valign="top"><img src="${contextPath}/images/mypage_title.gif"></td>
    <c:choose>
  	<c:when test="${empty loginUser }">
  		<td width="47" height="12" align="left" valign="top"><img src="${contextPath}/images/subpage_login.png" onmouseover='this.src="${contextPath}/images/subpage_login_r.png"' onmouseout='this.src="${contextPath}/images/subpage_login.png"' onclick="location.href='${contextPath}/login.do'" style="cursor:pointer;"></td>
    	<td width="57" height="12" align="right" valign="top"><img src="${contextPath}/images/subpage_join.png" onmouseover='this.src="${contextPath}/images/subpage_join_r.png"' onmouseout='this.src="${contextPath}/images/subpage_join.png"' onclick="location.href='${contextPath}/join.do'" style="cursor:pointer;"></td>  
  	</c:when>
  	<c:otherwise>
  		<td width="100"><img src="${contextPath}/images/index_logout_r.png" onmouseover='this.src="${contextPath}/images/index_logout_r.png"' onmouseout='this.src="${contextPath}/images/index_logout_r.png"' onclick="location.href='${contextPath}/logout.do'" style="cursor:pointer;"></td>
	    <td width="110"><img src="${contextPath}/images/index_mypage_r.png" onmouseover='this.src="${contextPath}/images/index_mypage_r.png"' onmouseout='this.src="${contextPath}/images/index_mypage_r.png"' onclick="location.href='${contextPath}/MypageServlet'" style="cursor:pointer;"></td>
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
   <td align="center" valign="top" width="881"></td>
   <td align="center" valign="top"><img src="${contextPath}/images/mypage_03title.gif" width="138" height="25"></td>
   <td align="center" valign="top" width="881"></td>
  </tr>
</table>
</td>
  </tr>
</table>
  </div>
  	<div id="block2"></div>
    <div id="keyimg">
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="785" height="360" rowspan="3" align="center" valign="top"></td>
    <td height="208" colspan="5" align="center" valign="top"></td>
    <td width="790" height="360" rowspan="3" align="center" valign="top"></td>
  </tr>
  <tr>
 	 <td width="59" height="96" align="center" valign="top"><img src="${contextPath}/images/etc03_03memberInfo_reserveBtn2.png" onmouseover='this.src="${contextPath}/images/etc03_03memberInfo_reserveBtn2_r.png"' onmouseout='this.src="${contextPath}/images/etc03_03memberInfo_reserveBtn2.png"' width="59" height="96" onclick="location.href=''" style="cursor:pointer;"></td>
    <td width="50" height="96" align="center" valign="top"></td>
    <td width="89" height="96" align="center" valign="top"><img src="${contextPath}/images/etc03_03memberInfo_InfoBtn2_r.png" width="89" height="96"></td>
    <td width="54" height="96" align="center" valign="top"></td>
   <td width="63" height="96" align="center" valign="top"><img src="${contextPath}/images/etc03_01reserve_carBtn2.png" onmouseover='this.src="${contextPath}/images/etc03_01reserve_carBtn2_r.png"' onmouseout='this.src="${contextPath}/images/etc03_01reserve_carBtn2.png"' width="63" height="96" onclick="location.href='${contextPath}/CartViewServlet?command=cart_list'" style="cursor:pointer;"></td>
    </tr>
  <tr>
    <td height="56" colspan="5" align="center" valign="top"></td>
    </tr>
</table>
</td>
  </tr>
</table>
  </div>
    <div id="block3"></div>
    <div id="mypage_title">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="left" valign="top"><img src="${contextPath}/images/etc03_mypage_03info_title.gif" width="478" height="29"></td>
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
    <td align="center"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="300" height="96"></td>
    <td width="1300" height="96" align="center" background="${contextPath}/images/etc03_mypage_02cart_box01.gif"><table width="1300" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="41" align="center" valign="bottom">저희 <span id="cart"><strong>데이트행</strong></span> 을 이용해주셔서 감사합니다.</td>
  </tr>
  <tr>
    <td height="16"></td>
  </tr>
  <tr>
    <td height="39" align="center" valign="top"><strong>${loginUser.mUserid }</strong> 님은, <span id="cart">[일반회원]</span> 회원이십니다.</td>
  </tr>
</table>
</td>
    <td width="300" height="96"></td>
  </tr>
</table>
<table width="1300" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="33"></td>
  </tr>
</table>
</td></tr></table>


<div id="contant2">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top"><table width="1900" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center">
<table width="1300" height="448" border="0" cellspacing="0" cellpadding="0" background="${contextPath}/images/etc03_mypage_03info_box01.gif">
  <tr>
    <td colspan="3" width="1200" height="36" valign="top" align="left">기본정보</td>
    <td width="100" height="36" valign="top"><strong id="ps">*</strong>필수입력사항</td>
  </tr>
  <tr>
    <td width="10" height="25" align="left"></td>
    <td width="159" height="25" align="left">이름 <strong id="ps">*</strong></td>
    <td colspan="2" width="1131"><input type="text" size="20" value="${loginUser.mName }"></td>
    </tr>
  <tr>
    <td colspan="4" height="20" width="1300"></td>
    </tr>
   <tr>
    <td width="10" height="25" align="left"></td>
    <td width="159" height="25" align="left">생년월일 <strong id="ps">*</strong></td>
    <td colspan="2" width="1131"><input type="text" size="20" value="${loginUser.mBirth }"></td>
    </tr>
  <tr>
    <td colspan="4" height="20" width="1300"></td>
    </tr>
     <tr>
    <td width="10" height="25" align="left"></td>
    <td width="159" height="25" align="left">성별<strong id="ps">*</strong></td>
    <td colspan="2" width="1131">
	 <c:if test="${loginUser.mGender=='남자' }">
     	<label><input type="radio" name="sex" value="Y" checked="checked" /> 남자</label>
     	<label><input type="radio" name="sex" value="N" />여자</label></td>
     </c:if>
     <c:if test="${loginUser.mGender=='여자' }">
     	<label><input type="radio" name="sex" value="Y" /> 남자</label>
     	<label><input type="radio" name="sex" value="N" checked="checked"/>여자</label></td>
     </c:if>
    </tr>
  <tr>
    <td colspan="4" height="20" width="1300"></td>
    </tr>
     <!-- <tr>
    <td width="10" height="25" align="left"></td>
    <td width="159" height="25" align="left">아이디<strong id="ps">*</strong></td>
    <td colspan="2" width="1131"><input type="text" size="20"></td>
    </tr> -->
  <tr>
    <td colspan="4" height="20" width="1300"></td>
    </tr> <tr>
    <td width="10" height="25" align="left"></td>
    <td width="159" height="25" align="left">비밀번호<strong id="ps">*</strong></td>
    <td colspan="2" width="1131"><input type="password" size="30" value="${loginUser.mPw }"> 
      <span class="stress">(영문 대소문자 / 숫자 / 특수문자 4~30)</td>
    </tr>
  <tr>
    <td colspan="4" height="20" width="1300"></td>
    </tr>
     <tr>
    <td width="10" height="25" align="left"></td>
    <td width="159" height="25" align="left">비밀번호 확인<strong id="ps">*</strong></td>
    <td colspan="2" width="1131"><input type="password" size="30"></td>
    </tr>
  <tr>
    <td colspan="4" height="20" width="1300"></td>
    </tr>
     <tr>
    <td width="10" height="25" align="left"></td>
    <td width="159" height="25" align="left">주소 <strong id="ps">*</strong></td>
    <td colspan="2" width="1131"><input type="text" size="50" value="${loginUser.mAddress }"></td>
    </tr>
  <tr>
    <td colspan="4" height="20" width="1300"></td>
    </tr>
     <tr>
    <td width="10" height="25" align="left"></td>
    <td width="159" height="25" align="left">휴대전화 <strong id="ps">*</strong></td>
    <!-- <td colspan="2" width="1131"><select>
    				<option>선택</option>
                    <option>010</option>
                    <option>011</option>
                    <option>016</option>
                    <option>017</option></select> - <input type="text" size="5"> - 
                    <input type="text" size="5"></td> -->
    <td><input type="text" size="30" value="${loginUser.mPhone }"></td>
    </tr>
  <tr>
    <td colspan="4" height="20" width="1300"></td>
    </tr>
     <tr>
    <td width="10" height="25" align="left"></td>
    <td width="159" height="25" align="left">이메일 <strong id="ps">*</strong></td>
    <!-- <td colspan="2" width="1131"><input type="text" size="20"> @ <input type="text" size="20"> 수신여부
    				<label><input type="radio" name="mail" value="Y" /> 동의</label>
     <label><input type="radio" name="mail" value="N" checked="checked" />거부</label></td> -->
     <td><input type="text" size="35" value="${loginUser.mEmail }"> 
     <label><input type="radio" name="mail" value="Y" /> 동의</label>
     <label><input type="radio" name="mail" value="N" checked="checked" />거부</label></td>
    </tr>
</table>
<table width="1300" border="0" cellspacing="0" cellpadding="0" background="${contextPath}/images/etc03_mypage_03info_box02.gif">
  <tr>
    <td colspan="4" width="1300" height="17"></td>
    </tr>
  <tr>
    <td width="1072" height="28"></td>
    <td>
    	<%-- <img src="${contextPath}/images/etc03_mypage_03info_button01.gif" onmouseover='this.src="${contextPath}/images/etc03_mypage_03info_button01_r.gif"' onmouseout='this.src="${contextPath}/images/etc03_mypage_03info_button01.gif"' onclick="location.href=''" style="cursor:pointer;"> --%>
    	<%-- <a href="javascript:document.frm.onsubmit()"><img src="${contextPath}/images/etc03_mypage_03info_button01.gif" onmouseover='this.src="${contextPath}/images/etc03_mypage_03info_button01_r.gif"' onmouseout='this.src="${contextPath}/images/etc03_mypage_03info_button01.gif"' style="cursor:pointer;"></a> --%>
    	<input type="image" src="${contextPath}/images/etc03_mypage_03info_button01.gif" alt="Submit">
    </td>
    <td width="20" height="28"></td>
    <td><img src="${contextPath}/images/etc03_mypage_03info_button02.gif" onmouseover='this.src="${contextPath}/images/etc03_mypage_03info_button02_r.gif"' onmouseout='this.src="${contextPath}/images/etc03_mypage_03info_button02.gif"' onclick="location.href=''" style="cursor:pointer;"></td>
  </tr>
</table>

</table>

</td>
</tr></table>
</td>
  </tr>
</table>
</div>
  <div id="block5"></div>
    
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
        <td width="62" height="63" align="left" valign="top"><a href=""><img src="${contextPath}/images/footer_logo.png" width="62" height="63"></a></td>
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
</div>
</form>
</body>
</html>

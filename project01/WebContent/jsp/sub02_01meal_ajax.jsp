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
	#keyimg { background-image:url(${contextPath}/images/sub02_01meal_keyimage.gif); background-repeat:no-repeat; background-size:100% 100%;}
	body {font-family: 'Nanum Gothic', sans-serif;}
	* { margin:0; padding:0; font-family: 'Nanum Gothic', sans-serif; font-size:15px;}
	a {color:#5b5a5a; text-decoration:none;}
	a:hover {color:#ff931e; text-decoration:underline;}
	li {list-style:none;}
	#wrap {margin:0 auto;font-family: 'Nanum Gothic', sans-serif;} /*항상가운데로 오게*/
	#header {border:0px height:61px; text-align:center;} /* line-height 가로로 가운데 정렬*/
	#block1 {height:10px;}
	#block2 {height:20px;}
	#block3 {height:62px;}
	#block4 {height:26px;}
	#block5 {height:30px;}
	#block6 {height:58px;}
	#block7 {height:73px;}
	#block8 {height:10px;}
	#block9 {height:100px;}
	#copySitemap { background-image:url(${contextPath}/images/copyright.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer { background-image:url(${contextPath}/images/footer.gif); background-repeat:no-repeat; background-size:100% 100%;}
	#footer{ height:174px; text-align:center; border:0; margin:0; padding:0; }
	/* box-sizing은 border이 가로 세로 사이즈에 영향을 주기때문에 / width가 20%인 이유는 가로를 100px로 잡았을때 5개 메뉴에 퍼센트로 할당*/
	#keyimg {height:900px; line-height:600px; text-align:center;}
	#copySitemap {height:900px; line-height:600px; text-align:center;}
	#list ul {overflow:hidden} /* float를 사용 시 상위 태그에 무조건 써야한다*/
	#list ul li {float:left; text-align:center; width:25px; box-sizing:border-box;}
	.select {color:#ff931e;}
	.productTitle {color:#ff931e; font-size:18px;}
	.product {color:#343434; font-size:18px;}
	.bestInfo{
	width:444;
	height:624;
	left:790px;
	top:300px;
	position:absolute;
	animation-duration: 4s;
  animation-name: slidein;}
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
		left:20.1%;
		width:1266px;}
  @keyframes slidein {
  from {
    margin-left: 100%;
    width: 300%; 
  }

  to {
    margin-left: 0%;
    width: 20%;
  }
  /*베스트상품 css 시작*/
  #best{position: relative;}
  .best_meal_01 {
  background: #fff;
  max-width: 400px;
  position: relative;
  margin: 20px auto;
  box-shadow: 0px 0px 40px 10px #212129;
}
.best_meal_01 .header {
  min-height: 250px;
  opacity: 0.9;
  background-size: cover;
}
.best_meal_01 .name {
  font-size: 1.4em;
  text-align: center;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  padding: 20px;
}
.best_meal_01 .border {
  border: #EF233C 2px solid;
  position: relative;
  margin: 0 auto;
  width: 64px;
}
.best_meal_01 .info {
  margin-top: -11px;
  font-weight: 700;
  letter-spacing: 0.1em;
  padding: 30px;
}
.best_meal_01 .button {
  background: #212129;
  color: #fff;
  font-weight: bold;
  text-transform: uppercase;
  display: block;
  text-align: center;
  padding: 8px 0;
  transition: 300ms;
}
.best_meal_01 .button:hover {
  background: #A3031D;
  transition: 300ms;
}
/*베스트상품 css 끝*/

</style>
<script src="http://t1.daumcdn.net/tistory_admin/lib/jquery-2.1.4.min.js"></script>
</head>

<body>

<!-- 상품목록 시작 -->
 <div id="block4"></div>
 <div id="container">
 <c:forEach var="mProList" items="${mProList }" varStatus="status">
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
 <div id="block5"></div>
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
</div>
 
</body>
</html>

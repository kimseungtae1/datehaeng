<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--#18] IdCheck서블릿에서 왔다! userid, result 를 들고 왔다! --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 중복 체크</title>
<script type="text/javascript" src="js/member.js?ver=1"></script>
</head>
<body>
	<h2>아이디 중복 확인</h2>
	<form action="idCheck.do" method="get" name="frm"><%-- 중복체크버튼눌러서 들어온 창 안에서 다른 아이디를 중복체크 하면 확인하기위해 idCheck.do를 적어준다. --%>
		아이디<input type="text" name="mUserid" value="${mUserid }">
		
		<input type="submit" value="중복 체크"><br>
		
		<%-- 만약 result가 1이면 이미 사용중인 아이디 --%>
		<c:if test="${result == 1 }">
			<script type="text/javascript">
				//window.open()으로 열어 놓은 join.jsp 태그 중에 userid를 찾아서
				//	value 값을 지워라!(엄마글은 window이고 그것의 엄마글은 join.jsp, 자식글을 부를때는 opener사용!)
				opener.document.frm.mUserid.value="";
			</script>
			${mUserid }는 이미 사용 중인 아이디 입니다. 
		</c:if>
		
		<%-- 만약 result가 -1이면 사용 가능한 아이디 --%>
		<c:if test="${result == -1 }">
			${mUserid }는 사용 가능한 아이디 입니다. 
				<%--#19] 사용 버튼을 누르면 자바스크립트 가자! --%>
			<input type="button" value="사용" class="cancel" onclick="idok('${mUserid}')"/> <%--userid 값을 가지고 idok()함수로 넘어가겠다! --%>
		</c:if>
		
	</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<%-- #3] LoginServlet.java 에서 넘어옴 --%>
<h2>로그인</h2>
<%--#5-3] 로그인 처리하는 servlet으로 간다 --%>
<%--#11-1] 회원가입을 처리하자! button을 누른다 --%>
<%--#26] 회원가입하고 또 왔다! --%>
<form action="login.do" method="post" name="frm"> <%--스크립트, css요소에 사용될 예정 --%>
	<table>
		<tr>
			<td>아이디</td>						<%--#26] 마치고 오면 더이상 빈칸이 아니다. id를 볼수있다. sessionScope에서 userid가 넘어왔다. --%>
			<td><input type="text" name="mUserid" value="${mUserid }"> </td>
		</tr>
		<tr>
			<td>암호</td>
			<td><input type="password" name="mPw"> </td>
		</tr>
		<tr>
			<td colspan="2" align="center">		<%-- #4] onclick!! 데이터 유효성 검토 js파일! 
													#5-2]js페이지 이어서,,, action으로 가자!--%>
													
				<%--#27] 로그인 하러 가자!  로그인서블릿 doPost로 이동 --%>
				<input type="submit" value="로그인" onclick="return loginCheck()">
				&nbsp;&nbsp;
				<input type="reset" value="취소">
				&nbsp;&nbsp;
				<%-- #11-2] 회원가입! #12]JoinServlet로 가자--%>
				<input type="button" value="회원가입" onclick="location.href='join.do'">
			</td>
		</tr>
		<%-- 로그인여부 메시지 보여주는 창 --%>
		<tr>
			<td colspan="2">${message }</td>
		</tr>
	</table>
	
</form>
</body>
</html>
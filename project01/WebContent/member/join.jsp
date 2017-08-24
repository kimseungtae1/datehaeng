<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- #13] JoinServlet에서 보냈음!! --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입 페이지</title>
<script type="text/javascript" src="js/member.js?ver=1"></script>
</head>
<body>
<h2>회원 가입</h2>
'*' 표시 항목은 필수 입력 항목입니다.

<%--#22-2] submit 쓰기하러 가자! --%>
<form action="join.do" method="post" name="frm">
	<table>
		<tr>
			<td>아이디</td>
			<td>
				<input type="text" name="mUserid" size="20" id="mUserid">*
				<input type="hidden" name="reid" size="20">		<%--#14] 아이디 체크하러 가기! --%>
				<input type="button" value="중복체크" onclick="idCheck()">
										<%-- #20] 스크립트에서 돌아왔다. --%>
			</td>
		</tr>
		<tr>
			<td>암호</td>
			<td><input type="password" name="mPw" size="20">*</td>
		</tr>
		<tr height="30">
			<td width="80">암호 확인</td>
			<td><input type="password" name="mPwCheck" size="20">*</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="mName" size="20">*</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type="text" name="mBirth" size="20">*</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="mPhone" size="20"></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input type="text" name="mAddress" size="20"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<input type="radio" name="mGender" value="0" checked="checked">남
				<input type="radio" name="mGender" value="1">여
			</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="text" name="mEmail" size="20"></td>
		</tr>
		<tr>
			<td>등급</td>
			<td>
				<input type="radio" name="admin" value="0" checked="checked">일반회원
				<input type="radio" name="admin" value="1">관리자
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">					<%-- #21-1] 유효성 검토 스크립트로 이동 --%>
				<input type="submit" value="확인" onclick="return joinCheck()">
															<%-- #22-1] action으로가서 페이지이동 --%>
				&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소">
			</td>
		</tr>
		<tr>
			<td colspan="2">${message }</td>
		</tr>
	</table>
</form>

</body>
</html>
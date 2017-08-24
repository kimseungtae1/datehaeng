<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/board.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
	<div id="wrap" align="center">
		<h1>게시글 수정</h1>
		<form name="frm" method="post" action="BoardServlet">
			<input type="hidden" name="command" value="board_update">
			<input type="hidden" name="qNo" value="${board.qNo}">
			<table>
				<tr>
					<th>작성자</th>
					<td><input type="hidden" size="12" name="mUserid"
						value="${loginUser.mUserid}"> * 필수</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="qTitle" value="${board.qTitle}"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="15" cols="70" name="qContext" value="${board.qContext}"></textarea></td>
				</tr>
			</table>
			<br>
			<br> <input type="submit" value="등록"
						onclick="return boardCheck()"> 
				<input type="reset"	value="다시 작성">
				<input type="button" value="목록"
					onclick="location.href='BoardServlet?command=board_list'">
		</form>
	</div>
</body>
</html>
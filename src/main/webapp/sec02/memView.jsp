<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>title</title>
	</head>
	<body>
		<h3>회원 정보 조회</h3>
		<table border="1">
		<tr align='center' bgcolor='pink'><td>아이디</td><td>비밀번호</td><td>이름</td>
																	<td>이메일</td><td>가입일</td><td>삭제</td></tr>
			<c:forEach var="mem" items="${memList }">
				<tr>
				<td>${mem.id }</td>
				<td>${mem.pwd }</td>
				<td>${mem.name }</td>
				<td>${mem.email }</td>
				<td>${mem.joinDate }</td>
				<td><a href='/Servlet01/memberDelete?id="id"'>삭제</a></td>
				<tr>
			</c:forEach>
	</table>
	</body>
</html>

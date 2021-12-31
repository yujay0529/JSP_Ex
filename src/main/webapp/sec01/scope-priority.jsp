<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>scope 우선순위</title>
	</head>
	<body>
		<%
			//적는 순서 상관 없음
			// 우선순위는 request 가장 높음, 다음으로 sesssion, application 순
			session.setAttribute("name", "세션");
			request.setAttribute("name", "request");
			application.setAttribute("name", "애플리케이션");		
		%>
		<jsp:forward page="scope-priority-result.jsp" />
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>포메팅 태그 라이브러리</title>
	</head>
	<body>
		<h2>format Number : 숫자포메팅</h2>
		<c:set var = "price" value="1000000"/>
		
		<fmt:formatNumber type = "number" value="${price }" var ="priceNumber"/>
		일반 숫자로 표현 시 :${priceNumber }<br>
		
		통화로 표현 시 : 	<fmt:formatNumber type = "currency" currencySymbol ="\\" value="${price }" groupingUsed="true"/><br>
		<!--천 단위 구분 표시 groupingUsed="true" ㄷ또는 false/true 디폴트 -->
		퍼센트로 표현 시 : 	<fmt:formatNumber type = "percent"  value="${price }" groupingUsed="true"/><br>
		
		<h2> formatDate : 날짜 포메팅</h2>
		<c:set var = "now" value="<%=new Date() %>"/>
		<fmt:formatDate type = "date" value ="${now }" /><br>
		<fmt:formatDate type = "date" value ="${now }" dateStyle="full"/><br>
		<fmt:formatDate type = "date" value ="${now }" dateStyle="short"/><br>
		
		<fmt:formatDate type = "time" value ="${now }"/><br>
		<fmt:formatDate type = "both" value ="${now }"/><br>
		<fmt:formatDate type = "both" value ="${now }" dateStyle="full" timeStyle="full"/><br>
		<fmt:formatDate  value ="${now }" pattern="yyyy-MM-dd :hh:mm:ss"/><br>
		
		한국현재시간 : <fmt:formatDate type = "both" value ="${now }" dateStyle="full" timeStyle="full"/><br>
		
		뉴욕현재시간 : <fmt:timeZone value ="GMT-5" >
				<fmt:formatDate type = "both" value ="${now }" dateStyle="full" timeStyle="full"/><br>
				</fmt:timeZone>
		<br>
	</body>
</html>
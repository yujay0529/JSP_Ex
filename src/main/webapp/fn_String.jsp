<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>문자열 함수 태그 라이브러리</title>
	</head>
	<body>
	<c:set var ="title1" value =" hello kfjdslkjfiqkdf"/>
		<c:set var ="title2" value =" 쇼핑몰중심 어쩌구"/>
		<c:set var ="str" value ="중심"/>
		<h3>여러가지 문자열 함수 가능</h3>
		title1 : ${title1 }<br>
		title2: ${title2 }<br>
		str : ${str }<br><br>
		
		title1 :${title1 }의 문자열 길이 : ${fn:length(title1) }<br>
		title1 : 3번쨰 ~ 5번쨰 문자열 추출 : ${fn:substring(title1, 2, 5) }<br>
		공백을/로 변환 :${fn:replace(title1, "","/") }<br>
		title1에 '중심'단어 표함 여부 :${fn:contains(title1,str)}<br>
		title2에 '중심'단어 표함 여부 :${fn:contains(title2,str)}
		
	</body>
</html>
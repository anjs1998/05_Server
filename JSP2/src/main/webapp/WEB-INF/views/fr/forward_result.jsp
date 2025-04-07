<%-- c: 자주 사용하는 Java 코드 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- fn : 컬렉션/문자열 관련 기능 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>request scope 객체를 이용해서 전달받은 값</h3>
	<ul>
		<li>forward 입력 1: ${param.forwardInput1 }</li>
		<li>forward 입력 2: ${param.forwardInput2 }</li>
		<li>str : ${str}</li>
	</ul>
	
	<h3> session scope로 전달된 값 : ${sessionNum }</h3>
	<h3 id="print"></h3>
	<script>
		// 현재 url 경로 js에서 얻는 방법 : location.pathname
		document.querySelector("#print").innerText
		=location.pathname;
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet/JSP 범위별 내장 객체</title>
</head>
<body>

	<h3>범위별 객체에 세팅된 값(속성)얻어오기</h3>
	<pre>
		-제출된 파라미터 얻어오는 EL : \${param.key }
		
		-범위별 객체에 세팅된 값 얻어오는 EL
		1) \${000Scope.key } ex) \${requestScope.key }
		
		2) \${key }
		-> 좁은 범위 객체부터 탐색하여 일치하는 key가 있으면 얻어온다.
		
	</pre>


	<%
		//page scope 객체에 값 세팅
		pageContext.setAttribute("pageValue","page scope 객체에 세팅한 값");
	%>
	
	<p>page scope ; ${pageValue }</p>
	<p>request scope : ${requestScope.requestValue }</p>
	<p>session scope : </p>
	<p>application scope : ${applicationScope.applicationValue }</p>
	
	<a href="/el/check">객체 범위 확인페이지로 이동</a>
	<hr>
	<h1> 범위별 객체 우선순위 확인</h1>
	<%
		pageContext.setAttribute("menu", "짬짜면(page)");
	%>
	
	<h3>menu : ${menu}</h3>
	
	<h3>원하는 scope의 세팅된 값 얻어오기</h3>
	<p>${pageScope.menu}</p>
	<p>${requestScope.menu}</p>
	<p>${sessionScope.menu}</p>
	<p>${applicationScope.menu}</p>
	
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${todo.todoTitle} 수정 페이지</title>
</head>
<body>
	<h1>${sessionScope.loginMember} </h1>
	<h4>할 일 수정</h4>
	<%--
	/todo/update - POST 방식 요청
		-> UpdateServlet 클래스에 doPost() 오버라이딩
	 --%>
	<form action="/todo/update" method = "post">
		<div>
			제목 : <input type = "text" name = "title" value="${todo.todoTitle}" >
		</div>
		
		<div>
			<textarea name = "detail" rows = "3" cols = "50" placeholder="상세 내용..">
				${todo.todoDetail}</textarea>
		</div>
		
		<!-- todoNo도 수정 요청시 파라미터로 보내야한다.
		어떤 todoNo를 가진 행을 수정하고자 하는것인지
		SQL의 WHERE(조건식)에서 이용해야 하기 때문임.
		
		param. -> url에 있는 ?todoNo=1
		EL 표현식에서 ${param.key} -> ${param.todoNo} -> 1 반환
		 -->
		<input type="hidden" name ="todoNo" value = "${param.todoNo}">
		<button>수정완료</button>
	</form>
</body>
</html>
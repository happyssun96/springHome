<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
</head>

<body>
	<jsp:include page="/WEB-INF/views/Header.jsp" />
	
	<h1>회원목록</h1>
	<p>
		<a href="./add.do">신규회원</a>
	</p>
	
	<c:forEach var="memberVo" items="${memberList}">
		${memberVo.no},
		<a href='./update.do?no=${memberVo.no}'>${memberVo.name}</a>,
		${memberVo.email},
		${memberVo.createDate}
		<a href='./deleteCtr.do?no=${memberVo.no}'>[삭제]</a><br/>
		
	</c:forEach>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp" />
</body>
</html>
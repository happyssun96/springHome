<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
	<table border="5">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>생성날짜</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="memberVo" items="${memberList}">
			<tr>
				<td>${memberVo.no}</td>
				<td><a href='./update.do?no=${memberVo.no}'>${memberVo.name}</a></td>
				<td>${memberVo.email}</td>
				<td>${memberVo.createDate}</td>
				<td><a href='./deleteCtr.do?no=${memberVo.no}'>[삭제]</a></td>
			</tr>
		</c:forEach>

	</table>

	<jsp:include page="/WEB-INF/views/Tail.jsp" />
</body>
</html>
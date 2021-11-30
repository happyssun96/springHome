<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세 페이지</title>

<style type="text/css">

table {
	border-collapse: separate;
	text-align: center;
}
#title {
	font-weight: bold; 
}
</style>

<script type="text/javascript">
	function pageMoveBack() {
		location.href = 'javascript:history.back()';
	}
	
// 	function pageMoveUpdate(no) {
// 		location.href = './update.do?no=' + no'
// 	}
	
</script>
</head>

<body>
	
	<jsp:include page="/WEB-INF/views/Header.jsp" />
	
		<h1>${memberVo.name} 회원 상세 페이지</h1>
	
		<table border="3" style="text-align:center;">
		<tr>
			<td id="title">번호</td>
			<td>${memberVo.no}</td>
		</tr>
		<tr>
			<td id="title">이름</td>
			<td>${memberVo.name}</td>
		</tr>
		<tr>
			<td id="title">이메일</td>
			<td>${memberVo.email}</td>
		</tr>
		<tr>
			<td id="title">암호</td>
			<td>${encryptPassword}</td>
		</tr>
		<tr>
			<td id="title">가입일</td>
			<td>${memberVo.createDate}</td>
		</tr>
		<tr>
			<td id="title">수정일</td>
			<td>${memberVo.modifyDate}</td>
		</tr>
		</table><br/>

			<input type="button" value="뒤로가기" 	onclick="history.back()">
			<input type="button" value="수정" 
					onclick="location.href='./update.do?no=${memberVo.no}'">
	
	<jsp:include page="/WEB-INF/views/Tail.jsp" />
	
</body>
</html>
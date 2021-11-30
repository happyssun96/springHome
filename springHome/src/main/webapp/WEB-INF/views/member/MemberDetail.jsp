<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세 페이지</title>

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
		<form action="./update.do" method="get">
		번호:   <input type="text" name='no' value='${memberVo.no}'
					readonly="readonly"><br/>
		이름:   <input type="text" name="name" value="${memberVo.name}" 
					readonly="readonly"><br/>
		이메일:  <input type="text" name="email"
					value="${memberVo.email}" readonly="readonly"><br/>
		암호:	   <input type="text" name="password" 
				value="${encryptPassword}" readonly="readonly"><br/>
		가입일:  
					${memberVo.createDate}
					<br/>
		수정일:   
					${memberVo.modifyDate}
					<br/>
			   
				<input type="button" value="뒤로가기" 	onclick="history.back()">
				<input type="submit" value="수정">
				   		</form>
	<jsp:include page="/WEB-INF/views/Tail.jsp" />
	
</body>
</html>
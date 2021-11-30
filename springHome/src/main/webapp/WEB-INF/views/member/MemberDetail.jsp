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
	
	<h1>회원 상세 페이지</h1>

		번호:   <input type="text" name='no' value='${memberVo.no}'
					readonly="readonly"><br/>
		이름:   <input type="text" name="name" value="${memberVo.name}" 
					readonly="readonly"><br/>
		이메일:  <input type="text" name="email"
					value="${memberVo.email}" readonly="readonly"><br/>
		암호:	   <input type="text" name="password" 
				value="${encryptPassword}" readonly="readonly"><br/>
		가입일:  <fmt:formatDate 
					value="${requestScope.memberVo.createDate}" 
					pattern="yyyy-MM-dd hh:mm"/><br/>
		수정일:  <fmt:formatDate 
					value="${requestScope.memberVo.modifyDate}" 
					pattern="yyyy-MM-dd hh:mm"/><br/>
			   
				<input type="button" value="뒤로가기" 	onclick="history.back()">
				<input type="button" value="수정" 
					onclick="location.href='./update.do?no=${memberVo.no}'">
				   		
	<jsp:include page="/WEB-INF/views/Tail.jsp" />
	
</body>
</html>
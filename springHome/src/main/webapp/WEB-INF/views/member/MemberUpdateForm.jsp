<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
<script type="text/javascript">

	function pageMoveBack() {
		location.href = 'javascript:history.back()';
	}
	
	function pageMoveDetail(no) {
		var url = './detail.do?no=' + no;
		location.href = url;
	}
	
	function pageMoveDeleteFnc(no) {
		if(confirm("삭제하시겠습니까?")){
			alert("삭제를 완료하였습니다!")
			var url = './deleteCtr.do?no=' + no;
			location.href = url;
			return true;
		} else {
			alert("취소하였습니다.")
			return false;
		}
		
	}
</script>
</head>

<body>
	
	<jsp:include page="/WEB-INF/views/Header.jsp" />
	
	<h1>${memberVo.name} 회원정보 수정</h1>
	
	<form action="./updateCtr.do" method="post">
		번호:   <input type="text" name='no' value='${memberVo.no}'
					readonly="readonly"><br/>
		이름:   <input type="text" name="name" value="${memberVo.name}"><br/>
		이메일:  <input type="text" name="email"
					value="${memberVo.email}"><br/>
		암호:	   <input type="password" name="password"><br/>
		가입일: 
					${memberVo.createDate}
					<br/>
			   <input type="submit" value="수정">
			   <input type="button" value="삭제"
			   		onclick="pageMoveDeleteFnc(${memberVo.no})">
<!-- 			   		<input type="button" value="삭제" -->
<%-- 			   		onclick="pageMoveDeleteFnc(${memberVo.no})"> --%>
			   <input type="button" value="뒤로가기" 
			   		onclick="pageMoveBack()">
	</form>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp" />
	
</body>
</html>
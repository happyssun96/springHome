<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>

<style type="text/css">
table, tr, td, th {
	border : 1px solid black;		
}
table {
	border-collapse: collapse;
}
</style>

<script type="text/javascript">

	function searchFunc(){
	   var curPage = document.getElementById('curPage');
	   curPage.setAttribute('value', 1);

	   var selectedOption = document.getElementById("searchOption");
	   var form = document.getElementById('pagingForm');
	   location.href = './list.do?curPage=' + curPage.value
	         + '&keyword='+form.keyword.value
	         + '&searchOption='
	         + selectedOption.options[selectedOption.selectedIndex].value;
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

	<h1>회원목록</h1>
	<p>
		<a href="./add.do">신규회원</a><br/>
		<a href="./list.do">전체 회원 조회</a>
	</p>
	
	<form id='pagingForm' action="./list.do" method="post">
		<select name='searchOption' id='searchOption'>
			<option value="all" ${searchMap.searchOption 
				== 'all' ? 'selected' : '' }>전체</option>
			<option value="name" ${searchMap.searchOption 
				== 'name' ? 'selected' : '' }>이름</option>
			<option value="email" ${searchMap.searchOption 
				== 'email' ? 'selected' : '' }>이메일</option>
		</select>
		
		<input type="text" name="keyword" id="keyword" value="${searchMap.keyword}">
		
		<input type="button" value="검색" onclick="searchFunc()">
		
		<input type="hidden" id='curPage' name='curPage'
			value="${pagingMap.memberPaging.curPage}">
	</form>
	
	<table>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>생성날짜</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="memberVo" items="${memberList}">
			<tr>
				<td>${memberVo.no}</td>
				<td><a href='./detail.do?no=${memberVo.no}'>${memberVo.name}</a></td>
				<td>${memberVo.email}</td>
				<td>${memberVo.createDate}
				</td>
				<td><a href='./update.do?no=${memberVo.no}'>[수정]</a></td>
				<td><a href='#' 
						onclick="pageMoveDeleteFnc(${memberVo.no})">[삭제]</a></td>
			</tr>
		</c:forEach>

	</table>

	<jsp:include page="/WEB-INF/views/common/Paging.jsp">
		<jsp:param value="${pagingMap}" name="pagingMap"/>
	</jsp:include>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp" />
	
</body>
</html>
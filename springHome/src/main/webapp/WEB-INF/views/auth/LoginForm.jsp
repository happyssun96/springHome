<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<style>
* {
	margin: 0;
	padding: 0;
}

.login_containers {
	display: block;
	margin: 100px auto;
	text-align: center;
}

.login_containers h1 {
	font-size: 50px;
	margin-bottom: 80px;
}


.loginID, .loginPassword {
	margin-top: 20px;
	margin-bottom: 30px;
}

.input {
	padding: 5px;
	width: 300px;
	line-height: 30px;
	font-size: 20px;
	border: none;
	border-bottom: solid 1px rgba(0, 0, 0, 1);
}

.bt_login, .bt_signup {
	font-size: 20px;
	padding: 5px;
	margin-left: 20px;
	background-color: rgba(255, 255, 255, 1);
	border: none;
	border: solid 1px rgba(0, 0, 0, 1);
	cursor: pointer;
}

.bt_home {
	font-size: 20px;
	padding: 5px;
	margin-top: 10px;
	background-color: rgba(255, 255, 255, 1);
	border: none;
	border: solid 1px rgba(0, 0, 0, 1);
	cursor: pointer;
}
</style>
<body>
	<div class="login_containers">
		<h1>사용자 로그인</h1>
		<form action="loginCtr.do" method="post">
			<div class="loginID">
				이메일 : <input type="text" class="input" name="email"><br />
			</div>
			<div class="loginPassword">
				암호 : <input type="password" class="input" 
					name="password"><br />
			</div>
			<input type="submit" value="로그인" class="bt_login"> 
			<input type="button" value="회원가입" class="bt_signup"
				onclick="location.href='./member/add.do'">
		</form>
		<input type="button" value="홈" class="bt_home" 
			onclick="location.href='./index.jsp'">
	</div>
</body>
</html>
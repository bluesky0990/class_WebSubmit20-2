<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<title>Login</title>
</head>
<body>
	<div class="container">
		<h1>로그인</h1>
		<hr>
		<%if(session.getAttribute("id") == null) {%>
		<form action="../loginChk" method="post">
			id <input type="text" name="id" class="btn btn-outline-info">
			pw <input type="password" name="pw" class="btn btn-outline-info">
			<input type="submit" value="Login" class="btn btn-dark">
		</form>
		<%} else { %>
		<form action="../logout" method="post">
			<%=session.getAttribute("id") %>님 반갑습니다.
			<input type="submit" value="logout">
		</form>
		<%} %>
	</div>
</body>
</html>
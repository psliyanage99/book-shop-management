<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Register</h2>
	<form action="UserInsertServlet" method="post">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" required></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="gmail" required></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" required></td>
			</tr>
			<tr>
				<td>Phone:</td>
				<td><input type="text" name="phone" required></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>
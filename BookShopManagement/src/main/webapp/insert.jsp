<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Book Details</title>
</head>
<body>
<h2>Enter Book Details</h2>
	<form action="InsertServlet" method="post">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" required></td>
			</tr>
			<tr>
				<td>Price:</td>
				<td><input type="text" name="price" required></td>
			</tr>
			<tr>
				<td>Category:</td>
				<td><input type="text" name="catagory" required></td>
			</tr>
			<tr>
				<td>Quantity:</td>
				<td><input type="text" name="quentity" required></td>
			</tr>
			<tr>
				<td>Description:</td>
				<td><textarea name="description" required></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="Submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>

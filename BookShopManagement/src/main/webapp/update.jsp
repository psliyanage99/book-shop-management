<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String catagory = request.getParameter("catagory");
		String quentity = request.getParameter("quentity");
		String description = request.getParameter("description");
	%>
	
	<form action="UpdateServlet" method="post">
		<table>
			<tr>
				<td>ID:</td>
				<td><input type="text" id="id" name="id" value="<%=id%>" readonly></td>
			</tr>
			<tr>
				<td>Name:</td>
				<td><input type="text" id="name" name="name" value="<%=name%>" required></td>
			</tr>
			<tr>
				<td>Price:</td>
				<td><input type="text" id="price" name="price" value="<%=price%>" required></td>
			</tr>
			<tr>
				<td>Category:</td>
				<td><input type="text" id="catagory" name="catagory" value="<%=catagory%>>" required></td>
			</tr>
			<tr>
				<td>Quantity:</td>
				<td><input type="text" id="quentity" name="quentity" value="<%=quentity%>" required></td>
			</tr>
			<tr>
				<td>Description:</td>
				<td><textarea id="description" name="description" value="<%=description%>" required></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="Submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Product Table</h2>
<table>
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Price</th>
		<th>Category</th>
		<th>Quantity</th>
		<th>Description</th>
	</tr>
	<c:forEach var="book" items="${allBooks}">
	<tr>
		<td>${book.id}</td>
		<td>${book.name}</td>
		<td>${book.price}</td>
		<td>${book.category}</td>
		<td>${book.quentity}</td>
		<td>${book.description}</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>
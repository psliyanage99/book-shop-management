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
<input type="text" id="searchInput" placeholder="search...">
<table>
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Price</th>
		<th>Category</th>
		<th>Quantity</th>
		<th>Description</th>
		<th>Action</th>
	</tr>
	<c:forEach var="book" items="${allBooks}">
	<tr>
		<td>${book.id}</td>
		<td>${book.name}</td>
		<td>${book.price}</td>
		<td>${book.catagory}</td>
		<td>${book.quentity}</td>
		<td>${book.description}</td>
		
		<td>
			<a href="update.jsp?id=${book.id}&name=${book.name}&price=${book.price}&catagory=${book.catagory}&quentity=${book.quentity}&description=${book.description}">
                <button>Update</button>
            </a>
            <form action="DeleteServlet" method="post">
            <input type="hidden" name="id" value="${book.id}" />
            	<button>Delete</button>
            </form>
		</td>
	</tr>
	</c:forEach>
</table>
<script>

function filterTable() {
	var input,filter,table,tr,td,i,txtValue;
	input = document.getElementById("searchInput");
	filter = input.value.toUpperCase();
	table = document.querySelector("table");
	tr = table.getElementsByTagName("tr");
	
	for (i = 0; i < tr.length; i++) {
		td = tr[i].getElementsByTagName("td");
		for (var j = 0; j < td.length; j++) {
			if (td[j]) {
				txtValue = td[j].textContent || td[j].innerText;
				if (txtValue.toUpperCase().indexOf(filter) > -1) {
					tr[i].style.display = "";
					break;
				} else {
					tr[i].style.display="none";
				}
			}
		}
	}
}
document.getElementById("searchInput").addEventListener("input",filterTable);
</script>
</body>
</html>
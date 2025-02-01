<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>User Profile</h1>
<h1>ID: ${user.id}</h1>
<h1>Name: ${user.name}</h1>
<h1>Email: ${user.gmail}</h1>
<h1>Password: ${user.password}</h1>
<h1>Phone: ${user.phone}</h1>


<a href="updateprofile.jsp?id=${user.id}&name=${user.name}&gmail=${user.gmail}&password=${user.password}&phone=${user.phone}">
                <button>Update</button>
            </a>
<form action="UserDeleteServlet" method="post">
            <input type="hidden" name="id" value="${user.id}" />
            	<button>Delete</button>
            </form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>Student details</h1>
		<table border=1>
			<thead>
				<tr>
					<th>Roll Number</th>
					<th>Name</th>
					<th>Marks</th>
				</tr>
			</thead>
			<c:forEach items="${students}" var="student">
				<tr>
					<td>${student.id}</td>
					<td>${student.name}</td>
					<td>${student.marks}</td>
				</tr>
			</c:forEach>

		</table>
	</center>
</body>
</html>
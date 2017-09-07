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
		<table>
			<tr>
				<td align="right">	Roll Number:</td>
				<td>	${student.id}</td>
			</tr>
			<tr>
				<td align="right">	Name:</td>
				<td>	${student.name}</td>
			</tr>
			<tr>
				<td align="right">	Marks:</td>
				<td>	${student.marks}</td>
			</tr>
		</table>
	</center>
</body>
</html>
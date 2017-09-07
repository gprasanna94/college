<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>Enter student details</h1>
		<form method="post" action="/addStudent">
			<table>
				<tr>
					<td>Id: </td>
					<td><input type="text" name="id"><br></td>
				</tr>
				<tr>
					<td>Name :</td>
					<td><input type="text" name="name"><br></td>
				</tr>
				<tr>
					<td>Marks :</td>
					<td><input type="text" name="marks"><br></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Save" /></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1>Delete Employee</h1>
    <form action="deleteById" method="get">
        <label for="id">Employee ID:</label>
        <input type="text" id="id" name="id">
        <input type="submit" value="Delete">
    </form>
</body>
</html>
<%@page import="sprimg.mvc.pr1Dto.EmployeeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Details</title>
    <!-- Add any necessary styles or scripts here -->
</head>
<body>
<%EmployeeDto dto=(EmployeeDto)request.getAttribute("employee"); %>
    <center>
        <h1>Employee Details</h1>
        <table border="1">
            <tr>
                <th>Employee ID</th>
                <th>Employee Name</th>
            </tr>
           <tr>
           <td><%=dto.getEid()%></td>
             <td><%=dto.getEname()%></td>
             </tr>
        </table>
    </center>
</body>
</html>

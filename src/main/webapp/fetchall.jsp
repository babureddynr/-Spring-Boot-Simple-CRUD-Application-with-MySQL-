<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="sprimg.mvc.pr1Dto.EmployeeDto" %>
    <%@ page import="java.util.List" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
 body {
            font-family: 'Arial', sans-serif;
            background-image: url('https://img.freepik.com/premium-photo/christmas-greeting-card-stethoscope-pulse-oximeter-rapid-test-christmas-decorations-green-background-medical-concept-copy-space-flat-lay-banner_488721-647.jpg?size=626&ext=jpg&ga=GA1.1.229179743.1716544775&semt=ais_user');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
        }
body::after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(rgba(0,0,0,0.1), rgba(0,0,0,0.1)); /* Adjust the opacity as needed */
    backdrop-filter: blur(5px); /* Adjust the blur amount as needed */
    z-index: -1; /* Ensure it stays behind other content */
}
        header {
            background-color: #4CAF50;
            color: white;
            padding: 1rem 0;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        nav {
            display: flex;
            justify-content: center;
            background-color: #333;
        }
        nav a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            text-align: center;
            transition: background-color 0.3s, color 0.3s;
        }
        nav a:hover {
            background-color: #ddd;
            color: black;
        }
        nav a:active {
            background-color: #4CAF50;
            color: white;
        }
        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 80vh;
        }
        table {
        position:absolute;
        top:200px;
        
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .delete-button, .update-button {
            color: white;
            text-decoration: none;
            padding: 8px 12px;
            border-radius: 4px;
            transition: background-color 0.3s, transform 0.3s;
        }
        .delete-button {
            background-color: #dc3545;
        }
        .update-button {
            background-color: #28a745;
        }
        .delete-button:hover {
            background-color: #c82333;
        }
        .update-button:hover {
            background-color: #218838;
        }
    </style>
<body>
 <% List<EmployeeDto> obj = (List<EmployeeDto>) request.getAttribute("object"); %>
     
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
              
            </tr>
            <% for (EmployeeDto uv : obj) { %>
            <tr>
                <td><%= uv.getEid() %></td>
                <td><%= uv.getEname() %></td>
                
            </tr>
            <% } %>
        </table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
      background-color: #FBAB7E;
background-image: linear-gradient(62deg, #FBAB7E 0%, #F7CE68 50%, #ffffff 100%);

        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    form {
        background: white;
        padding: 2em;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: center;
    }
    h2 {
        margin-bottom: 1em;
    }
    input[type="number"],
    input[type="text"],
    button {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 1em;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
        font-weight: bold;
      
    }
    input{
    color: black;
    font-style: oblique;
    font-weight: bolder;
    }
    button {
        width: 30%;
        margin: 0 5% 1em 5%;
        padding: 10px;
        border-radius: 4px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
    }
    button[type="submit"] {
        background-color: #5cb85c;
        color: white;
        border: none;
    }
    button[type="submit"]:hover {
        background-color: #4cae4c;
    }
    button[type="button"] {
        background-color: #d9534f;
        color: white;
        border: none;
    }
    button[type="button"]:hover {
        background-color: #c9302c;
    }
    button[type="reset"] {
        background-color: #f0ad4e;
        color: white;
        border: none;
    }
    button[type="reset"]:hover {
        background-color: #ec971f;
    }
    input::placeholder {
        color: #aaa;
        font-weight: normal;
    }
</style>
</head>
<body>
<form action="insert">
    <h2>Insert Employee Details</h2>
    <input type="number" name="eid" placeholder="ID"><br>
    <input type="text" name="ename" placeholder="Name"><br>
    <button type="submit">Submit</button>
    <button type="button" onclick="window.location.href='cancelUrl';">Cancel</button>
    <button type="reset">Reset</button>
</form>
</body>
</html>

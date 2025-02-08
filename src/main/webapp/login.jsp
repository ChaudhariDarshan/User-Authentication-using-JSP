<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="styleLogin.css">
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <div class="form-container">
            <form action="LoginServlet" method="post">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
	<br>
	<br>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
<br>
<br>
                <button type="submit">Login</button>
            </form>
        </div>
        <p><a href="index.html">Back to Home</a></p>
        
        <% String error = request.getParameter("error");
            if (error != null && error.equals("1")) { %>
                <p style="color: red;">Invalid username or password. Please try again.</p>
        <% } %>
        
        <% String rs = request.getParameter("registration");
            if (rs != null && rs.equals("success")) { %>
                <p style="color: green;">Your Registration is Successful, Please Login.</p>
        <% } %>
    </div>
</body>
</html>

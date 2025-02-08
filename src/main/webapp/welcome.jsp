<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session != null && session.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session.getAttribute("username");
    %>

      <div class="container">
        <h1>Hello, <%= username %>! 👋</h1>
<p>Welcome aboard! Your journey starts here. 🚀</p>
<h3>Dive in, explore, and make the most of your experience! 🌍</h3>
<p>Stay as long as you like, and whenever you wish,</p> 
you can <a href="logout.jsp">LOGOUT</a> safely. 🔐 
    </div>

    <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>


</body>
</html>
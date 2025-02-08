<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
    <%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);
			if(session1!=null){
				session1.invalidate();
			}
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
    %>


</body>
</html>
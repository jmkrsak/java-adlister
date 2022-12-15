<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "some title" %></title>
</head>
<body>
<h1>Why Did I Do This</h1>

        <form action="/login.jsp" method="POST">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username"><br><br>
            <label for="password">Password:</label>
            <input type="text" id="password" name="password"><br><br>
            <input type="submit" value="Submit">
        </form>

    <%

        if (request.getMethod().equalsIgnoreCase("POST")) {
            String name = request.getParameter("username");
            String password = request.getParameter("password");
            if (name.equals("admin") && password.equals("password")) {
                response.sendRedirect("/profile.jsp");
            }
        }

    %>

</body>
</html>

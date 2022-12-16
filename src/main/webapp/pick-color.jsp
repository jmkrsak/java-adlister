<%--
  Created by IntelliJ IDEA.
  User: john-michaelkrsak
  Date: 12/16/22
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>PICK A COLOR</h1>

<form action="/view-color-two-serv" method="post">

    <label for="color-input">Enter Color Here
        <input name="color-input" id="color-input" type="text" placeholder="enter color here">
    </label>

    <br>

    <button type="submit">Submit color</button>

</form>

</body>
</html>

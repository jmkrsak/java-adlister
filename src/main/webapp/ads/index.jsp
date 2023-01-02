<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    

</head>
<body>

    <jsp:useBean id="ads" scope="request" type="java.util.List"/>
    <c:forEach var="ad" items="${ads}">
        <p>${ad.title}</p>
        <p>${ad.description}</p>
    </c:forEach>

</body>
</html>
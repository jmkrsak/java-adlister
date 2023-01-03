<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>All ads</title>

</head>
<body>

    <div class="container">

        <c:forEach var="ad" items="${ads}">

            <div>

                <p>Title: ${ad.title}</p>
                <p>Description: ${ad.description}</p>

            </div>

        </c:forEach>

    </div>

</body>
</html>
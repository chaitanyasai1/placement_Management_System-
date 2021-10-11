<html>

<head>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../loginstyle.css" rel="stylesheet" type="text/css">
        <title>Welcome to Spring Web MVC project</title>
        <style>
                  body {
        background-image: url("login.jpg");
        background-repeat: no-repeat;
       background-size: cover;
        
    }
        </style>
</head>

<body>
    <div class="header">
        <h1>USERS</h1>
    </div>
<table class="styled-table">
    <thead>
        <tr>
            <th>Id</th>
            <th>Email</th>
            <th>firstName</th>
            <th>Last Name</th>
            <th>User Name</th>
            <th>Password</th>
            <th>Admin</th>
        </tr>
    </thead>
    <tbody>
        <c:if test="${not empty lists}">
            <c:forEach items="${lists}" var="lists">

                <tr>
                    <td> ${lists.id}</td>
                    <td> ${lists.email}</td>
                    <td> ${lists.firstName}</td>
                    <td> ${lists.lastName}</td>
                    <td> ${lists.userName}</td>
                    <td> ${lists.password}</td>
                    <td> ${lists.admin}</td>
                </tr>
            </c:forEach>
        </c:if>
    </tbody>
</table>
</body>
</html>
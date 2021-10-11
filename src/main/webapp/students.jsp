<html>

<head>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../loginstyle.css" rel="stylesheet" type="text/css">
        <title>Welcome to Spring Web MVC project</title>
        <style>
                  body {
        background-image: url("1.2.jpg");
        background-repeat: no-repeat;
       background-size: cover;
        color: black;
    }
        </style>
</head>

<body>
    <div class="header">
        <h1>Students</h1>
    </div>
<table class="styled-table">
    <thead>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>DOB</th>
            <th>qualification</th>
            <th>Percentage</th>
            <th>Contact</th>
            <th>State</th>
            <th>City</th>
            <th>Postal</th>
            <th>Address</th>
        </tr>
    </thead>
    <tbody>
        <c:if test="${not empty lists}">
            <c:forEach items="${lists}" var="lists">

                <tr>
                    <td> ${lists.firstName}</td>
                    <td> ${lists.lastName}</td>
                    <td> ${lists.dob}</td>
                    <td> ${lists.qualification}</td>
                    <td> ${lists.percentage}</td>
                    <td> ${lists.contact}</td>
                    <td> ${lists.state}</td>
                    <td> ${lists.city}</td>
                    <td> ${lists.postal}</td>
                    <td> ${lists.address}</td>
                </tr>
            </c:forEach>
        </c:if>
    </tbody>
</table>
</body>
</html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to Spring Web MVC project</title>
<style>
    
              body {
        background-image: url("placement.jpg");
        background-repeat: no-repeat;
       background-size: cover;
        color: white;
    }
</style>
</head>

<body style="background-color:powderblue;">
    <h1>Users page</h1>
</body>
<table>
<c:if test="${not empty lists}">
    <c:forEach items="${lists}" var="lists">
      
       <tr>
           <td> ${lists.id}</td>
           <td> ${lists.companyid}</td>
           <td> ${lists.name}</td>
           <td> ${lists.numberofvacancies}</td>
          
       </tr>
</c:forEach>
</c:if>

</table>
</html>
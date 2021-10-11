           <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <link href="../loginstyle.css" rel="stylesheet" type="text/css">

            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

            <title>Success Form</title>
            <style>
              body {
        background-image: url("1.jpg");
        background-repeat: no-repeat;
       background-size: cover;
        color: black;
    }
    </style>
    
</head>

<body>

    <font color="green">
        <h2>Hello ${user}</h2>
    </font>

   
        <header>
            <nav>
                <ul>
                    <c:if test="${isadmin == true}">
                    <li>
                        <a href="/userMapp">View User</a>
                    </li>
                    <li>
                        <a href="/placemntsController">Add Placement</a>
                    </li>
                    <li>
                        <a href="/userStudents">View Students</a>
                    </li>
                </c:if>
                <li>
                    <a href="/studentController">Register for Placement</a>
                </li>
                </ul>
            </nav>
        </header>
   
    <div class="header">
        <h1>Placements</h1>
    </div>


    <c:if test="${not empty lists}">

        <table class="styled-table">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Company Id</th>
                    <th>Name</th>
                    <th>Number of positions</th>
                </tr>
            </thead>
        <tbody>
                <c:forEach items="${lists}" var="lists">
                    <tr>
                        <td> ${lists.id}</td>
                        <td> ${lists.companyid}</td>
                        <td> ${lists.name}</td>
                        <td> ${lists.numberofvacancies}</td>
                        <th> <button type="submit" onclick="myFunction()" >apply</button>
                        <script>
                            function myFunction() {
                              alert("sucessfully applied");
                            }
                            </script>
                            </th>
                    </tr>
                </c:forEach>
                <!-- and so on... -->
            </tbody>
        </table>
        <h4>Full Stack Developer 
            <br>   capgemini careers
            <br>  Education 
            <br> UG :B.Tech/B.E. in Any Specialization
            <br> PG :MCA in Any Specialization, MS/M.Sc(Science) in Computers
            <br>  Freshers
            <br>   ₹ 3,00,000 - 4,00,000 P.A.
           Bangalore</h4>
           <h4>Web Developer
            <br>   Wipro
            <br>  Education 
            <br> UG :B.Tech/B.E. in ECE or CSE
            <br>  Freshers
            <br>   ₹ 3,00,000 - 4,00,000 P.A.
           Bangalore</h4>
           <h4>Web Developer
            <br>   Accenture
            <br>  Education 
            <br> UG :B.Tech/B.E. in ECE or CSE
            <br>  Freshers
            <br>   ₹ 3,00,000 - 4,00,000 P.A.
           Bangalore</h4>
    </c:if>

</body>

</html>
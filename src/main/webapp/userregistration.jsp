<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>

            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Placement Form</title>
            <link href="../loginstyle.css" rel="stylesheet" type="text/css">
            <style>
                 body {
                    background-image: url("./6.jpg");
                    background-repeat: no-repeat;
                   background-size: cover;
                    
                }
               
            </style>
        </head>

        <body>
            <div align="center">
                <form:form name="studentForm" action="student_register" method="POST">


                    <label class="col-4 col-form-label">FirstName</label>
                    <div class="firstName">
                        <input type="text" name="firstName" class="form-control" required />
                    </div>
                    <label class="col-4 col-form-label">LastName </label>
                    <div class="LastName">
                        <input type="text" name="LastName" class="form-control" required />
                    </div>
                    <label class="col-4 col-form-label">dob </label>
                    <div class="dob">
                        <input type="date" name="dob" class="form-control" required />
                    </div>
                    <label class="col-4 col-form-label">qualification </label>
                    <div class="qualification">
                        <input type="text" name="qualification" class="form-control" required />
                    </div>
                    <label class="col-4 col-form-label">percentage </label>
                    <div class="percentage">
                        <input type="number" name="percentage" class="form-control" required />
                    </div>
                    <label class="col-4 col-form-label">contact </label>
                    <div class="contact">
                        <input type="number" name="contact" class="form-control" required />
                    </div>
                    <label class="col-4 col-form-label">state </label>
                    <div class="state">
                        <input type="text" name="state" class="form-control" required />
                    </div>
                    <label class="col-4 col-form-label">city </label>
                    <div class="city">
                        <input type="text" name="city" class="form-control" required />
                    </div>
                    <label class="col-4 col-form-label">postal </label>
                    <div class="postal">
                        <input type="number" name="postal" class="form-control" required />
                    </div>
                    <label class="col-4 col-form-label">address </label>
                    <div class="address">
                        <input type="text" name="address" class="form-control" required />
                    </div>

                    <div>
                        <button type="submit"  onclick="myFunction()" class="btn btn-primary">Submit</button>
                        <script>
                            function myFunction() {
                              alert("sucessfully submited");
                            }
                            </script>
                            
                        
                    </div>

                </form:form>
            </div>
        </body>

        </html>
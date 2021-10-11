<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring Login Form</title><style>body {
    background-image: url("./1.1.jpg");
    background-repeat: no-repeat;
   background-size: cover;
    
}
</style>

</head>
<body>
    <div align="center">
    <form:form name="registerForm" action="process_register" method="POST">
        <div class="m-3" >
            <div class="form-group row">
                <label class="col-4 col-form-label">E-mail: </label>
                <div class="col-8">
                    <input type="email" name="email" class="form-control" required />
                </div>
            </div>
             
            <div class="form-group row">
                <label class="col-4 col-form-label">Password: </label>
                <div class="col-8">
                    <input type="password" name="password" class="form-control"
                            required minlength="6" maxlength="10"/>
                </div>
            </div>
             
            <div class="form-group row">
                <label class="col-4 col-form-label">First Name: </label>
                <div class="col-8">
                    <input type="text" name="firstName" class="form-control"
                            required minlength="2" maxlength="20"/>
                </div>
            </div>
             
            <div class="form-group row">
                <label class="col-4 col-form-label">Last Name: </label>
                <div class="col-8">
                    <input type="text" name="lastName" class="form-control"
                            required minlength="2" maxlength="20" />
                </div>
            </div>
            <div class="form-group row">
                <label class="col-4 col-form-label">User Name: </label>
                <div class="col-8">
                    <input type="text" name="userName" class="form-control"
                            required minlength="2" maxlength="20" />
                </div>
            </div>
             
            <div>
                <button type="submit" onclick="myFunction()" class="btn btn-primary">Sign Up</button>
                <script>
                    function myFunction() {
                      alert("sucessfully Registered");
                    }
                    </script>
            </div>
                
        </div>
    </form:form>
</div>
</body>
</html>
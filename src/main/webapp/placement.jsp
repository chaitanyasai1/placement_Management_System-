<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Placement Form</title>
            <style>
                body {
                    background-image: url("./building.jpg");
                    background-repeat: no-repeat;
                   background-size: cover;
                    
                }
            </style>
        </head>

        <body>
            <div align="center">
                <form:form name="placementForm" action="placement_register" method="POST">
                    <label class="col-4 col-form-label">CompanyID</label>
                    <div class="companyid">
                        <input type="number" name="companyid" class="form-control" required />
                    </div>
                    <label class="col-4 col-form-label">Name </label>
                    <div class="name">
                        <input type="text" name="name" class="form-control" required />
                    </div>
                    <label class="col-4 col-form-label">Vacancies </label>
                    <div class="numberofvacancies">
                        <input type="number" name="numberofvacancies" class="form-control" required />
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>

                </form:form>
            </div>
        </body>

        </html>
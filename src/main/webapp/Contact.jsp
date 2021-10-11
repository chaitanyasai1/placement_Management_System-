<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>

            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>ContactUS</title>
            <style>
                *{
                    text-align: center;
                }
                body{
                    
                    background-image: url(./contactus.jpg);
                    background-color: aqua;
                }
            </style>
        </head>
        <body>     
            <h1>ContactUS</h1>


<label for="review"><h1>feedback:</h1></label>
<textarea id="review" name="review" rows="4" cols="50">
 
  </textarea>
  <br><br>

  <a href = "mailto:abc@example.com?subject = Feedback&body = Message">

    <input type="submit" value="Submit">
    </a>
  
</form>       
        
</body>
        </html>
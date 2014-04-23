<%-- 
    Document   : Login
    Created on : Mar 14, 2014, 10:38:30 AM
    Author     : sanoussysangary
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Conencting the .css files to the .jsp file.-->
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/stylesheet.css" rel="stylesheet">
   
     <!-- The background image of schedula -->
      
        <style>
      body{
                 background-image: url(img/sch.png);
               background-repeat: no-repeat;
                background-size:  cover;
             
            }  
               
        </style>
    </head>
    <body>
    <!-- Start of the body tag, putting the input fields for username and password -->
        <div class="container">
            <div class="row">
                <div class="col-sm-offset-5 ">
                <div class=" col-sm-5  a">
                    <center><h3> Login</h3></center>
                    <br>
                    <form >
                    <!-- This is where the username is entered -->
                        <div class="form-group">
                            <input type="email" class="form-control"  placeholder="SBU Email ID">
                        </div>
                        <!-- This is where the password is entered -->
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password">
                        </div>
                         
          
          <!-- These are the links that help a new advisor and student create an account -->
                        <center>
                            <a href="classinfo.jsp"> <button type="submit" class="btn button">Submit</button> </a><br>
                            <br><br><br>
                        <a href="newstudent.jsp" class="link1">New Student?</a><br>
                        <a href="newAdvisor.jsp" class="link1">New Advisor?</a>
                       
                        </center>
                    </form>


                </div>
                </div>
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>

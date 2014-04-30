<%-- 
    Document   : forgotpassword
    Created on : Mar 14, 2014, 10:44:54 AM
    Author     : sanoussysangary
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Forgot Password Page - Schedula</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">


        <style> 
            .a{
                padding-top: 30%;
            }
            .button{
                background-color: transparent;
                border-color: white;
                color: white;
                
            }
        </style>
    </head>
    <body class="main1">
        <div class="container">
            <div class="row">
                <div class="col-sm-offset-4">
                <div class=" col-sm-4 a">
                    <center><h3  style="color:white">Enter your Email</h3></center>
                    <form >
                        <div class="form-group">
                            <input type="email" class="form-control"  placeholder="SBU Email ID">
                        </div>
                         
          
                        <center>
                        <button type="submit" class="btn btn-block button">Retrieve Password</button><br>
                        
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

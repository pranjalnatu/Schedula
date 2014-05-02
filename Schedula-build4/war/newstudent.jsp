<%-- 
    Document   : index
    Created on : Mar 14, 2014, 10:09:20 AM
    Author     : sanoussysangary
href="classinfo.jsp" 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Create a Student Account - Schedula</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
          <link href="css/stylesheet.css" rel="stylesheet">
       
       </head>
    <body class="main1">
        <div class="container">
            <div class="row">
                <div class="col-sm-offset-5">
                <div class=" col-sm-5 a">
                <center>
               		 <h3>Create an account</h3>
                </center>
                    <br>
                    <form  action = "/sign_up" id="myform" name="myform" method="post" >
                        <div class="form-group">
                          <span id="nameInfo"></span>
                          <input name = "First_Name" type="text" id="firstName" class="form-control"  placeholder="First Name">
                        </div>
                        <div class="form-group">
                        <span id="lastInfo"></span>
                           
                            <input name = "Last_Name" type="text" id="lastName" class="form-control" placeholder="Last Name">
                        </div>
                        <div class="form-group">
                         <span id="emailInfo"></span>
	                     <input name ="Id" type="email" class="form-control" id="email" placeholder="SBU Email ID" required>
                       </div>
                        <div class="form-group">
                        <span id="passInfo"></span>
                           
                            <input name = "Password" type="password" class="form-control" id="pass"  placeholder="Password">
                        </div>
                           <div class="form-group">
                           <span id="pass1Info"></span>
                           
                            <input name = "Confirm" type="password" class="form-control" id="pass1" placeholder="Confirm Password">
                        </div>
                        <div class="form-group">
                        <span id="phoneInfo"></span>
                           
                            <input name = "Phone" type="text" class="form-control" id="phone" placeholder="Phone">
                        </div>

          
                        <center>
                        <button type="submit" class="link2 btn  button">Next</button>
                        </center>
                    </form>
                </div>
                </div>
            </div>
        </div>
        <footer>
        <div class = "pull-right">
        <a href = "Help.jsp" class = "link1">About</a>&nbsp;&nbsp;
         <a href = "#author.jsp" class = "link1">Author</a>&nbsp;&nbsp;
        </div>
        </footer>
         <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
       <script type="text/javascript" src="/js/validation.js"></script>
          </body>
</html>
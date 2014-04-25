<%-- 
    Document   : index
    Created on : Mar 14, 2014, 10:09:20 AM
    Author     : sanoussysangary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>JSP Page</title>
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
                    <form >
                        <div class="form-group">
                            <input type="text" class="form-control"  placeholder="First Name">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Last Name">
                        </div>
                         <div class="form-group">
                            <input type="text" class="form-control" placeholder="Advising Major">
                        </div>
                       
                         <div class="form-group">
                            <input type="email" class="form-control"  placeholder="SBU Email ID">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control"  placeholder="Password">
                        </div>
                           <div class="form-group">
                            <input type="text" class="form-control"  placeholder="Comfirm Password">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Phone">
                        </div>

          
                        <center>
                        <button type="submit" class="btn  button">Submit</button>
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

<%-- 
    Document   : classinfo
    Created on : Mar 14, 2014, 10:48:48 AM
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
   
        <style>
            body{
                background-image: url(img/sch.png);
                background-repeat: no-repeat;
                background-size:  cover;
             
                }  
                       
        </style>
   
           </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-offset-4">
                    <div class=" col-sm-8 b">
                     <div class="col-sm-12 col-sm-offset-2">
                       <h3>Additional Information</h3><br>
                       </div>
                       
                        <form >
                            <div class="form-group col-sm-offset-2 col-sm-7">
                                <select class="form-control">
                                    <option>Select a Major</option>

                                    <option>Computer Science</option>
                                    <option>Applied Mathematics and Statistics</option>
                                    <option>Mechanical Engineering</option>

                                </select>

                            </div>
                            <div class="form-group  col-sm-offset-2 col-sm-7">
                                <select class="form-control">

                                    <option>Select a Second Major</option>

                                   <option>Computer Science</option>
                                    <option>Applied Mathematics and Statistics</option>
                                    <option>Mechanical Engineering</option>

                                </select> 
                            </div>
                            <div class=" col-sm-12">
                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;What major requirements have you finished?</h4>
</div>
                            <div class="form-group col-sm-offset-2 col-sm-7">

                                <select multiple class="form-control ">
                                    <option>CSE 101</option>
                                    <option>CSE 102</option>
                                    <option>CSE 110</option>
                                    <option>CSE 114</option>
                                    <option>CSE 130</option>
                                </select>

                            </div>

                            <div class=" col-sm-12">
                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;What DEC requirements have you finished?</h4>
</div>
                            <div class="form-group col-sm-offset-2 col-sm-7">

                                <select multiple class="form-control ">
                                    <option>DEC A</option>
                                    <option>DEC B</option>
                                    <option>DEC C</option>
                                     <option>DEC D</option>
                                    <option>DEC E</option>
                                    <option>DEC F</option>
                                     <option>DEC G</option>
                                      <option>DEC H</option>
                                       <option>DEC I</option>
                                        <option>DEC J</option>
                                         <option>DEC K</option>
                                </select>

                            </div>

                            <center class=" col-sm-10 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp; <a href="studenthomepage.jsp" class="link2 btn button">&nbsp;Submit</a>
                            </center>
                        </form>

                    </div>
                </div>
                <br><br>
                
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>

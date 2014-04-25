<%-- 
    Document   : AddMajorClasses
    Created on : Mar 14, 2014, 11:21:43 AM
    Author     : sanoussysangary
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>JSP </title>
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/post.css" rel="stylesheet">
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="//cdn.datatables.net/1.9.4/css/jquery.dataTables.css">
       
        <style>
            body{
                background-image: url(img/screen.png);
                background-repeat: no-repeat;
                background-size:  cover;
            }  
            .row1{
                padding-top: 10%;
            }
            .button{
                background-color: transparent;
                border-color: white;
                color: white;
               }
               .button1{
                background-color: transparent;
                border-color: black;
                color:black;
               }
               .container{
               padding-left:0px;
               padding-rigth:0px;
               }
               
        </style>
    </head>
    <body>
        <div class="container">
            <div class=" pull-right">
               <ul class=" nav navbar-nav">
                    <li><span class=" glyphicon glyphicon-comment btn-lg"></span> </li>
                    <li><span class=" glyphicon glyphicon-user btn-lg"></span> </li>
                    <li><span class=" glyphicon glyphicon-off btn-lg"></span> </li>
                </ul>
                </div>
            
            
            <div class="row row1">
                <div class="col-sm-2">
                <a href="calendar.jsp" class="btn btn-default button">Schedule 1 </a><br><br>
                <button class="btn btn-default button">Schedule 2 </button><br><br>
                  <a  href="AddMajorClasses.jsp"class="btn btn-default button"> <span class="glyphicon glyphicon-edit "></span> </a>
            
                </div>
                <div class=" col-sm-10">
                 <div class=" col-sm-offset-1 col-sm-11">
               
                     <center>
                    <a href="AddMajorClasses.jsp" class="btn btn-default button1 active">Add Major Classes</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                           <a href="AddDecClasses.jsp" class="btn btn-default button1">Add DEC Classes</a>
                    </center><br>
                    <div class="col-sm-12">
                    <table class="table table-bordered table-responsive" id="richBoys"> 
                            <thead>
                            <tr>
                            <th></th> 
                            <th>CODE</th>
                            <th>DEPT</th> 
                           <th>NAME</th> 
                            <th>NUM</th> 
                           <th class="instructor">INSTRUCTOR</th> 
                            <th>DAYS</th> 
                           <th>START</th> 
                            <th>END</th>  </tr>
                            
                            </thead>
                             <tbody>
                                 <tr>
                                 <td>
                             <input type="checkbox">   
                                 </td>
                                 <td>CSE</td>
                                 <td>101</td>
                                 <td>Introduction to Computers</td>
                                 <td>01</td>
                                 <td>Michael Tashbook</td>
                                <td>MW</td>
                                 <td>02:30 pm</td>
                                  <td>03:50 pm</td>
                    
                                 </tr>
                                  <tr>
                                 <td>
                             <input type="checkbox">   
                                 </td>
                                 <td>CSE</td>
                                 <td>102</td>
                                 <td>Intro to Web Design and programming</td>
                                 <td>01</td>
                                 <td>TBA</td>
                                <td>TuTh</td>
                                 <td>02:30 pm</td>
                                  <td>03:50 pm</td>
                    
                                 </tr>
                        <tr>
                                 <td>
                             <input type="checkbox">   
                                 </td>
                                 <td>CSE</td>
                                 <td>110</td>
                                 <td>Introduction to Computer Science</td>
                                 <td>01</td>
                                 <td>Michael Tashbook</td>
                                <td>Mf</td>
                                 <td>01:00 pm</td>
                                  <td>02:20 pm</td>
                    
                                 </tr>
                       
                                  <tr>
                                 <td>
                             <input type="checkbox">   
                                 </td>
                                 <td>CSE</td>
                                 <td>114</td>
                                 <td>Computer Science I</td>
                                 <td>01</td>
                                 <td>Paul Fodor</td>
                                <td>MWF</td>
                                 <td>08:00 am</td>
                                  <td>08:53 am</td>
                    
                                 </tr>
                                     <tr>
                                 <td>
                             <input type="checkbox">   
                                 </td>
                                 <td>CSE</td>
                                 <td>130</td>
                                 <td>Intro to Programming in C</td>
                                 <td>01</td>
                                 <td>Ahmad Esmaili</td>
                                <td>MWF</td>
                                 <td>10:00 am</td>
                                  <td>10:53 am</td>
                    
                                 </tr>
                                     <tr>
                                 <td>
                             <input type="checkbox">   
                                 </td>
                                 <td>CSE</td>
                                 <td>150</td>
                                 <td>Fondation of Computer Science Honors</td>
                                 <td>01</td>
                                 <td>Michael Bender</td>
                                <td>MF</td>
                                 <td>01:00 pm</td>
                                  <td>02:20 pm</td>

                    
                                 </tr>
                       
                            <tr>
                                
                                 <td>
                             <input type="checkbox">   
                                 </td>
                                 <td>CSE</td>
                                 <td>214</td>
                                 <td>Computer Science II</td>
                                 <td>01</td>
                                 <td>Ahmad Esmaili</td>
                                <td>MWF</td>
                                 <td>12:00 pm</td>
                                  <td>12:53 pm</td>
                    
                                 </tr>
                       
                       
                        </tbody>
                    </table>
                    </div>
                    <center>
                    <button class="btn btn-default button1">Preview</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;

                    
                    <button class="btn btn-default button1">Done</button>
                    </center>
                </div>
                </div>
            </div>
            </div>
        <script src="http://code.jquery.com/jquery-2.0.2.min.js"></script>
        <script src="//cdn.datatables.net/1.10.0-beta.2/js/jquery.dataTables.js"></script>
        <script>
            $(function() {
                
                $('#richBoys').dataTable( {
                    "bPaginate":true,
                    "iDisplayLength": 1,
                    "sPaginationType": "full_numbers"
                    
                    
                    
                });
            });
        </script>
         
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>
                            











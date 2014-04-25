<%-- 
    Document   : AddDecClasses
    Created on : Mar 14, 2014, 1:11:20 PM
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
        <link href="css/post.css" rel="stylesheet">
       	<link href="css/stylesheet.css" rel="stylesheet">

        <style>  
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
 
        </style>
    </head>
    <body class="main2">
        <div class="container">
         <div class="row">
            <div class=" pull-right">
                <ul class="nav navbar-nav">
              <li id="logout1"><a href="index.jsp"><img src="img/chat.png"></a></li>
              <li id="logout1"><a href="index.jsp"><img src="img/profile.png"></a></li>
               <li id="logout"> <a href="index.jsp"><center></center><img src="img/logout.png"></center></a></li>
                  </ul>
                  <div class="name1">&nbsp;&nbsp;&nbsp;&nbsp;<strong><span class="name">${Name}</span></strong></div>
                </div>    
            </div>
            
            
            <div class="row row1">
                <div class=" col-sm-2">
            <a href="calendar.jsp" class="btn btn-default button2 link3">Schedule 1 </a><br><br>
            	<a href="AddMajorClasses.jsp" class="btn btn-default button2 link3">Make a new<br> schedule </a>           
            
                </div>
                <div class=" col-sm-10">
                     <center>
                    <a href="AddMajorClasses.jsp"class="btn btn-default button1">Add Major Classes</a>
                     &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="AddDecClasses.jsp" class="btn btn-default button1 active">Add DEC Classes</a>
                    </center>
                    <br><br>
                    <center>    <label>  <input type="radio"name="optionsRadios" id="optionsRadios1" >Choose DEC Category</label> <input type="text"> <label> <input type="radio" name="optionsRadios" id="optionsRadios2">Choose by Department</label><input type="text" >
                    </center>
                    <div class="col-sm-12">
                    
                     <table class=" table table-bordered  table-responsive">
                             
                            <thead>
                            <th>SELECT</th> 
                            <th>CODE</th>
                            <th>DEPT</th> 
                           <th>NAME</th> 
                            <th>NUM</th> 
                           <th>INSTRUCTOR</th> 
                            <th>DAYS</th> 
                           <th>START</th> 
                            <th>END</th> 
                           <th>REVIEW</th> 
                            
                            </thead>
                             <tbody>
                                 <tr>
                                 <td>
                             <input type="checkbox">   
                                 </td>
                                 <td>SOC</td>
                                 <td>105</td>
                                 <td>Introduction Sociology</td>
                                 <td>01</td>
                                 <td>Linda Wicks</td>
                                <td>MW</td>
                                 <td>02:30 pm</td>
                                  <td>03:50 pm</td>
                                 <td>yes</td>
                    
                                 </tr>
                                  <tr>
                                 <td>
                             <input type="checkbox">   
                                 </td>
                                 <td>POL</td>
                                 <td>102</td>
                                 <td>Intro to American Gvment</td>
                                 <td>02</td>
                                 <td>Mathew lebo</td>
                                <td>MF</td>
                                 <td>01:00 pm</td>
                                  <td>02:20 pm</td>
                                 <td>yes</td>
                    
                                 </tr>
                        <tr>
                                 <td>
                             <input type="checkbox">   
                                 </td>
                                 <td>WST</td>
                                 <td>102</td>
                                 <td>Intro Women Stds in Soc Sci</td>
                                 <td>01</td>
                                 <td>Choonib Lee</td>
                                <td>TuTh</td>
                                 <td>10:00 am</td>
                                  <td>11:20 am</td>
                                 <td>yes</td>
                    
                                 </tr>
                       
                                  <tr>
                                 <td>
                             <input type="checkbox">   
                                 </td>
                                 <td>ANT</td>
                                 <td>102</td>
                                 <td>Intro to Cultural Anthro</td>
                                 <td>01</td>
                                 <td>David Hicks</td>
                                <td>MWF</td>
                                 <td>08:00 am</td>
                                  <td>08:53 am</td>
                                 <td>yes</td>
                    
                                 </tr>
                                     
                        </tbody>
                    </table></div>
                    <center>
                    <button class="btn btn-default button1">Preview</button>
                    <button class="btn btn-default button1">Done</button>
                    </center>
                </div>
            </div>
            </div>
             <footer>
        <div class = "pull-right">
        <strong><a href = "Help.jsp" class = "links">About</a></strong>&nbsp;&nbsp;
         <strong><a href = "#author.jsp" class = "links">Author</a></strong>&nbsp;&nbsp;
        </div>
        </footer>
        <script src="js/response.min.js"></script>      


    <script src="js/validation.js"></script>      

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script>
            $('.dropdown-toggle').dropdown();

            $('#example').tooltip(options)
        </script>

    </body>

</html>
                            











<%-- 
    Document   : AddMajorClasses
    Created on : Mar 14, 2014, 11:21:43 AM
    Author     : sanoussysangary
--%>


<jsp:useBean id="b" scope="request" class="schedula.ClassObj" />
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Major Classes Page - Schedula </title>
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
         <link href="css/post.css" rel="stylesheet">
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="//cdn.datatables.net/1.9.4/css/jquery.dataTables.css">
     <link href="//datatables.net/download/build/nightly/jquery.dataTables.css" rel="stylesheet" type="text/css" />

		<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
		<script src="//datatables.net/download/build/nightly/jquery.dataTables.js"></script>

        <link href="css/stylesheet.css" rel="stylesheet">
     
        <style>
            body{
                background-image: url(img/screen.png);
                background-repeat: no-repeat;
                background-size:  cover;
            }  
            .row1{
                padding-top: 10%;
            }

         <link href="css/stylesheet.css" rel="stylesheet">
         
        <style> 
        
       body {
	font: 90%/1.45em "Helvetica Neue", HelveticaNeue, Verdana, Arial, Helvetica, sans-serif;
	margin: 0;
	padding: 0;
	color: #red;
	background-color: #red;
}


div.container {
	min-width: 980px;
	margin: 0 auto;
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
               
               
        </style>
         <link href="css/bootstrap.css" rel="stylesheet">
       
    </head>
    <body class="main2">
    <div class="container">
        <div class="row">
        
            <div class=" pull-right">
            <br>
              <ul class="nav navbar-nav">
              <li id="logout1"><a href="index.jsp"><img src="img/chat.png"></a></li>
              <li id="logout1"><a href="index.jsp"><img src="img/profile.png"></a></li>
               <li id="logout"> <a href="index.jsp"><center></center><img src="img/logout.png"></center></a></li>
                  </ul>
                  <div class="name1">&nbsp;&nbsp;&nbsp;&nbsp;<strong><span class="name">${Name}</span></strong></div>
                </div>             
            
            
            <div class="row row1">
                <div class="col-sm-2">
                <a href="calendar.jsp" class="btn btn-default button2 link3">Schedule 1 </a><br><br>
            	<a href="AddMajorClasses.jsp" class="btn btn-default button2 link3">Make a new<br> schedule </a>           
                </div>
                <div class=" col-sm-10">
                 <div class=" col-sm-offset-1 col-sm-11">
               
                     <center>
                    <a href="AddMajorClasses.jsp" class="btn btn-default button1 active">Add Major Classes</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                           <a href="AddDecClasses.jsp" class="btn btn-default button1">Add DEC Classes</a>
                    </center><br>
                    <form id = "schedule"  >
                    <div class="col-sm-12">
                    <table class="table table-bordered table-responsive" id="example"> 
                            <thead>
                            <tr>
                            <th></th> 
                            <th>CODE</th>
                            <th>COURSE</th> 
                           <th>NAME</th> 
                            <th>SECTION</th> 
                           <th class="instructor">INSTRUCTOR</th> 
                            <th>DAYS</th> 
                           <th>START</th> 
                            <th>END</th>  </tr>
                             </thead>
                             <tbody>
                      <c:forEach items="${List}" var="curr">
                     <tr>
                     <td> <input type="checkbox" name ="checkedClasses" value = "${curr.courseId}"></td>
                     <td>${curr.courseId}</td>
                     <td>${curr.courseCode}</td>
                     <td>${curr.courseName}</td>
                     <td>${curr.sectionNo}</td>
                     <td>${curr.professorId}</td>
                     <td>${curr.days}</td>    
                     <td>${curr.startTime}</td>
                     <td>${curr.endTime}</td>
                      </tr>
                        </c:forEach>
                                 </tr>
   
                        </tbody>
                    </table><br><br>
                    </div>
                    <center>
                    <button class="btn btn-default button1"  onclick= "index.jsp"'>Preview</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                  
                    
                    <button class="btn btn-default button1"  onclick="form.action = '/make_schedule'">Done</button>
                    </center>
                </div>
                </div>
            </div>
            </div>
               </form>
             <footer>
        <div class = "pull-right">
        <strong><a href = "Help.jsp" class = "links">About</a></strong>&nbsp;&nbsp;
         <strong><a href = "#author.jsp" class = "links">Author</a></strong>&nbsp;&nbsp;
        </div>
        
        </footer>
        <script>
            $(function() {
                
                $('#richBoys').dataTable( {
                   "bPaginate":true,
                   "iDisplayLength": 10,
                    "sPaginationType": "full_numbers"
                    
                    
                    
                });
            });

           
        $(document).ready(function() {
            $('#example').dataTable( {
                "bPaginate": false,
                "bLengthChange": false,
                "bFilter": true,
                "bSort": false,
                "bInfo": false,
                "bAutoWidth": false
            } );
        } );
        

        </script>
         
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>
                            











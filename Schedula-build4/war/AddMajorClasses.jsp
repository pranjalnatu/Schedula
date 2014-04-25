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
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
          <%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
        <title>JSP </title>
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/post.css" rel="stylesheet">
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="//cdn.datatables.net/1.9.4/css/jquery.dataTables.css">
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
                    <c:forEach items="${List}" var="current">
                     <tr>
                     <td>
                                <input type="checkbox">   
            </td>
          <td><c:out value="${current.category}" /><td>
          <td><c:out value="${current.courseCode}" /><td>
          <td><c:out value="${current.courseName}" /><td>
          <td><c:out value="${current.sectionNo}" /><td>
          <td><c:out value="${current.days}" /><td>    
          <td><c:out value="${current.startTime}" /><td>
          <td><c:out value="${current.endTime}" /><td>
             
          
        </tr>
                             </c:forEach>
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
             <footer>
        <div class = "pull-right">
        <strong><a href = "Help.jsp" class = "links">About</a></strong>&nbsp;&nbsp;
         <strong><a href = "#author.jsp" class = "links">Author</a></strong>&nbsp;&nbsp;
        </div>
        </footer>
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
                            











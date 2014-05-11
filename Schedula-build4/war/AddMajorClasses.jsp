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
        <title>Add Major Classes Page - Schedula </title>
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
         <link href="css/post.css" rel="stylesheet">
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="//cdn.datatables.net/1.9.4/css/jquery.dataTables.css">
     <link href="//datatables.net/download/build/nightly/jquery.dataTables.css" rel="stylesheet" type="text/css" />

		<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
		<script src="//datatables.net/download/build/nightly/jquery.dataTables.js"></script>

        <link href="css/bootstrap.css" rel="stylesheet">
         <link href="css/stylesheet.css" rel="stylesheet">
       
       
    </head>
    <body class="main2">
    <div class="container">
        <div class="row">
        
          <div class=" pull-right">
				<br>
				<ul class="nav navbar-nav">
					<li id="chat"><a href="index.jsp"><img src="img/chat.png"></a></li>
					<li id="profile"><a href="index.jsp"><img
							src="img/profile.png"></a></li>
					<li id="logout"><a href="index.jsp"><img
							src="img/logout.png"></a>&nbsp;
					<!--<strong><span id="userid" class="name">${Name}</span></strong></li>-->
				</ul>
				<div class="name1">
					&nbsp;&nbsp;&nbsp;&nbsp;<strong><span id="userid"
						class="name">${Name}</span></strong>
				</div>
			</div>
			  
            <div class="row row1">
                <div class="col-sm-2">
                <a href="calendar.jsp" class="btn btn-default button2 link3">Schedule 1 </a><br><br>
            	<a href="AddMajorClasses.jsp" class="btn btn-default button2 link3">Make a new<br> schedule </a>           
                </div>
                <div class=" col-sm-10">
                 <div class=" col-sm-offset-1 col-sm-11">
               
                     <center>
                    <a href="AddMajorClasses.jsp" class="btn btn-default buttons active link4" >Add Major Classes</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                           <a href="AddDecClasses.jsp" class="btn btn-default buttons link4">Add DEC Classes</a>
                    </center><br>
                    <div class="col-sm-12">
                    <table class="table table-bordered table-responsive" id="example"> 
                            <thead>
                            <tr>
                            <th></th> 
                            <th>CODE</th>
                            <th>DEPT</th> 
                           <th>NAME</th> 
                            <th>NUM</th> 
                           <th>INSTRUCTOR</th> 
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
                                
                       
                        </tbody>
                    </table><br><br>
                    </div>
                    <center>
                    <button class="btn btn-default1">Preview</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;

                  
                    <button class="btn btn-default1">Done</button>
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
        <script>
        
        $(function() {
            
            $('#example').dataTable( {
               "bPaginate":true,
               "iDisplayLength": 10,
                "sPaginationType": "full_numbers"
                
                
                
            });
        });

      
        
           
        $(document).ready(function() {
            $('#exam').dataTable( {
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
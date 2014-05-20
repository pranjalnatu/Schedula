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
        
      <%--    <link href="css/post.css" rel="stylesheet"> --%>
      
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="//cdn.datatables.net/1.9.4/css/jquery.dataTables.css">
     <link href="//datatables.net/download/build/nightly/jquery.dataTables.css" rel="stylesheet" type="text/css" />
         
		<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="//datatables.net/download/build/nightly/jquery.dataTables.js"></script>
		
		         <script src="js/asynch1.js"></script>
		
		        <script src="js/bootstrap.min.js"></script>
		

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
               
              #myModal .modal-dialog{
              width:80%;
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
            	<a href="AddMajorClasses.jsp" class="btn btn-default button2 link3">Make a new<br> 
 </a>           
                </div>
                <div id = "test1"    class=" col-sm-10">
                
              
              
              
              
              
              
              <div id="myModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                          <button class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                               <h4 class="button1 modal-title"><center>Schedule 1</center></h4>
           
                                 </div>
                                <div class="modal-body">
                                
                                 <div id = "sc" class=" col-sm-12">
                     
                    <div class="col-sm-12">
                     <div class="col-sm-12">
                   
                     
                    <br>
                  
                    <table id ="scheduleTable" class="  table table-bordered  table-condensed">
                            <thead>
                            <tr>
                             <th>Time</th>
                            
                            <th>MONDAY</th>
                            <th>TUESDAY</th> 
                           <th>WEDNESDAY</th> 
                            <th>THUESDAY</th> 
                           
                            <th>FRIDAY</th> 
                            
                          
                           </tr>
                            </thead>
                             <tbody>
                                 <tr id = '700' class = "clearTable">
                                 <th rowspan="2" id="s">7:00 AM</th>
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = '750' class = "clearTable">
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = '800' class = "clearTable">
                                 <th rowspan="2">
                             8:00 AM   
                                 </th>
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = '850' class = "clearTable">
                               <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 
                                      <tr id = '900' class = "clearTable">
                                 <th rowspan="2">9:00 AM</th>
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 
                                 </tr>
                                 <tr id = '950' class = "clearTable">
                               <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = '1000' class = "clearTable">
                                 <th rowspan="2">
                             10:00 AM   
                                 </th>
                                 
                               <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "1050" class = "clearTable">
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "1100" class = "clearTable">
                                 <th rowspan="2">11:00 AM</th>
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "1150" class = "clearTable">
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "1200" class = "clearTable">
                                 <th rowspan="2">
                             12:00 PM   
                                 </th>
                                 <td class ="MWF MW MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "1250" class = "clearTable">
                                 <td class ="MWF MW MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "1300" class = "clearTable">
                                 <th rowspan="2">1:00 PM</th>
                              <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>   
                                 </tr>
                                   <tr id = "1350" class = "clearTable">
                                <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "1400" class = "clearTable">
                                 <th rowspan="2">
                                   2:00 PM   
                                 </th>
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "1450" class = "clearTable">
                                 <td class ="MWF MW M"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                  <tr id = "1500" class = "clearTable">
                                 <th rowspan="2">3:00 PM</th>
                               <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "1550" class = "clearTable">
                               <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                   <tr id = "1600" class = "clearTable">
                                 <th rowspan="2">
                             4:00 PM 
                                 </th>
                                
                                <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "1650" class = "clearTable">
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>                                 </tr>
                                  <tr id = "1700" class = "clearTable">
                                 <th rowspan="2">5:00 PM</th>
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 
                                 </tr>
                                 <tr id = "1750" class = "clearTable">
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "1800" class = "clearTable">
                                 <th rowspan="2">
                             6:00 PM  
                                 </th>
                               <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "1850" class = "clearTable">
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "1900" class = "clearTable">
                                 <th rowspan="2">
                             7:00 PM  
                                 </th>
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "1950" class = "clearTable">
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                    <tr id = "2000" class = "clearTable">
                                 <th rowspan="2">
                             8:00 PM  
                                 </th>
                                <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "2050" class = "clearTable">
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>                                 
                                 </tr>
                                 <tr id = "2100" class = "clearTable">
                                 <th rowspan="2">
                                  9:00 PM  
                                 </th>
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "2150" class = "clearTable">
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "2200" class = "clearTable">
                                 <th rowspan="2">
                                  10:00 PM  
                                 </th>
                              <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                 <tr id = "2250" class = "clearTable">
                                 <td class ="MWF MW M MF"></td>
                                 <td class ="TUTH TU"></td>
                                 <td class ="MW MWF W"></td>
                                 <td class ="TUTH TH"></td>
                                 <td class ="MWF MF F"></td>
                                 </tr>
                                
                        </tbody>
                    </table>
                    </div>
                    </div>
                    </div>
           
                                
                                
                                  <div class="modal-footer">
                                           </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div> 
                
                
                 
                
                
                
                 <div  id = "test2" class=" col-sm-offset-1 col-sm-11">
               
                     <center>
                    <button class="btn btn-default button1 active" id = "addmajor" onclick = "showMajor()">Add Major Classes</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                           <button id = "adddec" class="btn btn-default button1" onclick = "showDec()">Add DEC Classes</button>
                    </center><br>
                    
                    
                    <div id = "majorTable" class="col-sm-12">
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
                     <td> <input id = "${curr.courseId}" type="checkbox" name = "checkedClasses" class = "cb" value = "${curr.courseId}"></td>
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
                                
   
                        </tbody>
                    </table><br><br>
                    </div>
                    <div id = "decTable" class="col-sm-12">
                    
                     <table id = "example2" class=" table table-bordered table-responsive">
                             
                            <thead>
                            <th>SELECT</th> 
                            <th>ID</th>
                            <th>COURSE</th> 
                           <th>NAME</th> 
                            <th>SEC</th> 
                           <th>INSTRUCTOR</th> 
                            <th>DAYS</th> 
                           <th>START</th> 
                            <th>END</th> 
                            <th>EASE</th>
                            <th>RATING</th>
                            </thead>
                             <tbody>
                                 <c:forEach items="${ListofDecs}" var="curr">
                     <tr>
                     <td> <input id = "${curr.courseId}" type="checkbox" name = "checkedClasses" class = "cb" value = "${curr.courseId}"></td>
                     <td>${curr.courseId}</td>
                     <td>${curr.courseCode}</td>
                     <td>${curr.courseName}</td>
                     <td>${curr.sectionNo}</td>
                     <td>${curr.proffName}</td>
                     <td>${curr.days}</td>    
                     <td>${curr.startTime}</td>
                     <td>${curr.endTime}</td>
                     <td>${curr.easiness}</td>
                     <td>${curr.overall}</td>
                      </tr>
                        </c:forEach>
                                 
   
                                     
                        </tbody>
                    </table></div>
                    
                                       <center>
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;
                  
                    
                    <button class="btn btn-default button1">Done</button>
                     <a href="#myModal" data-toggle="modal" class="btn btn-default button1"  onclick= "preview()">Preview</a>
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
                   "iDisplayLength":6,
                   "bLengthChange": false,
                    "sPaginationType": "full_numbers"
                    
                 });
            });

           
            
            
              $(function() {
                
                $('#example2').dataTable( {
                   "bPaginate":true,
                   "iDisplayLength":6,
                   "bLengthChange": false,
                    "sPaginationType": "full_numbers"
                    
                 });
            });
            
            
            
            
            
            
            $('input[type=checkbox]').change(function () {
                //if ($(this).attr("checked")) 
                //Here do the stuff you want to do when 'unchecked'
                   checkConflicts();
            
            });
            
       
            
            
      $(document).ready(function() {
           // $('#rtht').dataTable( {
             //   "bPaginate": false,
               // "bLengthChange": false,
                //"bFilter": true,
                //"bSort": false,
               // "bInfo": false,
               // "bAutoWidth": false
            //} );
           
       //    if(majorVisible)
           $("#decTable").hide();
           $("#sc").hide();
        } );
        

        </script>
         
        
        </div>

    </body>

</html>
                            











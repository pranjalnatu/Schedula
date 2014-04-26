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
       
        <title>Student Homepage - Schedula</title>
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/post.css" rel="stylesheet">
        <link href="css/stylesheet.css" rel="stylesheet">
        <script type="text/javascript" src="/_ah/channel/jsapi"></script>
        <script src="./js/AjaxUtil.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>	  
 
    </head>
    <body class="main2">
    <div class="container">
        <div class="row">
        
            <div class=" pull-right">
            <br>
               <ul class="nav navbar-nav">
              <li id="logout1"><a href="index.jsp"><img src="img/chat.png"></a></li>
              <li id="logout1"><a href="index.jsp"><img src="img/profile.png"></a></li>
               <li id="logout"> <a href="index.jsp"><img src="img/logout.png"></a>&nbsp;<strong><span id="userid" class="name">${Name}</span></strong></li>
                  </ul>
                  
                </div>            
                <div class="row row1">
                <div class=" col-sm-2">
                <a href="AddMajorClasses.jsp" class="btn btn-default button2 link3">Make a new<br> schedule </a>           
                
                </div>
               </div>
               </div></div>
               <div id="chatMessagesPage"></div>
               <div id="friendsListPage"></div>
             <script src="js/response.min.js"></script>      
       <script src="js/validation.js"></script>      

        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
<script>

$(document).ready(function(){
	
//alert("HI!")
	//load();	
});

</script>
    </body>

</html>
                            











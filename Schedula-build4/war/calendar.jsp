

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>My Calendar </title>
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/post.css" rel="stylesheet">
       

        <style>
            body{
                background-image: url(img/background.png);
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
               td{
   border-color: black;
}
               td.a {
               background-color:#58ACF8;
               }
               td.b{
               background-color:#8181F7;
               }
               td.c{
               background-color:blue;
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
                <div class=" col-sm-2">
                <a href="calendar.jsp" class="btn btn-default button active">Schedule 1 </a><br><br>
                <button class="btn btn-default button">Schedule 2 </button><br><br>
                <a  href="AddMajorClasses.jsp"class="btn btn-default button"> <span class="glyphicon glyphicon-edit "></span> </a>
            
                </div>
                <div class=" col-sm-10">
                     
                    <div class="col-sm-12">
                     <div class="col-sm-offset-1 col-sm-12">
                   
                      <h4 class="button1">Schedule 1</h4>
                    <br>
                  
                    <table class="  table table-bordered  table-condensed">
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
                                 <tr>
                                 <th rowspan="3">7:00 AM</th>
                                 <td> </td>
                                 <td ></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <th rowspan="3">
                             8:00 AM   
                                 </th>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                              
                                 <td></td>
                                 <td rowspan="4" class="c"></td>
                               
                                 <td></td>
                                  <td rowspan="4" class="c"></td>
                               
                                <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                  
                               
                                 <td></td>
                                   
                               
                                <td></td>
                                 
                                      <tr>
                                 <th rowspan="3">9:00 AM</th>
                                 <td> </td>
                                 <td></td>
                                 <td></td>
                                  <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 
                               
                                 <td></td>
                                   
                               
                                <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <th rowspan="3">
                             10:00 AM   
                                 </th>
                                 
                                 <td></td>
                                 <td rowspan="4" class="b"></td>
                                
                                 <td></td>
                                  <td rowspan="4" class="b"></td>
                                
                                <td></td>
                                 <td></td>
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                        <tr>
                                 <th rowspan="3">11:00 AM</th>
                                 <td> </td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <th rowspan="3">
                             12:00 PM   
                                 </th>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                      <tr>
                                 <th rowspan="3">1:00 PM</th>
                                 
                                 <td rowspan=4 class="a"></td>
                                 <td></td>
                                  <td rowspan=4 class="a"></td>
                                
                                 <td></td>
                                <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 
                                 <td></td>
                                  
                                
                                
                                <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                
                                 <td></td>
                                
                                
                                 <td></td>
                                <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <th rowspan="3">
                             2:00 PM   
                                 </th>
                                 <td></td>
                                
                                 <td></td>
                                  
                                
                                 <td></td>
                                <td></td>
                                 <td></td>
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 
                                 <td rowspan=4 class="b"></td>
                                 <td></td>
                                  <td rowspan=4 class="b"></td>
                               
                                 <td></td>
                                <td></td>
                                
                                 
                                 </tr>
                                         <tr>
                                 <th rowspan="3">3:00 PM</th>
                                 <td> </td>
                                
                                 <td></td>
                                 
                               
                                 <td></td>
                                <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                
                                 <td></td>
                                  
                               
                                 <td></td>
                                <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 
                                 <td></td>
                                 
                               
                                 <td></td>
                                <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <th rowspan="3">
                             4:00 PM 
                                 </th>
                                
                                 <td rowspan="4" class="a"></td>
                                 <td></td>
                                 <td rowspan="4" class="a"></td>
                                
                                 <td></td>
                                <td></td>
                                
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                      <tr>
                                 <th rowspan="3">5:00 PM</th>
                                 <td> </td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <th rowspan="3">
                             6:00 PM  
                                 </th>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <th rowspan="3">
                             7:00 PM  
                                 </th>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                    <tr>
                                 <th rowspan="3">
                             8:00 PM  
                                 </th>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 </tr>
                                <tr>
                                 <th rowspan="3">
                             9:00 PM  
                                 </th>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                     <tr>
                                 <th rowspan="3">
                             10:00 PM  
                                 </th>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                                 <tr>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 
                                 </tr>
                   
                        </tbody>
                    </table>
                    </div>
                    </div>
                    <center>
                    <button class="btn btn-default button1">Edit Schedule</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="btn btn-default button1">Edit Reminders</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                     <button class="btn btn-default button1">Delete Schedule</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="btn btn-default button1">Print</button>
                   
                    </center>
                </div>
            </div>
            <br><br><br>
            </div>
        
          <script src="js/response.min.js"></script>      


        <script src="js/validation.js"></script>      

        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>
                            











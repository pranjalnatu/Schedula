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
         <script src="js/asynch1.js"></script>
          <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <title>Class Information Page - Schedula</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/stylesheet.css" rel="stylesheet">
        
    <script src="js/asynch1.js"></script>       
        
   
   
        <style>
            
            .thumbnail{
               width:250px;
               height:100px;
               line-height:-26em;
               overflow:auto;
               padding:5px;">
                
               }
            select
            {
            width: 300px;}           
        </style>
   
           </head>
    <body>                       
   
           </head>
    <body class="main1">
    <script src="js/asynch1.js"></script>
        <div class="container">
            <div class="row">
                <div class="col-sm-offset-4">
                    <div class=" col-sm-8 b">
                     <div class="col-sm-12 col-sm-offset-2">
                       <h3>Additional Information</h3><br>
                       </div>
                        <div class="col-sm-12">
                        <form action = "/additional_info">
                            <div class="form-group col-sm-offset-2 col-sm-6">
                                <select name = "selectClass" id = "major" class="form-control">
                                    <option value = "CSE">Select a Major</option>
                                    <option value = "CSE">Computer Science</option>
                                    <option value = "AMS">Applied Mathematics and Statistics</option>
                                    <option value = "MEC">Mechanical Engineering</option>
                               </select>

                            </div>
                            <div class="form-group  col-sm-offset-2 col-sm-6">
                                <select id = "major2" name = "selectClass" class="form-control ">

                                    <option>Select a Second Major</option>
                                    <option>Computer Science</option>
                                    <option>Applied Mathematics and Statistics</option>
                                    <option>Mechanical Engineering</option>

                                </select> 
                            </div>
                            <div class="col-sm-12">
                            <h4>What major requirements have you finished?</h4>
</div>
                           <div id = "classes" class="form-group thumbnail col-sm-offset-2 col-sm-7">
                            
                            
                            <input type="checkbox" name="vehicle" value="Bike"> CSE310 <br>
                           <input type="checkbox" name="vehicle" value="Car">  AMS301 <br>
                           <input type="checkbox" name="vehicle" value="Bike"> MEC325<br>
                           <input type="checkbox" name="vehicle" value="Car"> MAT131<br>
                           <input type="checkbox" name="vehicle" value="Bike"> CHEM132<br>
                           <input type="checkbox" name="vehicle" value="Car"> PHY 131<br>
                           <input type="checkbox" name="vehicle" value="Bike"> CSE390<br>
                            <input type="checkbox" name="vehicle" value="Car"> AMS310<br>
                           <input type="checkbox" name="vehicle" value="Bike"> WRT102<br>
                            
                            
                         </div>

                            <div class="col-sm-12">
                            <h4>What DEC requirements have you finished?*</h4>
</div>
                            <div class="form-group thumbnail col-sm-offset-2 col-sm-7">
                            
                            
                             <input type="checkbox" name="vehicle" value="A"> DEC A <br>
                            <input type="checkbox" name="vehicle"  value="B"> DEC B <br>
                            <input type="checkbox" name="vehicle" value="C"> DEC C <br>
                            <input type="checkbox" name="vehicle" value="D"> DEC D <br>
                            <input type="checkbox" name="vehicle" value="E"> DEC E <br>
                            <input type="checkbox" name="vehicle" value="F"> DEC F <br>
                           
                           </div>
                            <center class="col-sm-10 ">
                          <button type="submit" class="btn  button">Submit</button>
                            </center>
                        </form>

</div>
                    </div>
                </div>
            </div>
            <div id="footer" class="pull-right">
            <a href="Help.jsp" class="link1">About</a>&nbsp;&nbsp;
            <a href="#author.jsp" class="link1">Author</a>&nbsp;&nbsp;
            </div>
            <script>
            var major = $("#major");
            
            major.change(function() {
            	//var b = $('#major').filter(":selected").text();
            	var c = $('#major option:selected').val();
            	loadClass(c);
             /**$.ajax({  
		    type: "GET",  
		    url: "/schedula_build3", 
		   // data: major.serialize(),
		    //data: "para="+p,  
		    success: function(data){  
		      
		    	var result  = data;
		    	$("#classes").append("<option value=9> + result +</option>");
		      
		    },
	         error: function(){alert("fail");}
		    return false;
		  }); 	
            	**/
            	//loadClass(c)
            																																							
            	//alert(c);
            	
        	});
</script>


        </div>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>

</html>

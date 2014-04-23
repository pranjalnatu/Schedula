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
         <link rel="stylesheet" href="css/multiple-select.css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>

        <style>
            select {
                width: 300px;
            }
        </style>
        
        <style>
            body{
                background-image: url(img/sch.png);
                background-repeat: no-repeat;
                background-size:  cover;
             
                }  
                       
        </style>
   
     <script src="http://harvesthq.github.io/chosen/chosen.jquery.js"></script>
    <script>
    $(function(){
        $(".chzn-select").chosen();
    }); 
    </script>
 
   
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
                            <div class="form-group col-sm-offset-2 col-sm-6">
                                <select class="form-control">
                                    <option>Select a Major</option>

                                    <option>Computer Science</option>
                                    <option>Applied Mathematics and Statistics</option>
                                    <option>Mechanical Engineering</option>

                                </select>

                            </div>
                            <div class="form-group  col-sm-offset-2 col-sm-6">
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
                            <!--  
                                <select data-placeholder="Choose major you have finished" multiple class=" form-control chosen-select" multiple="true" name="faculty">
                                    <option value="CSE 101">CSE 101</option>
                                    <option value="CSE 102">CSE 102</option>
                                    <option value="CSE 110">CSE 110</option>
                                    <option value="CSE 114">CSE 114</option>
                                    <option value="CSE 130">CSE 130</option>
                                     <option value="CSE 101">CSE 101</option>
                                    <option value="CSE 102">CSE 102</option>
                                    <option value="CSE 110">CSE 110</option>
                                    <option value="CSE 114">CSE 114</option>
                                    <option value="CSE 130">CSE 130</option>
                                   <option value="CSE 101">CSE 101</option>
                                    <option value="CSE 102">CSE 102</option>
                                    <option value="CSE 110">CSE 110</option>
                                    <option value="CSE 114">CSE 114</option>
                                    <option value="CSE 130">CSE 130</option>
                              
                                </select>-->
                                
             <select data-placeholder="Choose major you have finished" id="ms" multiple="multiple" class="form-control">
            <option value="CSE 114">CSE 114</option>
            <option value="CSE 214">CSE 214</option>
            <option value="CSE 215">CSE 215</option>
            <option value="CSE 219">CSE 219</option>
            <option value="CSE 220">CSE 220</option>
            <option value="CSE 300">CSE 300</option>
            <option value="CSE 303">CSE 303</option>
            <option value="CSE 304">CSE 304</option>
            <option value="CSE 305">CSE 305</option>
            <option value="CSE 306">CSE 306</option>
            <option value="CSE 307">CSE 307</option>
            <option value="CSE 308">CSE 308</option>
            <option value="CSE 310">CSE 310</option>
            <option value="CSE 311">CSE 311</option>
            <option value="CSE 312">CSE 312</option>
            <option value="CSE 320">CSE 320</option>
            <option value="CSE 373">CSE 373</option>
            
            </select>
                                
                                
 
                            </div>

                            <div class=" col-sm-12">
                            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;What DEC requirements have you finished?</h4>
</div>
                            <div class="form-group col-sm-offset-2 col-sm-7">

           <select data-placeholder="Choose DEC you have finished" id="mb" multiple="multiple" class="form-control">
            <option value="DEC A">DEC A</option>
            <option value="DEC B">DEC B</option>
            <option value="DEC C">DEC C</option>
            <option value="DEC D">DEC D</option>
            <option value="DEC E">DEC E</option>
            <option value="DEC F">DEC F</option>
            <option value="DEC G">DEC G</option>
            <option value="DEC H">DEC H</option>
            <option value="DEC I">DEC I</option>
            <option value="DEC J">DEC J</option>
            <option value="DEC K">DEC K</option>
           
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
      <script src="js/jquery.multiple.select.js"></script>
       
        <script>
            
        
            $(function() {
                $('#ms').multipleSelect();
                
            });
            $(function() {
                $('#mb').multipleSelect();
                
            });
        </script>
      
    </body>

</html>

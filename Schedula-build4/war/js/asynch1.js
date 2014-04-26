

function load(){

document.location.href = "/schedula_build1";
	//alert("okay good");
	// Handler for .ready() called.
	
}



//$("#major").change(function (){alert("tutty")});





function loadClass(a)
{
	
//alert(a);
	
	var p = a;

{
	//var p = "CSE";
	$("#classes").empty();
	//$("#classes").append('<option value=>My option</option>');

	$.ajax({  
	    type: "GET",  
	    url: "/schedula_build1", 
	   // data: major.serialize(),
	    //data: "para="+p,  
	    data:{"majorVal":p} ,
	   success: function(data){  
	      //alert(a);
	    	var result  = data;
	    	
	    	
	         var parsedJSON = jQuery.parseJSON(result);
	    	
	    	var data1 =  parsedJSON.data[0]["Category"];
	    	var len = parsedJSON.data.length;
	    	
	    	for (i = 0;i < len; i++)
	    		{
	    		var data1 = parsedJSON.data[i]["CourseCode"];	
	    	  $("#classes").append("<input type = 'checkbox' name = 'vv' value = '"+ data1 +"'>" +  data1 + "<br>");
		      // $("#classes").append("<input type = 'checkbox' name = 'vv' value = '"+data+"'>"+data+"<br>");
	    		}
	    	
	    	
	    	
	    	
	    	//String[] mylist = var Arraly = (ArrayList) 
	    	
	    	
	    },
         error: function(){alert("fail");}
	    //return false;
	  }); 	
	

}//if braces	
	

}
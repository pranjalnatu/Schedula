

function load(){

document.location.href = "/schedula_build1";
	//alert("okay good");
	// Handler for .ready() called.
	
}



//$("#major").change(function (){alert("tutty")});





function loadClass(a)
{
	
//alert(a);
if (a === "Computer Science")
	
{
	var p = "CSE";
	$("#classes").empty();
	//$("#classes").append('<option value=>My option</option>');

	$.ajax({  
	    type: "GET",  
	    url: "/schedula_build1", 
	   // data: major.serialize(),
	    //data: "para="+p,  
	   success: function(data){  
	      //alert(a);
	    	var result  = data;
	    	$("#classes").append("<input type = 'checkbox' name = 'vv' value ='something'>" + result + "<br>");
	       
	    	//String[] mylist = var Arraly = (ArrayList) 
	    	
	    	
	    },
         error: function(){alert("fail");}
	    //return false;
	  }); 	
	

}//if braces	
	

}
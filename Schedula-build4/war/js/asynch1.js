var majorVisible = true;
var decVisible = false;


function testing()
{
	$("#7").find(".MWF").text("yes");
}

function caseHide()
{
	
	
	//$("#test2").hide();
	$("#sc").show();
	//$("#700").find(".MWF").text("yes");

}


function clearSchedule()
{
	
jQuery('#scheduleTable td').html('');
jQuery('#scheduleTable td').css('background','white');


}


function preview()
{

	var table = $("#example").dataTable();
	var table2 = $("#example2").dataTable();
	//this gets theselected checkboxes and pushes it into an array 
	var arrayt = [] ;

	$('input[name=checkedClasses]:checked', table.fnGetNodes() ).each(function() {
		arrayt.push($(this).val());
	});

	$('input[name=checkedClasses]:checked', table2.fnGetNodes() ).each(function() {
		arrayt.push($(this).val());
	});

//{"checkedValuesss": arrayt}

	$.ajax({  
		type: "POST",
		url: "/preview_schedule",  
		data: {"allClasses": arrayt},
//		dataType: "text",
//		cache
		success: function(data){  
              clearSchedule();
			//var result  = data;
			var result = data;
			
			if (result === "1")
				{
				
				alert("Please select at least one class")
				
				}
			else{

			 var parsedJSON = jQuery.parseJSON(result);

			var cat =  parsedJSON[0].category;
			//alert(parsedJSON[0]["time"]);
			
			var len = parsedJSON.length;
			
			//window.location= "/calendar.jsp";
			
		
			//$("#700").find(".MWF").text("yes");
			
			
			caseHide();
			
           // var str = "";
		      for (i = 0;i < len; i++)
			   {
                 
			   
				var intlen = parsedJSON[i].interval;
				var day = parsedJSON[i].days;
				var start = parsedJSON[i].sPos;
				var ti = parsedJSON[i].time;
				var classN = parsedJSON[i].courseCode;
				for (x = 0;x <= intlen;x++)
					{
					var stpos = start + "";
					if (x < 1){
					$("#"+stpos).find("."+day).text(classN);
					$("#"+stpos).find("."+day).css("font-size", "6pt");
					$("#"+stpos).find("."+day).css("color", "white");
					$("#"+stpos).find("."+day).css("background-color","grey");
					
					}
					else if ( x < 2)   
						{ $("#"+stpos).find("."+day).text(ti);
						  $("#"+stpos).find("."+day).css("font-size", "6pt");
						  $("#"+stpos).find("."+day).css("color", "white");
						  $("#"+stpos).find("."+day).css("background-color","grey");
						 }
					else {
						$("#"+stpos).find("."+day).text("long class");
						$("#"+stpos).find("."+day).css("font-size", "6pt");
						$("#"+stpos).find("."+day).css("color", "white");
						$("#"+stpos).find("."+day).css("background-color","grey");
						}
						start = start + 50;   
					 
					}
				//$("#classes").append("<input type = 'checkbox' name = 'vv' value = '"+ data1 +"'>" +  data1 + "<br>");
               // alert(data1);

			}
			}//else block
			

		},
		error: function(){alert("fail");},
		//return false;
	}); 	

}







function checkConflicts()
{   var table = $("#example").dataTable();
var table2 = $("#example2").dataTable();
//this gets theselected checkboxes and pushes it into an array 
var array = [] ;
$('input[name=checkedClasses]:checked', table.fnGetNodes() ).each(function() {
	array.push($(this).val());
});

$('input[name=checkedClasses]:checked', table2.fnGetNodes() ).each(function() {
	array.push($(this).val());
});




var last = array.length;
var getLast = array[last-1];
//alert(getLast);
//ajax call to the servlet wher arraylist is passed to the servlet in req parameters and recieves back 
//the clashed class and that is not to be added 
$.ajax({  
	type: "GET",
	url: "/make_schedule",  
	data: {checkedValues: array, chutiya:"chutiya"} ,
	success: function(data){  

		var result  = data;
		alert(result);
		//var lol = "#"+ result;
		$("#"+result, table.fnGetNodes()).prop('checked',false);
		$("#"+result,table2.fnGetNodes()).prop('checked',false);
		//$("#"+result).prop('checked', false);




		


	},
	error: function(){alert("fail");}
	
}); 	




}



function load(){

	document.location.href = "/schedula_build1";
	//alert("okay good");
	// Handler for .ready() called.

}



//$("#major").change(function (){alert("tutty")});


function showMajor()

{

	$("#majorTable").show();
	$("#decTable").hide();
	majorVisible = true;
	decVisible = false
}



function showDec()

{
	$("#decTable").show();
	$("#majorTable").hide();
	mojorVisible = false;
	decVisible = true;

}


function loadClass(a)
{

//	alert(a);

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


				}




				//String[] mylist = var Arraly = (ArrayList) 


			},
			error: function(){alert("fail");}
			//return false;
		}); 	


	}//if braces	

}

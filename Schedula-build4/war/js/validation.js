/**
 * 
 */
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
	//global vars
	var form = $("#myform");
	var firstName= $("#firstName");
	var nameInfo = $("#nameInfo");
	var lastName = $("#lastName");
	var lastInfo = $("#lastInfo");
	var email = $("#email");
	var emailInfo = $("#emailInfo");
    var pass = $("#pass");
	var passInfo = $("#passInfo");
	var pass1 = $("#pass1");
	var pass1Info = $("#pass1Info");
	var phone = $("#phone");
    var phoneInfo = $("#phoneInfo");
		
	
	var pass2 = $("#pass2");
	var pass2Info = $("#pass2Info");
	var message = $("#message");

	//On blur
	firstName.blur(validateName);
	lastName.blur(validateLastName);
	email.blur(validateEmail);
	pass.blur(validatePass);
	pass1.blur(validatePass1);
	phone.blur(validatePhone);
	message.blur(validateMessage);
	
	//On key press
	
	firstName.keyup(validateName);
	lastName.keyup(validateLastName);
	email.keyup(validateEmail);
	pass.keyup(validatePass);
	pass1.keyup(validatePass1);
	phone.keyup(validatePhone);
	message.keyup(validateMessage);
	
	//On Submitting
	form.submit(function(){
		if(validateName() & validateLastName() & validateEmail() & validatePass() & validatePass1() & 
				validatePhone() & validateMessage())
			   return true;
			else
				return false;
		});
		
	
	//validation functions
	function validateEmail(){
		//testing regular expression
		var a = $("#email").val();
		var filter = /^[a-zA-Z0-9]+[a-zA-Z0-9_.-]+[a-zA-Z0-9_-]+@[a-zA-Z0-9]+[a-zA-Z0-9.-]+[a-zA-Z0-9]+.[a-z]{2,4}$/;
		
		//if it's valid email
		
		if(filter.test(a)){
			email.removeClass("error");
			emailInfo.text("");
			emailInfo.removeClass("error");
			return true;
		}
		//if it's NOT valid
		else{
			email.addClass("error");
			emailInfo.text("Please enter a valid email address");
			emailInfo.addClass("error");
			return false;
		}
	}
	function validateName(){
		//if it's NOT valid
		if(firstName.val().length < 5){
			firstName.addClass("error");
			nameInfo.text("Please enter your FirstName!");
			nameInfo.addClass("error");
			return false;
		}
		//if it's valid
		else{
			firstName.removeClass("error");
			nameInfo.text("");
			nameInfo.removeClass("error");
			return true;
		}
	}
	
	function validateLastName(){
		//if it's NOT valid
		if(lastName.val().length < 5){
			lastName.addClass("error");
			lastInfo.text("Please enter your LastName!");
			lastInfo.addClass("error");
			return false;
		}
		//if it's valid
		else{
			lastName.removeClass("error");
			lastInfo.text("");
			lastInfo.removeClass("error");
			return true;
		}
	}
    
        
     function validatePass(){
		var a = $("#pass");
		//var b = $("#password2");

		//it's NOT valid
		if(pass.val().length <5){
			pass.addClass("error");
			passInfo.text("At Least 5 Characters ");
			passInfo.addClass("error");
			return false;
		}
		//it's valid
		else{			
			pass.removeClass("error");
			passInfo.text(" ");
			passInfo.removeClass("error");
			//validatePass2();
			return true;
		}
	}
        
	function validatePass1(){
		var a = $("#pass");
		var b = $("#pass1");

		//it's NOT valid
		if(pass.val() != pass1.val()){
			pass1.addClass("error");
			pass1Info.text("password does not match!");
			pass1Info.addClass("error");
			return false;
		}
		//it's valid
		else{			
			pass1.removeClass("error");
			pass1Info.text("");
			pass1Info.removeClass("error");
			validatePass2();
			return true;
		}
	}
	
	function validatePhone(){
		//if it's NOT valid
		if(phone.val().length !=9){
			phone.addClass("error");
			phoneInfo.text("Please enter a valid phone number!");
			phoneInfo.addClass("error");
			return false;
		}
		//if it's valid
		else{
			phone.removeClass("error");
			phoneInfo.text("");
			phoneInfo.removeClass("error");
			return true;
		}
	}
    
	
	function validateMessage(){
		//it's NOT valid
		if(message.val().length < 10){
			message.addClass("error");
			return false;
		}
		//it's valid
		else{			
			message.removeClass("error");
			return true;
		}
	}
});
$(document).ready(function(){
	
	$("#nav-signup").addClass("active");
	
	$('select').change(function(){
	     if($('select option:selected').text() != "Choose here"){
	    	 $("#icn9").hide();
		     $('#labelsel').text($('select option:selected').text())
	        $('#labelsel').show();
	        $('#sel').show();
	     }
	     else{
	    	 $('#labelsel').hide();
		        $('#sel').hide();
	     }
	 });
	$("#sel").on("input", function(){
		$("#icn10").hide();
	});
	
	});
var typingTimer; 
var typingTimer2; 
var doneTypingInterval = 5000;  

$('#uname').keyup(function(){
    clearTimeout(typingTimer);
    if ($('#uname').val()) {
        typingTimer = setTimeout(checkname, doneTypingInterval);
    }
});

//$('#user_email').keyup(function(){
//    clearTimeout(typingTimer2);
//    if ($('#user_email').val()) {
//        typingTimer2 = setTimeout(checkemail, doneTypingInterval);
//    }
//});
function checkname(){
	

	 if( ($.trim($("#uname").val()))!="" ){
			var uname = $('#uname').val();
			$.ajax({
				type: "POST",
		        url: "/verifyUserName",
		        data: "name=" + uname,
		        success: function(response){
			        if(response.message==="User Exists"){
			        	$("#icn2").css("display", "block");
			        	$("#icn").hide();
			        	$("#icn2 font").text("User Already Exists. Try another name");
			        	
			        
			        }
			        else{
			        	if(($.trim($("#uname").val())).length<3 || ($.trim($("#uname").val())).length>12)
			        	{
			        		
				        
			        		$("#icn2").css("display", "block");
				        	$("#icn").hide();
				        	$("#icn2 font").text("Username length must be greter than 2 and less than 12");
			        	}
			        	else{
			        	 $("#icn").css("display", "block");
			        	 $("#icn2").hide();
			        	
			        	}
			        }
		        },
		        error: function(e){
	    		    alert('Error: ' + e);
	    		}

			});
	 }
	 else{
		 $("#icn").hide();
		 $("#icn2").hide();
	 }
}

function checkemail(){
	if( ($.trim($("#user_email").val()))!="" ){
		var email = $('#user_email').val();
		$.ajax({
			type: "POST",
	        url: "/verifyUserEmail",
	        data: "email=" + email,
	        success: function(response){
		        if(response.message==="User Exists"){
		        	$("#icn4").css("display", "block");
		        	$("#icn3").hide();
		        	$("#icn4 font").text("User Already Exists.");
		        }
		        else{
		        	if(!validateEmail(email))
		        	{
		        		$("#icn4").css("display", "block");
			        	$("#icn3").hide();
			        	$("#icn4 font").text("Not a valid email");
		        	}
		        	else{
		        	 $("#icn3").css("display", "block");
		        	 $("#icn4").hide();
		        	
		        	}
		        }
	        },
	        error: function(e){
    		    alert('Error: ' + e);
    		}

		});
 }
 else{
	 $("#icn3").hide();
	 $("#icn4").hide();
 }
}

function validateEmail($email) {
	  var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
	  return emailReg.test( $email );
	}
function pas(){
	$("#repass").val("");
	$("#icn7").hide();
	$("#icn8").hide();

	if( ($.trim($("#pass").val()))!="" ){
		if( ($.trim($("#pass").val())).length<8){
			$("#icn6").css("display","block");
			$("#icn6 font").text("Password length must be greater than 8.Spaces not allowed");
			$("#icn5").hide();
		}
		else{
			
			$("#icn5").css("display","block");
			$("#icn6").hide();
		}
	}
	else{
		 $("#icn5").hide();
		 $("#icn6").hide();
	}
}
function AvoidSpace(event) {
    var k = event ? event.which : window.event.keyCode;
    if (k == 32){ 
    	return false;}
    else{
    	return true;
    }
}
function matchpas(){
	
	
	if(($.trim($("#repass").val()))!=""){
		if($("#repass").val()==$("#pass").val()){
			$("#icn7").css("display","block");
			$("#icn7").show();
			$("#icn8").hide();
			
		}
		else{
			$("#icn8").css("display","block");
			$("#icn8").show();
			$("#icn7").hide();
			
		}
	}
	else{
		$("#icn7").hide();
		$("#icn8").hide();
	}
	
}
function checkPass(){
	if( ($.trim($("#pass").val()))==="" || $("#icn6").is(":visible") ){
		$("#pass").focus();
	}
}

function mySubmitFunction(e){
	if(($.trim($("#uname").val()))===""){
		e.preventDefault();
		$("#icn2").css("display","block");
		$("#icn2").show();
		$("#icn2 font").text("This field is required");
	}
	
	if(($.trim($("#user_email").val()))===""){
		e.preventDefault();
		$("#icn4").css("display","block");
		$("#icn4").show();
		$("#icn4 font").text("This field is required");
	}
	
	if(($.trim($("#pass").val()))===""){
		e.preventDefault();
		$("#icn6").css("display","block");
		$("#icn6").show();
		$("#icn6 font").text("This field is required");
	}
	if(($.trim($("#repass").val()))===""){
		e.preventDefault();
		$("#icn8").css("display","block");
		$("#icn8").show();
		$("#icn8 font").text("This field is required");
	}
	if ($("#sel1").val() === null) {
		e.preventDefault();
		$("#icn9").css("display","block");
		$("#icn9").show();
	}
	else{
		
		if (($.trim($("#sel").val()))==="") {
			e.preventDefault();
			$("#icn10").css("display","block");
			$("#icn10").show();
		}
	}
	if($("#icn2").is(":visible")||$("#icn4").is(":visible")||$("#icn6").is(":visible")||$("#icn8").is(":visible")||$("#icn9").is(":visible")||$("#icn10").is(":visible"))
	{
		e.preventDefault();
		$("#err").text("Please fill all the fields correctly");
	}
	
	
	
}
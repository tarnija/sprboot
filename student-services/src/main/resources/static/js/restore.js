$(document).ready(function(){
	$("#icn").css("display", "hidden");
	
});
var ques;
var ans;
function checkemail() {
	 if( ($.trim($("#email").val()))!="" ){
	var email = $('#email').val();
	 $.ajax({
		 type: "POST",
	        url: "/verify",
	        data: "email=" + email,
	        success: function(response){
	        	
	        	
	        	console.log(response.message);
		        if(response.message==="User Exists"){
		        	$("#icn").css("display", "block");
		        	$("#icn2").hide();
		        	$("#btn").prop("disabled",false);
		        	ques=response.question;
		        	ans=response.answer;
		        }
		        else{
		        	$("#icn2").css("display", "block");
		        	$("#icn").hide();
		        	$("#btn").prop("disabled",true);
		        	
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
		 $("#btn").prop("disabled",true);
	 }
}
function showReset()
{
	$("#sec").css("display","block");
	$("#ques").text("Security question : "+ques);
	$("#sub").css("display","block");
	$("#btn").hide();
	$("#pass").css("display","block");
	$("#pass2").css("display","block");
	
}

function answer(){
	
	if($("#ans").val()!=""){
		if($("#ans").val()===ans){
			$("#icn3").css("display","block");
			$("#icn4").hide();
			$("#pas1").prop("disabled",false);
			
		}
		else{
			$("#icn4").css("display","block");
			$("#icn3").hide();
			$("#pas1").prop("disabled",true);
			
		}
	}
	else{
		$("#icn3").hide();
		$("#icn4").hide();
		$("#pas1").prop("disabled",true);
		
	}
}
function validatePass(){
	
}
	
	

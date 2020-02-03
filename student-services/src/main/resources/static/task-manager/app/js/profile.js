const PHONE_PATTERN = /^(\+91|0){0,1}[6-9]{1}[0-9]{9}$/;
const MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
function validatePhoneNumber(phoneNumber) {
	return PHONE_PATTERN.test(phoneNumber);
}

$(document).ready(function() {
	$("#show").hide();
	
	$(".user-menu-list-profile").addClass("user-menu-list-active");
	
	const DOB_INVALID_ERROR = "*Date of birth is not valid";
	const DOB_EMPTY_ERROR = "*Date of birth is required";
	const NAME_EMPTY_ERROR = "*Firts name is required"; 
	
	let dates = "";
	for(var i=1;i<=31;i++){
		dates+= "<option value='"+i+"'>"+i+"</option>";
	}
	$("#day").append(dates);
	
	let month = "";
	for(var i=0;i<MONTHS.length; i++){
		month+= "<option value='"+i+"'>"+MONTHS[i]+"</option>";
	}
	$("#month").append(month);
	
	let years = "";
	for(var i=1980;i<=2020;i++){
		years+= "<option value='"+i+"'>"+i+"</option>";
	}
	$("#year").append(years);
	
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
		    reader.onload = function(e) {
		    	$('#profile-pic').attr('src', e.target.result);
		    }
		    reader.readAsDataURL(input.files[0]);
		}
	}

	$("#imgInp").change(function() {
		readURL(this);
	});
	
	
	$("#profile-pic-container").click(function(e) {
		$("#imgInp").click();
	});
	
	$("#save-profile").click(function() {
		if($("#first-name").val().trim() === ""){
			PNotify.error({
				title:"Profile",
				text: "First name is required",
			});
			return;
		}
		else if($("#day option:selected").val().trim() === "Select"
			|| $("#month option:selected").val().trim() === "Select"
			|| $("#year option:selected").val().trim() === "Select"){
			PNotify.error({
				title:"Profile",
				text: "Date of birth is invalid",
			});
			return;
		}
		else if($("#contact").val().trim() === ""){
			PNotify.error({
				title:"Profile",
				text: "Contact is required",
			});
			return;
		}
		else if(!validatePhoneNumber($("#contact").val().trim() )){
			PNotify.error({
				title:"Profile",
				text: "Contact is invalid",
			});
			return;
		} 
		else {
			var userProfile = {};
			userProfile.firstName = $("#first-name").val().trim();
			userProfile.lastName = $("#last-name").val().trim();
			userProfile.day = $("#day option:selected").val().trim();
			userProfile.month = $("#month option:selected").val().trim();
			userProfile.year = $("#year option:selected").val().trim();
			userProfile.contact = $("#contact").val().trim();
			$.ajax({
				url:"../profile/"+$("#userId").val(),
				type: "POST",
				data:userProfile,
				success:function(response){
					if(response.trim() === "UPDATED"){
						PNotify.success({
							title:"Profile",
							text: "Profile picture updated successfully",
						});
						window.location = "/task-manager/app/user/dashboard"
					}
					else {
						PNotify.error({
							title:"Profile",
							text: "Some error has occured",
						});
					} 
				},
				error: function (xhr, ajaxOptions, thrownError) {
					console.error("Error occured while updating user profile :")
					if(xhr.responseJSON){
						console.error(xhr.responseJSON.status, xhr.responseJSON.error);
						console.error(xhr.responseJSON.message);
					}
				}
			});
		}
	});
	
	$("#add-image").click(function() {
		if($('#imgInp').prop('files')[0]){
			var form = new FormData();
			form.append("file", $('#imgInp').prop('files')[0]);
			$.ajax({
				url:"../profile/"+$("#userId").val(),
				type: "PUT",
				data:form,
				contentType: false,
			    processData: false,
			    enctype: 'multipart/form-data',
				success:function(response){
					if(response.trim() === "UPLOADED"){
						PNotify.success({
							title:"Profile",
							text: "Profile picture updated successfully",
						});
					}
					else {
						PNotify.error({
							title:"Profile",
							text: "Some error has occured",
						});
					} 
				},
				error: function (xhr, ajaxOptions, thrownError) {
					console.error("Error occured while uploading file:")
				    console.error(xhr.responseJSON.status, xhr.responseJSON.error);
				    console.error(xhr.responseJSON.message);
				}
			});
		}
		else { 
			PNotify.error({
				title:"Profile",
				text: "Please select a file to upload",
			});
		}
	});
});

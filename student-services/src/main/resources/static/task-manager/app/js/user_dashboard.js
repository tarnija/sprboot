$(document).ready(function() {
	
	if($("#new-task-board .task-card").length <10){
		$("#show-all-container-new").hide();
	}
	if($("#progress-task-board .task-card").length <10){
		$("#show-all-container-progress").hide();
	}
	if($("#completed-task-board .task-card").length <10){
		$("#show-all-container-completed").hide();
	}
	
	$(".task-card").click(function() { 
		$("#new-task-modal").modal('show');
	});
	
	$(".btn.btn-danger.btn-task").click(function() {
		$("#new-task-modal").modal('hide');
	});
	
	$(".btn.btn-success.btn-task").click(function() {
		addTask();
	});
	
});

function addTask(){
	var taskTitle = $("#title").val();
	var description = $("#description").val();
	var assignee = $("#assignee").val();
	var starton = $("#starton").val();
	var doneby = $("#doneby").val();
	var status = $("#status").val();	
	var userid = $("#userId").val();	
	
	if(($.trim(taskTitle))!="" && ($.trim(description))!="" && ($.trim(assignee))!="" && ($.trim(starton))!="" && ($.trim(doneby))!="" && ($.trim(status))!="" && ($.trim(userid))!="") {		
		
		starton = starton.split("-").reverse().join("-");
		doneby = doneby.split("-").reverse().join("-");
		
		var task = {
			"taskTitle": taskTitle,
			"description": description,
			"assignee": assignee,
			"startOn": starton,
			"doneBy": doneby,
			"status": status,
			"userid": userid
		};
		
		starton = starton.split("-").reverse().join("/");
		doneby = doneby.split("-").reverse().join("/");
		
		$.ajax({
			type: "POST",
			url: "../user/task",
			contentType : 'application/json',
			data: JSON.stringify(task),
			success: function(response){
				$("#err").hide();
				var demoTask =  $("#demo-task").clone();
				var t1=demoTask;
				$(t1).attr("id",taskTitle)
				$(t1).find(".task-title").text(taskTitle);
				$(t1).find(".task-desc").text(description);
				$(t1).find(".task-date").text("Done By : "+doneby);
				$(t1).find(".task-category").text('Category');
				$(t1).removeClass("hidden-task");
				$(t1).insertAfter("#new-task-board .task-board-title");
				$("#new-task-modal").modal('hide');
				$("#myForm")[0].reset();
				
				if($(".new-task").length >= 10 ){
					$("#new-task-board .task-card").last().remove();
					$("#show-all-container-new").show();
				}
			 },
			 error: function (xhr, ajaxOptions, thrownError) {
				console.error("Error occured while adding Task:")
				if(xhr.responseJSON){
				    console.error(xhr.responseJSON.status, xhr.responseJSON.error);
				    console.error(xhr.responseJSON.message);
				}
			}
		});
	}
	else {
		$("#err").show();
		$("#err").text("All fields are required !!!!");
	}
}
$(document).ready(function() {
	$('#sidebarCollapse, .menu').on('click', function() {
		$('#sidebar').toggleClass('active');
		$(this).toggleClass('active');
	});
	
	
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
	
	var demoTask =  $("#demo-task");
	$(demoTask).find("#demo-task-title").text(taskTitle);
	$(demoTask).find("#demo-task-description").text(description);
	$(demoTask).find("#demo-task-date").text("Done By : "+doneby);
	$(demoTask).find("#demo-task-category").text('Category');
	$(demoTask).removeClass("hidden-task");
	$("#new-task-board").append(demoTask);
	$("#new-task-modal").modal('hide');
}


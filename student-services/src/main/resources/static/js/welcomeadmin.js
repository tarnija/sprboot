function getDetail(u){
	$.ajax({
	type:"POST",
	url:"/getDetail",
	data:"id="+u,
	success:function(response){
		$("#detname").text(response.name);
		$("#detemail").text(response.email);
		$("#detcount").text(response.taskcount);
		$("#detrole").text(response.role);
	},
	 error: function(e){
		    alert('Error: ' + e);
		}
		
		
	});
	
}
function deluserconf(u){
	$("#confdel").text("All task assigned to this user will be assigned to you. Are you sure you want to delete user?")
	$("#confbut").attr("onclick","deluser("+u+")");
}
function deluser(u){
	$.ajax({
		type:"POST",
		url: "/delUser",
		data:"id=" + u,
		success:function(response){
			 $("#delconfirm").modal("hide");
			console.log(response.output);
			var tableBody = $("#t1 tbody"); 
			tableBody.fadeOut(1000).delay(1).queue(function() {
				$("#"+u).remove();
				tableBody.fadeIn(2000);
				
				$(this).dequeue();
			});
		},
	error: function(e){
	    alert('Error: ' + e);
	}
	})
}
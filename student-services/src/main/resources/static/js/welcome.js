$(document).ready(function(){

	$("#form").hide()
    $("#show").click(function(){
    	if($("#form").is(":visible")){
    		 $("#form").hide();
        	} 
    	else{
    		$("#form").show();
        	}
  });
	
	var today = new Date().toISOString().split('T')[0];
	document.getElementsByName("date")[0].setAttribute('min', today)
});
var ajaxLoadTimeout;
function addTask(){
	var task=$("#task").val();
	var doer=$("#doer").val();
	var date=$("#date").val();
	var time=$("#time").val();
	if(($.trim(task))!="" && ($.trim(doer))!="" && ($.trim(date))!="" && ($.trim(time))!="")
		{
		$.ajax({
			 type: "POST",
			 url: "/addTodo",
			 data: "task=" + task+"&doer=" + doer+"&date=" + date+"&time=" + time,
			 success: function(response){				
				console.log(response.data);
			var	markup = "<tr><td>"+task+"</td><td>"+doer+"</td><td>"+date+"</td><td>"+time+"</td><td>"+false+"</td></tr>";
			var tableBody = $("table tbody"); 
			tableBody.fadeOut(1000).delay(1).queue(function() {
				tableBody.fadeIn(2000).append(markup);
				$(this).dequeue();
			});
			
			 },
			 error: function(e){
	    		    alert('Error: ' + e);
	    		}
			 
		});
		}
	else{
		$("#err").text("All fields are required");
	}
}
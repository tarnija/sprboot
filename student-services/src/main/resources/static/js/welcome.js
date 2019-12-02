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
});
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
			var	markup = "<tr><td>"+doer+"</td><td>"+doer+"</td><td>"+date+"</td><td>"+time+"</td><td>"+false+"</td></tr>";
			var tableBody = $("table tbody"); 
			tableBody.append(markup); 
			 },
			 error: function(e){
	    		    alert('Error: ' + e);
	    		}
			 
		});
		}
}
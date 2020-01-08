$(document).ready(function() {

	checkNotes();
	/*$(".note").click(function() {
		$(this).addClass("note-view");
		$(this).find(".note-x").eq(0).addClass("note-close");
	})

	$(".note-close").click(function() {
		$(this).removeClass("note-close");
		$(this).parent().find(".note-view").eq(0).removeClass("note-view");
	});*/

	$("#add-first-note").click(function() {
		$("#new-note-modal").modal("show");
	})

	$(".note-delete").click(function() {
		deleteNote(this);
	});
	
	$("#add-note-btn").click(function() {
		var noteTitle = $("#title").val();
		var noteContent = $("#note-content").val();
		var tags = [];
		
		var note = "<div class='note'>";
		note += "<a href='#' class='btn btn-block a-btn-slide-text note-delete' onclick='deleteNote(this)'> <i class='fa fa-trash-o' aria-hidden='true'></i> </a>";
		note += "<span class='note-x'>&times</span>"; 
		note += ( "<h4 class='note-title'>" + noteTitle + "<span class='note-date'>"+new Date().toLocaleDateString()+"</span> </h4>" );
		note += "<p class='note-content'>"+noteContent+"</p>";
		note += "<p class='note-tags'>";
		$(".bootstrap-tagsinput").find(".tag").each(function(){
			tags.push($(this).text());
			note += "<span class='tag'>"+ $(this).text() +"</span>";
		});
		note += "</p></div>";
		
		$("#notes-container").append(note);
		
		$("#title").val('');
		$("#note-content").val('');
		$(".bootstrap-tagsinput").find(".tag.label.label-info").remove();
		
		
		$(".bootstrap-tagsinput").find(".tag").each(function(){
			$(this).text();
		});

		checkNotes();
		
		$("#close-note-btn").click();
	});
});

function deleteNote(obj) {
	$(obj).parent().remove();
	checkNotes();
}

function checkNotes() {
	if($(".note").length > 0) {
		$("#no-note-container").css("display","none");
	}
	else 
		$("#no-note-container").css("display","block");
}
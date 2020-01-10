$(document).ready(function() {
	$("#show").attr("data-target", "#new-doc-modal");
	
	$("#add-doc-btn").click(function() {
		addDoc();
	});
	
	$("#add-first-doc").click(function() {
		$("#new-doc-modal").modal("show");
	});
	
	checkDocs();
});

function checkDocs() {
	if($(".doc").length > 0) {
		$("#no-doc-container").css("display","none");
	}
	else 
		$("#no-doc-container").css("display","block");
}

function readURL(input) {
	if (input.files && input.files[0]) {
		/*var reader = new FileReader();
	    reader.onload = function(e) {
		    $('.image-upload-wrap').hide();
			$('.file-upload-image').attr('src', e.target.result);
		    $('.file-upload-content').show();
	      	$('.image-title').html(input.files[0].name);
	    };

	    reader.readAsDataURL(input.files[0]);*/
		$('.file-upload-content').show();
		$(".image-upload-wrap, .file-upload-btn").hide();
	    // $('.image-title').html(input.files[0].name);
	      
	    var filename = input.files[0].name;
	    filename = filename.split(".");
	    var extension = filename.pop();
	    $("#extension").val(extension);
	    filename = filename.join(".");
	    $("#docname").val(filename);
	    $("#docname").removeAttr("disabled");
	} 
	else {
		removeUpload();
	}
}

function removeUpload() {
	$('.file-upload-input').replaceWith($('.file-upload-input').clone());
	$('.file-upload-content').hide();
	$('.image-upload-wrap').show();
	$(".file-upload-btn").show();
    $("#docname").val("");
    $("#docname").attr("disabled", "disabled");
    $("#extension").val("");
}

$('.image-upload-wrap').bind('dragover', function () {
	$('.image-upload-wrap').addClass('image-dropping');
});
$('.image-upload-wrap').bind('dragleave', function () {
	$('.image-upload-wrap').removeClass('image-dropping');
});

		
function addDoc(){
	var filename = $("#docname").val();
	var extension = $("#extension").val();
	var doc = "<div class='col-md-2 doc'>";
	doc += "<span class='doc-format'>";

	if(extension.toLowerCase() === "png" || extension.toLowerCase() === "jpg" || extension.toLowerCase() === "jpeg")
		doc += "<i class='fa fa-file-image' aria-hidden='true'></i>";
	else if(extension.toLowerCase() === "zip" || extension.toLowerCase() === "rar")
		doc += "<i class='fa fa-file-archive' aria-hidden='true'></i>";
	else if(extension.toLowerCase() === "zip" || extension.toLowerCase() === "rar")
		doc += "<i class='fa fa-file-archive' aria-hidden='true'></i>";
	else if(extension.toLowerCase() === "zip" || extension.toLowerCase() === "rar")
		doc += "<i class='fa fa-file-archive' aria-hidden='true'></i>";
	else if(extension.toLowerCase() === "zip" || extension.toLowerCase() === "rar")
		doc += "<i class='fa fa-file-archive' aria-hidden='true'></i>";
	else if(extension.toLowerCase() === "zip" || extension.toLowerCase() === "rar")
		doc += "<i class='fa fa-file-archive' aria-hidden='true'></i>";
	
	doc += "</span>";
	doc += "<p class='doc-name'>"+filename+"</p>";
	doc += "</div>";
	
	if($("#docs-container .row").length === 0 || $("#docs-container .row").last().find(".doc").length === 5) {
		$("#docs-container").append("<div class='row'></div>");
		$("#docs-container .row").last().append(doc);
	} 
	else if($("#docs-container .row").last().find(".doc").length < 5) {
		$("#docs-container .row").last().append(doc);
	}
	removeUpload();
	$("#close-doc-btn").click();
	checkDocs();
}		

// <i class="fas fa-file-archive" aria-hidden="true"></i>
// <i class="fas fa-arrow-circle-down" aria-hidden="true"></i>
// <i class="fas fa-file-spreadsheet-o" aria-hidden="true"></i>
// <i class='fa fa-file-image-o' aria-hidden='true'></i>
// <i class="fa fa-file-csv" aria-hidden="true"></i>
// <i class="fas fa-file-excel" aria-hidden="true"></i>










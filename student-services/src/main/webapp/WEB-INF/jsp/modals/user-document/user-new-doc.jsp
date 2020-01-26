<div class="modal" id="new-doc-modal">
    		<div class="modal-dialog modal-dialog-centered modal-lg">
      			<div class="modal-content">
        			<div class="modal-header">
			       		<h4 class="modal-title">Upload a document</h4>
                 		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          					<span aria-hidden="true">&times;</span>
          				</button>
        			</div>
        			<div>
        				<div class="modal-body">
         					<div id="form">
  								<fieldset  class="scheduler-border">
	   								<div class="form-group row">
	  									<div class="col-md-1">
						       				<label for="colFormLabel" class="col-form-label-lg">Filename: </label>
						       			</div>
	    								<div class="col-md-11">
	     									<input class="form-control" id="docname" type="text" name="title" disabled="disabled">
	     								</div>
	    							</div>
	       							<div class="form-group row">
						       			<div class="file-upload">
  											<button class="file-upload-btn btn-primary" type="button" onclick="$('.file-upload-input').trigger( 'click' )">Choose File</button>
  											<div class="image-upload-wrap">
	  											<input id="user-file" class="file-upload-input" type='file' accept="*/*" />
									    		<!-- <input class="file-upload-input" type='file' onchange="readURL(this);" accept="*/*" /> -->
									    		<!-- <form action="/task-manager/user/document" action="post">
									    			<input class="file-upload-input" type='file' accept="*/*" />
									    			<input type="submit" style="display: none;">
									    		</form> -->
											    <div class="drag-text">
											   		<h4>Drag and drop a file or select Choose File</h4>
											    </div>
  											</div>
										  	<div class="file-upload-content">
										    	<!-- <img class="file-upload-image" src="#" alt="your image" /> -->
										    	<div class="image-title-wrap">
										    		<button type="button" onclick="removeUpload()" class="remove-image btn btn-danger btn-block btn-sm">Remove </button>
										    	</div>
										  	</div>
										</div>
	    							</div>
	     							<div class="form-group row">
	      								<div class="col-md-1">
						       				<label for="colFormLabel" class="col-form-label-lg">Tags:</label>
						       			</div>
	    								<div class="col-md-11">
	     									<input class="form-control" id="tags" type="text" name="tags" data-role="tagsinput">
	     								</div>
	   								</div>
  								</fieldset>
  							</div>
       	 				</div>
        				<div class="modal-footer">
         						<button class="btn btn-danger btn-task" id="close-doc-btn" data-dismiss="modal">Close</button>
         						<button class="btn btn-success btn-task" id="add-doc-btn" >Add</button>
	          					<input class="btn btn-warning btn-task" id="reset-doc-btn" type="reset"  value="Reset" />
        				</div>
	       			</div>
      			</div>
    		</div>
  		</div>
<div class='col-md-2 doc'>
	<div class='doc-info-data'>
		<span class='doc-info-data-close'>
			<i class='fa fa-times' onclick='hideDocInfo(this)' aria-hidden='true'></i>
		</span>
		<p class='ellipsis' style='width:95%;'> <b>Name:</b> ${filename} </p>
		<p> <b>Size:</b> ${filesize} </p>
		<p> <b>Format:</b> ${extension} </p>
		<p> <b>Uploaded On:</b> ${uploadedon} </p>
		<p> <b>Modified On:</b> ${modifiedon} </p>
	</div>
	<span class='doc-info' onclick='showDocInfo(this)'>
		<i class='fa fa-info-circle' aria-hidden='true'></i>
	</span>
	<span class='doc-delete' onclick='deleteDoc(this)'>
		<i class='fa fa-trash-alt' aria-hidden='true'></i>
	</span>
	<span class='doc-format'>
		<i class='fa fa-file-"+docicon+"' aria-hidden='true'></i>
	</span>
	<p class='doc-name text-left ellipsis'> ${filename}
		<span class='doc-download'>
			<i class='fa fa-download' aria-hidden='true'></i>
		</span>
	</p>
</div>
<div id="switch-theme" style="width: 100px; float: left; margin-left: 29%;">
	<input type="checkbox" id="switch" /><label id="switch-label" for="switch">Dark</label>
</div>
<div class="menu">
	<a href="#" class="btn btn-block a-btn-slide-text app-icon">
		<i class="fa fa-bars" aria-hidden="true"></i>
	</a>
</div>
<div class="notifications">
	<a href="#" class="btn btn-block a-btn-slide-text app-icon">
		<i class="fa fa-bell" aria-hidden="true"></i>
	</a>
</div>
<div class="mail">
	<a href="#" class="btn btn-block a-btn-slide-text app-icon">
		<i class="fa fa-envelope" aria-hidden="true"></i>
	</a>
</div>
<div class="addTask" data-toggle="modal" data-target="#new-task-modal" id="show">
	<a href="#" class="btn btn-block a-btn-slide-text app-icon">
		<i class="fa fa-plus" aria-hidden="true"></i>
	</a>
</div> 
<style>
input[type=checkbox]{
	height: 0;
	width: 0;
	visibility: hidden;
}

#switch-theme label {
	font-weight: bolder;
    cursor: pointer;
    text-indent: 45px;
    width: 100px;
    height: 36px;
    background: #333;
    border-radius: 60px;
    position: relative;
    padding: 5px 0px;
    color: white;
}

#switch-theme label:after {
	content: '';
    position: absolute;
    top: 1px;
    left: 1px;
    width: 34px;
    height: 34px;
    background: #fff;
    border-radius: 90px;
    transition: 0.3s;
}

#switch-theme input:checked + label {
	background: #bada55;
}

#switch-theme input:checked + label:after {
	left: calc(100% - 5px);
	transform: translateX(-100%);
}

#switch-theme label:active:after {
	width: 130px;
}
	
</style>


<script>
	$("#switch-label").click(function(){
		if($(this).text() === "Dark"){
			$(this).text("Light");
			$("#switch-theme label").css("text-indent", "10px");
			changeTheme("light");
		}
		else {
			$(this).text("Dark");
			$("#switch-theme label").css("text-indent", "55px");
			changeTheme("dark");
		}
	})
</script>
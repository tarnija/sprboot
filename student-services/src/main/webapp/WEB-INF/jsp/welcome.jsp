<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
</script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
<script>
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
</script>
</head>
<body>
  Welcome ${name}!! 
  <a href="#" id="show">Click here</a> to add your todo's.<br>
  <div id="form">
  <form action="addTodo" method="post">
  <fieldset style="width:500px;">
    <legend>Add your todo:</legend>
    Task: <input type="text" name="task"><br>
    Who should do it: <input type="text" name="doer"><br>
    Date: <input type="date" name="date"><br>
    Time: <input type="time" name="time"><br>
    <input type="submit">
  </fieldset>
</form>
  </div>
  <br>
   Here are the list of your todos:<br>
   
    
    <table class="table table-bordered">
<tbody>
<thead>
      <tr>
      <th>Task</th>
       <th>Who should do it</th>
       <th>Date</th>
       <th>Time</th>
       <th>Status</th>
      </tr>
      </thead>
    <c:forEach items="${todos}" var="todo">
        <tr>
            <td> <c:out value="${todo.task}"/></td>
           <td> <c:out value="${todo.doer}"/></td>
           <td> <c:out value="${todo.date}"/></td>
             <td> <c:out value="${todo.time}"/></td>
           <td> <c:out value="${todo.done}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="lgot">Logout</a>
</body>
</html>
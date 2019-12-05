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
 <script type="text/javascript" src="js/welcome.js"></script>
</head>
<body>
  Welcome ${name}!! 
  <a href="#" id="show">Click here</a> to add your todo's.<br>
  <div class="container">
  <div id="form">
  <form autocomplete="off" method="post">
  <font color="red" id="err">${errorMessage}</font>
  <fieldset  class="scheduler-border">
    <legend class="scheduler-border">Add your todo:</legend>
   <div class="form-group row">
  <label for="colFormLabel" class="col-sm-3 col-form-label-lg">Task : </label>
    <div class="col-sm-3">
     <input class="form-control" id="task" type="text" name="task">
     </div>
     <div class="col-sm-2" id="icn" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">User Exists</font></div>
    <div class="col-sm-2" id="icn2" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">User Does Not Exists</font></div>
    </div>
   
       <div class="form-group row">
       <label for="colFormLabel" class="col-sm-3 col-form-label-lg">Who should do it : </label>
     <div class="col-sm-3">  
      <input class="form-control" id="doer" type="text" name="doer">
      </div>
       <div class="col-sm-2" id="icn" style="display: none;"> <span class="glyphicon">&#xe013;</span> <font color="green">User Exists</font></div>
    <div class="col-sm-2" id="icn2" style="display: none;">  <span class="glyphicon">&#xe014;</span> <font color="red">User Does Not Exists</font></div>
    </div>
  
     <div class="form-group row">
       <label for="colFormLabel" class="col-sm-3 col-form-label-lg"> Date : </label>
    <div class="col-sm-3">  
    <input class="form-control" id="date" type="date" name="date">
    </div>
    </div>
   
     <div class="form-group row">
      <label for="colFormLabel" class="col-sm-3 col-form-label-lg"> Time : </label>
      <div class="col-sm-3">  
     <input class="form-control" id="time" type="time" name="time">
     </div>
   </div>
   
     <div class="col-auto"  >  
    <input class="btn btn-primary mb-2" type="button" value="Add Task" onclick="addTask()">
    </div>
  </fieldset>
</form>
  </div>
  </div>
  <br>
   Here are the list of your todos:<br>
    <div id="loader" style="display: none;position:fixed"><img alt="Loading ..." src="images/test.gif"></div>
    
    <table class="table table-bordered" id="mytable">

<thead>
      <tr>
      <th>Task</th>
       <th>Who should do it</th>
       <th>Date</th>
       <th>Time</th>
       <th>Status</th>
      </tr>
      </thead>
      <tbody>
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
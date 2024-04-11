<%@page import="dto.Task"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Task task=(Task)request.getAttribute("task"); %>
<form action="updatetask" method="post">

<label>Task Id:</label>
<input type="text" name="taskid" hidden="" value="<%=task.getTaskid()%>"><br><br>

<label>Task Title:</label>
<input type="text" name="tasktitle" value="<%=task.getTasktitle()%>"><br><br>

<label>Task description:</label>
<input type="text" name="taskdescription" value="<%=task.getTaskdescription()%>"><br><br>


Current task priority:<h4><%=task.getTaskpriority() %></h4><br><br>
Task priority:<br>

<label for="option1"></label>
<input type="radio" name="taskpriority" value="low">LOW
<label for="option2"></label>
<input type="radio" name="taskpriority" value="medium">MEDIUM
<label for="option3"></label>
<input type="radio" name="taskpriority" value="high">HIGH<br><br>

<label>Due Date:</label>
<input type="date" name="taskduedate" value="<%=task.getTaskduedate()%>"><br><br>
<label>Status:</label>
<input type="text" name="taskstatus" value="<%=task.getTaskstatus()%>"><br><br>
<input type="submit">
</form>
</body>
</html>
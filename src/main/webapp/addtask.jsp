<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Add Task</h1><br>
<form action="addtask" method="post">

<label>Task Title:</label>
<input type="text" name="tasktitle" required><br><br>
<label>Task Description:</label>
<input type="text" name="taskdescription"><br><br>
<label for="option1">Options:
<input type="radio" name="taskpriority" id="option1" value="low">Low</label>
<label for="option2">
<input type="radio" name="taskpriority" id="option2" value="medium">Medium</label>
<label for="option3">
<input type="radio" name="taskpriority" id="option3" value="high">High</label><br><br>
<label>Due Date:</label>
<input type="date" name="taskduedate"><br><br>

<input type="submit">

</form>
</body>
</html>
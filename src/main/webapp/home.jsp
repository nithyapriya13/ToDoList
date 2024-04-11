<%@page import="dto.Task"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="stylesheet.css">
<title>Insert title here</title>
</head>
<body>
<div id="nav-content">

<section id="left-module">
<article class="leftnav">HOME</article>
<article class="leftnav">ADD TASK</article>
<article class="leftnav">HDGGGSG</article>
<article class="leftnav">HHHDGSG</article>
<article class="leftnav"><a href ="logoutpage">LOGOUT</a></article>
</section>

</div>
<div id="home-content">
<div id="right-content">
<div id="content1">
	<%
	User u = (User) request.getSession().getAttribute("user");
	
	%>
	
	<%
	String img = new String(Base64.getEncoder().encode(u.getUserimage()));
	%>
	<section id="img-content">
	<img alt="" src="data:img/jpeg;base64 ,<%=img%> " width="200px"
		height="200px">
		</section>
		<section id="img-content1">
		<h3>
		Welcome
		<%=u.getUsername()%></h3>
	<h3>
		Email:
		<%=u.getUseremail()%></h3>
		<h3>Phone: <%=u.getUsercontact()  %></h3>
		<div id="task-content">
		<a href="addtask.jsp" >Add Task</a>
		</div>
		</section>
		</div>
		
	
	<%List<Task> tasks=(List)request.getAttribute("tasks"); %>
	
	</div>
	<h1>Task</h1>
	<table>

		<tr>
			<td>ID</td>
			<td>TITLE</td>
			<td>DESCRIPTION</td>
			<td>PRIORITY</td>
			<td>DUEDATE</td>
			<td>STATUS</td>
			<td>EDIT</td>
			<td>DELETE</td>
			
		</tr>
		<%int num=1; %>
		<%for(Task task:tasks){ %>
		<tr>
			<td><%=num %></td>
			<td><%=task.getTasktitle() %></td>
			<td><%=task.getTaskdescription() %></td>
			<td><%=task.getTaskpriority() %></td>
			<td><%=task.getTaskduedate() %></td>
			<td><%=task.getTaskstatus() %></td>
			<td><a href="edit?taskid=<%=task.getTaskid()%>">Edit</a></td>
			<td><a href="delete?taskid=<%=task.getTaskid()%>">Delete</a></td>

		</tr>
		<%num+=1; %>
		<%} %>
	</table>
</div>
</body>
</html>
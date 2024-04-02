<%@page import="java.util.Base64"%>
<%@page import="dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <%User u=(User)request.getSession().getAttribute("user");%>
   <h4>Welcome <%=u.getUsername() %></h4>
   <h4> Email <%=u.getUseremail() %></h4>
   <%String img=new String(Base64.getEncoder().encode(u.getUserimage()));%>
   <img alt="" src="data:img/jpeg;base64 ,<%=img %> " width="150" heigth="100" t>
 
</body>
</html>
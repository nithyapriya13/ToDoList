<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
body{
margin:0%;
padding:0px;
}
#login-btn{
background-image:url('asset/todolist3.jpg');
background-position:cover;
background-repeat:no-repeat;
background-size:100% 100%;
height:100vh;

}
#content{
border:1px solid #fffdd0;
box-shadow:5px 5px 5px 5px rgb(52,118,204);
border-radius:70px;
width:350px;
height:250px;
margin-left:500px;
position:absolute;
top:100px;
padding:36px;
}
tr,td{
padding:15px;
font-size:large;
}
h2{
text-align:center;
color:#fffdd0;
}
label{
color:#fffdd0;
}
input{
border-left:none;
border-right:none;
border-top:none;
color: #fffdd0;
background:transparent;


}
#submit{
border:1px solid #fffdd0;
font-size:large;
padding:10px 20px 10px 20px;
border-radius:20px;
color:#fffdd0;
box-shadow:5px 5px 5px 5px black;
}
#btn-page{
translate:5s;
}
#btn-page:hover{
transform:scale(1.1,1.1);
}

</style>
</head>
<body>
<div id="login-btn">
<form action="userlogin1" method="post">

<div id="content">
<h2><u>LOGIN FORM</u></h2>
<table>
<tr><td><label for="useremail">Email:</label></td>
<td><input type="text" name="email" id="Useremail"></td></tr>
<tr><td><label for="userpassword">password:</label></td>
<td><input type="text" name="password" id="userpassword"></td></tr>
<tr id="btn-page"><td></td><td><input type="submit" id="submit"></td></tr>
</table>
</div>

</form>
</div>
<%String msg=(String)request.getAttribute("message"); %>
<%if(msg!=null){%>
<h3><%=msg %></h3>
<%} %>
</body>
</html>
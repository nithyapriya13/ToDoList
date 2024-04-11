<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
margin:0%;
padding:0px;
}
#home-content{
background-image:url('asset/background todo.jpg');
background-position:cover;
background-repeat:no-repeat;
background-size:100% 100%;
height:100vh;
}
tr,td{
padding:8px;
font-size:18px;
}
#btn-content{
margin-left:500px;
padding:40px;
position:relative;
top:90px;
border:1px solid black;
box-shadow:7px 7px 7px 7px black;
border-radius:15px;
text-content:center;
width:355px;

}
input{
border-top:none;
border-right:none;
border-left:none;
background:transparent;

}
#submit{

border-radius:20px;
padding:12px 20px 12px 20px;
background-color:rgb(104,175,237);
font-size:18px;
box-shadow:5px 3px 3px 3px black;
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
<div id="home-content">

<form action="saveuser" method="post" enctype="multipart/form-data">
<div id="btn-content">
<h1>REGISTRATION FORM</h1>
<table>

<tr><td><label for="username">NAME:</label></td>
<td><input type="text" name="name" id="username"></td></tr>
<tr><td><label for="useremail">EMAIL:</label></td>
<td><input type="email" name="email" id="useremail"></td></tr>
<tr><td><label for="usercontact">CONTACT:</label></td>
<td><input type="tel" name="contact" id="usercontact"></td></tr>
<tr><td><label for="userpassword">PASSWORD:</label></td>
<td><input type="password" name="password" id="userpassword"></td></tr>
<tr><td><label for="userimg"> IMAGE:</label></td>
<td><input type="file" name="image" id="userimg"></td></tr>
<tr id="btn-page"><td></td><td><input type="submit" id="submit"></td></tr>
</table>
</div>
</form>
</div>



</body>
</html>
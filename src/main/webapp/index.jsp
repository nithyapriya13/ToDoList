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
#btn-color{
background-image:url('asset/background todo.jpg');
background-position:cover;
background-repeat:no-repeat;

background-size:100% 100%;
height:100vh;
}
#img-content{
display:flex;
justify-content:center;

}
h2{
 text-align: center; 
 font-size: 30px;
 padding-top: 7px;
 font-family: 'Times New Roman', Times, serif;
}
h2::before{
    content: "";
    border: 1px solid black;
    width: 390px;
    position: absolute;
    right: 170px;
    TOP:50PX;
   
}
h2::after{
    content: "";
    border: 1px solid black;
    width: 390px;
    position: absolute;
    left: 170px;
    TOP:50PX;
}
.spacing{
position:relative;
top:220px;

}
#img1{
margin-top:50px;
background-image:url('asset/background2.png');
background-size:250px 400px;
background-position:cover;
background-repeat:no-repeat;
height:400px;
width:400px;
}
#img2{
background-image:url('asset/background1.png');
height:540px;
width:700px;
background-position:cover;
background-repeat:no-repeat;
border:1px solid rgb(133,203,227);

}
a{

border-radius:20px;
text-align:center;
text-decoration:none;
padding-right:15px;
padding-top:8px;
padding-bottom:8px;
padding-left:15px;
background-color:yellow;

}

.spacing{
margin-left:320px;

}

</style>
</head>
<body>
<div id="btn-color">
<h2>TO DO LIST</h2>
<div id="img-content">

<section>
<div id="img2">

<div id="img1">
<div class="spacing">
<a href="login.jsp">Login</a><br><br><br>
<a href="signup.jsp">Signup</a>
</div></div>

</div>
</section>


</div>
</div>
</body>
</html>
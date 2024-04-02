<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="saveuser" method="post" enctype="multipart/form-data">
<label for="userid">ID:</label>
<input type="text" name="id" id="userid"><br><br>
<label for="username">NAME:</label>
<input type="text" name="name" id="username"><br><br>
<label for="useremail">EMAIL:</label>
<input type="email" name="email" id="useremail"><br><br>
<label for="usercontact">CONTACT:</label>
<input type="tel" name="contact" id="usercontact"><br><br>
<label for="userpassword">PASSWORD:</label>
<input type="password" name="password" id="userpassword"><br><br>
<label for="userimg"> IMAGE:</label>
<input type="file" name="image" id="userimg"><br><br>

<input type="submit"><br><br>

</form>
</body>
</html>
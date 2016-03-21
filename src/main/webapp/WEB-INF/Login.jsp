<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<script>
function myValidation(){
	var uname=document.forms["userLogin"]["uname"].value;
	var pass=document.forms["userLogin"]["password"].value;
	if ((uname==null || uname=="")&&(pass==null || pass=="")){
		alert("Username or Password should not be empty");
		return false;
	}
}
</script>
</head>

<body>
<form name="userLogin" method="post" onsubmit="myValidation()" action="welcome">
<table align="center" border="1">
<tr><td>Username:</td><td><input name="uname" type="text"></input></td></tr>
<tr><td>Password:</td><td><input name="password" type="password"></input></td></tr>
<tr><td><input type="submit" value="LogIn" ></input></td></tr>
</table>
</form>

</body>
</html>
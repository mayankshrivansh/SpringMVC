<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
    <div align="center">
        <form:form action="registration" method="post" commandName="registerForm">
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h2>Spring MVC Registration Form:</h2></td>
                </tr>
                <tr>
                    <td>First Name:</td>
                    <td><form:input path="fname" /></td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td><form:input path="lname" /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><form:input path="email" /></td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td><form:input path="phone" /></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><form:input path="address" /></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Registration" /></td>
                </tr>
            </table>
        </form:form>
    </div>
</body>
</html>
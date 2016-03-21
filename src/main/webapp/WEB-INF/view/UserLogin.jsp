<%@page import="javax.print.Doc"%>
<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   



<%@page import="org.hibernate.Query" %>
<%@page import="org.hibernate.Session" %>
<%@page import="com.mayank.sessionfactory.Factory" %>
<%@page import="java.util.List" %>
<%@page import="java.io.IOException"%>
<% 
String para= request.getParameter("q");
Session sessi = Factory.getSessionFactory().openSession();
sessi.beginTransaction();
String hql = "FROM user_info E WHERE E.username =" + para;
Query query = sessi.createQuery(hql);
List result = query.list();
if(result.contains(para)){
	
}
sessi.close();
//sessionFactory.close();
Factory.getSessionFactory().close();

%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
    <div align="center">
        <form:form action="login" method="post" commandName="userForm">
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h2>Spring MVC Login Form:</h2></td>
                </tr>
                <tr>
                    <td>User Name:</td>
                    <td><form:input path="username" onkeyup="myFunction(this.value)" /></td>
                    <td><form:label path="validate" id="validate"/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><form:password path="password" /></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Login" /></td>
                </tr>
            </table>
        </form:form>
    </div>
    
    <script type="text/javascript">
    function myFunction(str){
    	var xhttp;
    	if (str == "") {
    	    document.getElementById("validate").innerHTML = "";
    	    return;
    	  }
    	xhttp = new XMLHttpRquest();
    	xhttp.onreadystatechange = function() {
    	    if (xhttp.readyState == 4 && xhttp.status == 200) {
    	      document.getElementById("validate").innerHTML = xhttp.responseText;
    	    }
    	  };
    	  xhttp.open("GET", "UserLogin?q="+str, true);
    	  xhttp.send();
    	
    }
    </script>
    
</body>
</html>
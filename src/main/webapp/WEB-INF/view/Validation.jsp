<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
	System.out.println(para);
}
sessi.close();
//sessionFactory.close();
Factory.getSessionFactory().close();

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
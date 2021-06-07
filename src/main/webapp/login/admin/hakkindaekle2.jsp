<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HAKKINDA EKLE KOD</title>
</head>
<body>
<%
	   Baglanti db=new Baglanti();
	   pageContext.getResponse();
	   pageContext.getRequest();
	   String hakkinda_aciklama=request.getParameter("hakkinda_aciklama");
       ResultSet rv;
       String c= "insert into kategori values(null,'"+hakkinda_aciklama+"')";
	   db.execute(c);
	   response.sendRedirect("hakkinda.jsp");

 %>
</body>
</html>
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
<title>KATEGORİ EKLE KOD</title>
</head>
<body>
<%
	   Baglanti db=new Baglanti();
	   pageContext.getResponse();
	   pageContext.getRequest();
	   String kategori_ad=request.getParameter("kategori_ad");
       ResultSet rs;
	   String b= "insert into kategori values(null,'"+kategori_ad+"')";
	   db.execute(b);
	   response.sendRedirect("form.jsp");

 %>
</body>
</html>
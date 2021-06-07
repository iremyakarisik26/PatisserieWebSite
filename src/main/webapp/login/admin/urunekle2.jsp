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
<title>URUN EKLE DB</title>
</head>
<body>
<%
	   Baglanti db=new Baglanti();
	   pageContext.getResponse();
	   pageContext.getRequest();
	   String urun_ad=request.getParameter("urun_ad");
	   String urun_icerik=request.getParameter("urun_icerik");
	   String urun_resim=request.getParameter("urun_resim");
	   String kategori_id=request.getParameter("kategori_id");
       ResultSet rs;
	   String c= "insert into urun values(null,'"+urun_ad+"','"+urun_icerik+"','"+urun_resim+"','"+kategori_id+"')";
	   db.execute(c);
	   response.sendRedirect("ui.jsp");

 %>
</body>
</html>
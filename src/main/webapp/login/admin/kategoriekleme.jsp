<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>KATEGORİ EKLEME TASARIM</title>
</head>
<body>
<form action="kategoriekle2.jsp" method="post"> 
<h2  style="color:Pink;">KATEGORİ EKLEME SAYFASI</h2>
<br>
<input type="text" name="kategori_ad" Placeholder="KATEGORİ ADI"/>	
<br>
<br>
<div class="login-check"></div>
<input type="submit" style="background-color:pink;color:white;width:150px;height:40px;" value="KATEGORİ EKLE">
</form>
</body>
</html>
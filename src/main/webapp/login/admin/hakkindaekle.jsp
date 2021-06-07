<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HAKKINDA EKLEME TASARIM</title>
</head>
<body>
<form action="hakkindaekle2.jsp" method="post"> 
<h2  style="color:Pink;">HAKKINDA EKLEME SAYFASI</h2>
<br>
<input type="text" name="hakkinda_aciklama" Placeholder="AÇIKLAMA"/>	
<br>
<br>
<div class="login-check"></div>
<input type="submit" style="background-color:pink;color:white;width:150px;height:40px;" value="HAKKINDA EKLE">
</form>
</body>
</html>
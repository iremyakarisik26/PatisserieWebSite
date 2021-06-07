<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>KATEGORİ GÜNCELLEME TASARIM</title>
</head>
<body>
<% 
Baglanti db=new Baglanti();
pageContext.getResponse();
pageContext.getRequest();
ResultSet rs;
String gelenkatid=request.getParameter("id");
%>
<form action="kategoriguncelle2.jsp" method="post"> 
<h2  style="color:Pink;">KATEGORİ GÜNCELLEME SAYFASI</h2>
<br>
<input type="hidden" name="kategori_id" value="<%=gelenkatid%>"/>	
<input type="text" name="kategori_ad" Placeholder="KATEGORİ ADI"/>	
<br>
<br>
<div class="login-check"></div>
<input type="submit" style="background-color:pink;color:white;width:150px;height:40px;" value="GÜNCELLE">
</form>
</body>
</html>
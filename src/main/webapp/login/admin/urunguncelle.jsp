<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>ÜRÜN GÜNCELLEME TASARIM</title>
</head>
<body>
<% 
Baglanti db=new Baglanti();
pageContext.getResponse();
pageContext.getRequest();
ResultSet rs;
String gelenurunid=request.getParameter("id");
%>
<form action="urunguncelle2.jsp" method="post"> 
<h2  style="color:Pink;">KATEGORİ GÜNCELLEME SAYFASI</h2>
<br>
<input type="hidden" name="urun_id" value="<%=gelenurunid%>"/>	
<input type="text" name="urun_icerik" Placeholder="ÜRÜN İÇERİK"/>	
<br>
<br>
<div class="login-check"></div>
<input type="submit" style="background-color:pink;color:white;width:150px;height:40px;" value="GÜNCELLE">
</form>
</body>
</html>
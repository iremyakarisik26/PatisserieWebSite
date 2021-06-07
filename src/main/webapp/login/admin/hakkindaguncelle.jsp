<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>HAKKINDA GÜNCELLEME TASARIM</title>
</head>
<body>
<% 
Baglanti db=new Baglanti();
pageContext.getResponse();
pageContext.getRequest();
ResultSet rs;
String gelenhakid=request.getParameter("id");
%>
<form action="hakkindaguncelle2.jsp" method="post"> 
<h2  style="color:Pink;">HAKKINDA GÜNCELLEME SAYFASI</h2>
<br>
<input type="hidden" name="hakkinda_id" value="<%=gelenhakid%>"/>	
<input type="text" name="hakkinda_aciklama" Placeholder="AÇIKLAMA"/>	
<br>
<br>
<div class="login-check"></div>
<input type="submit" style="background-color:pink;color:white;width:150px;height:40px;" value="GÜNCELLE">
</form>
</body>
</html>
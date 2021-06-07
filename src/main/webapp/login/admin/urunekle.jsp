<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>URUN EKLEME TASARIM</title>
</head>
<body>
<form action="urunekle2.jsp" method="post"> 
<h2  style="color:Pink;">URUN EKLEME SAYFASI</h2>
<br>
<br>
<input type="text" name="urun_ad" Placeholder="PASTA ADI"/>	
<br>
<br>
<input type="text" name="urun_icerik" Placeholder="PASTA İCERİK"/>
<br>
<br>
<input type="text" name="urun_resim" Placeholder="RESİM YOL"/>
<br>
<br>
<input type="text" name="kategori_id" Placeholder="KATEGORİ ID"/>
<br>
<br>
<div class="login-check"></div>
<br>
<br>
<input type="submit" style="background-color:pink;color:white;width:150px;height:40px;" value="URUN EKLE!!">

</form>
</body>
</html>

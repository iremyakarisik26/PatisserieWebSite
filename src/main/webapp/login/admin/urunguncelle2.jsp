<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>ÜRÜN GÜNCELLE KOD SAYFASI</title>
</head>
<body>
<%
try{
Baglanti db=new Baglanti();
pageContext.getResponse();
pageContext.getRequest();
ResultSet rs;
String gelenurunid=request.getParameter("urun_id");
String gelenurunicerik=request.getParameter("urun_icerik");
Boolean b=db.execute("Update urun set urun_icerik='" + gelenurunicerik+"' where urun_id='" + gelenurunid + "'");
if(b){
    out.print("GÜNCELLEME BAŞARILI");
    response.sendRedirect("ui.jsp");
}
else {
    out.print("GÜNCELLEME BAŞARISIZ");
}
}catch(Exception e){
	out.print(e.getMessage());
}
%>
</body>
</html>
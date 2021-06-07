<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>KATEGORİ GÜNCELLE KOD SAYFASI</title>
</head>
<body>

<%
try{
Baglanti db=new Baglanti();
pageContext.getResponse();
pageContext.getRequest();
ResultSet rs;
String gelenkatid=request.getParameter("kategori_id");
String gelenkatad=request.getParameter("kategori_ad");
Boolean b=db.execute("Update kategori set kategori_ad='" + gelenkatad +"' where kategori_id='" + gelenkatid + "'");
if(b){
    out.print("GÜNCELLEME BAŞARILI");
    response.sendRedirect("form.jsp");
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
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
String gelenhakid=request.getParameter("hakkinda_id");
String gelenhakad=request.getParameter("hakkinda_aciklama");
Boolean b=db.execute("Update hakkinda set hakkinda_aciklama='" + gelenhakad +"' where hakkinda_id='" + gelenhakid + "'");
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
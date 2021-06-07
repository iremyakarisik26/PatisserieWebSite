<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ŞİFRE GÜNCELLEME</title>
</head>
<body>
<%
Baglanti db=new Baglanti();
pageContext.getResponse();
pageContext.getRequest();
ResultSet rs;
String gelensifre=request.getParameter("kullanici_sifre");
out.println(session.getAttribute("kullanici_sifre"));
Boolean b=db.execute("Update kullanici set kullanici_sifre='" + gelensifre +"' where kullanici_id='" + session.getAttribute("kullanici_id") + "'");
if(b){
    out.print("GÜNCELLEME BAŞARILI");
    response.sendRedirect("index.jsp");
}
else {
    out.print("GÜNCELLEME BAŞARISIZ");
}
%>

</body>
</html>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>KATEGORİ SİLME KOD SAYFASI</title>
</head>
<body>
<%
	   int i;
	   Baglanti db=new Baglanti();
	   pageContext.getResponse();
	   pageContext.getRequest();
	   ResultSet rs;
	   int gelenkatid=Integer.parseInt(request.getParameter("id"));
	   Boolean b=db.execute("delete from mydb.kategori where kategori_id='"+gelenkatid+"'");
	   if(b){
	       out.print("SİLME BAŞARILI");
	       response.sendRedirect("form.jsp");
	   }
	   else {
	       out.print("SİLME BAŞARISIZ");
	   }
	

%>
</body>
</html>
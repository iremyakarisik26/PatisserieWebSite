<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>URUN SİLME KOD SAYFASI</title>
</head>
<body>
<%
	   
	   Baglanti db=new Baglanti();
	   pageContext.getResponse();
	   pageContext.getRequest();
	   ResultSet rs;
	   int gelenurunid=Integer.parseInt(request.getParameter("id"));
	   Boolean b=db.execute("delete from mydb.urun where urun_id='"+gelenurunid+"'");
	   if(b){
	       out.print("SİLME BAŞARILI");
	       response.sendRedirect("ui.jsp");
	   }
	   else {
	       out.print("SİLME BAŞARISIZ");
	   }
	

%>
</body>
</html>
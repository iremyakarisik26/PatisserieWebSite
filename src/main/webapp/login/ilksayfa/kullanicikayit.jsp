<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@page import="Class.Kullanici" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>KayıtOl</title>
</head>
<body>
<%
		   Kullanici kullanici= new Kullanici();
		   Baglanti db=new Baglanti();
		   pageContext.getResponse();
		   pageContext.getRequest();
		   String kullanici_mail=request.getParameter("kullanici_mail");
		   String kullanici_sifre=request.getParameter("kullanici_sifre");
			   if(kullanici_mail!=null & kullanici_sifre!=null)
			   {
				   if(kullanici.ozelvarmi(kullanici_sifre)){
						
			   		   ResultSet rs;
				        String a= "insert into kullanici values(null,'"+kullanici_mail+"','"+kullanici_sifre+"')";
					    db.execute(a);
					    response.sendRedirect("ilksayfaindex.jsp");
				   }
			
				   
			   }
		 %>
</body>
</html>
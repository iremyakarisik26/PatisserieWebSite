<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ÜyeLogin</title>
</head>
<body>
	<%
	   Baglanti db=new Baglanti();
	   pageContext.getResponse();
	   pageContext.getRequest();
	   String kullanici_mail=request.getParameter("kullanici_mail");
	   String kullanici_sifre=request.getParameter("kullanici_sifre");
	   if(kullanici_mail!=null & kullanici_sifre!=null)
	   {
	       ResultSet rs= db.dbdenVeriCek("select * from kullanici where kullanici_mail='"+kullanici_mail+"' and kullanici_sifre='"+kullanici_sifre+"' ");
	
	       try{
	           rs.next();
	            if(rs.getString("kullanici_mail").equals(kullanici_mail) && rs.getString("kullanici_sifre").equals(kullanici_sifre)){
	                 session.setAttribute("kullanici_id", rs.getString("kullanici_id"));
	                 response.sendRedirect("index.jsp");
	      
	            }
	            else {
	                 response.sendRedirect("Error.jsp");
	            }
	       }catch(SQLException e){
	
	            System.out.print("e"+e); 
	       }
	       db.baglantiyiKes();
	
   } 
   else {

        System.out.print("NULL"); 
   }

%>

</body>
</html>
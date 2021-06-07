<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>URUN LİSTELE</title>
</head>
<body>             
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                     <h2>URUN BİLGİLER</h2>   
                                        <tr> 
                                            <th style="background-color:#cc99ff">AD</th>
                                            <th style="background-color:#cc99ff">ICERİK</th>
                                            <th style="background-color:#cc99ff">RESİM LİNKİ</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% 
					                         Baglanti db = new Baglanti();
                                      		  ResultSet rs= db.dbdenVeriCek("select * from mydb.urun");
					                         if(rs!=null)
					                         {
					                             while(rs.next())
					                             {
					                                 %>
					                                <tr>
					                                    <td class="column1"><%=  rs.getString("urun_ad") %></td>
					                            
					                                    <td class="column2"><%=  rs.getString("urun_icerik")%></td>
					                             	  
					                                    <td class="column3"><%=  rs.getString("urun_resim") %></td>		                                    
					                                </tr>
					                                    

                                 <% 
                             }
                         }
                        %>
                                    </tbody>
                                    
                                </table>
                                      <% 
					                         Baglanti vb = new Baglanti();
                                      		  ResultSet rb= vb.dbdenVeriCek("select * from mydb.urun");
					                         if(rb!=null)
					                         {
					                             while(rb.next())
					                             {
					                                 %>
															<div class="col-lg-4 col-md-4 all dev">
										                      <div class="product-item">
										                        <div class="down-content">
										                          <a href="#"><h4><%=  rb.getString("urun_ad")%></h4></a>                          
										                          <p><%=rb.getString("urun_icerik")%></p>
										                        </div>
										                      </div>
										                    </div>
					                            

                                 <% }
					                             }
					                   %>
                            </div>
                        </div>
                        
                         <br>
                          <a class="btn btn-info" role="button" href="products.jsp" >GERİ DÖN</a>
                  %>

               
</body>
</html>
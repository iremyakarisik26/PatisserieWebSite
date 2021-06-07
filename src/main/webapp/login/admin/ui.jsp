﻿<%@page import="java.sql.ResultSet"%>
<%@page import="Class.Baglanti"%>
<%@page import="javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin PANEL </title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="fa fa-bar"></span>
                    <span class="fa fa-bar"></span>
                    <span class="fa fa-bar"></span>
                </button>
                <a class="navbar-brand" href="adminindex.jsp">ADMİN PANELİ</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;">  &nbsp; <a href="ek/loginindex.jsp" class="btn btn-danger square-btn-adjust">ÇIKIŞ YAP</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
				<li>
                        <a  href="ui.jsp"><i></i>ÜRÜNLER EDİT</a>
                    </li>
                    <li  >
                        <a  href="form.jsp"><i></i>KATEGORİ EDİT</a>
                    </li>	
                    <li  >
                        <a  href="hakkinda.jsp"><i></i>HAKKINDA EDİT</a>
                    </li>	
                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>ÜRÜN EDİT SAYFASI</h2>       
                    </div>
                </div>
             
                 <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>AD</th>
                                            <th>ICERIK</th>                                           
                                            <th>KATEGORİ</th>
                                            <th>SİL</th>
                                            <th>GÜNCELLE</th>
                                            
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
							                                    <td class="column1"><%=  rs.getString("urun_id")%></td>
							                                    <td class="column2"><%=  rs.getString("urun_ad")%></td>
							                                    <td class="column3"><%=  rs.getString("urun_icerik")%></td>							                                   
							                                    <td class="column4"><%=  rs.getString("kategori_id")%></td>
							                                    <td><a class="btn btn-info btn-lg" role="button"  href='urunsil.jsp?id=<%=rs.getString("urun_id")%>'>SİL</a></td>
													   		    <td><a class="btn btn-warning btn-lg" role="button" href='urunguncelle.jsp?id=<%=rs.getString("urun_id")%>'>GÜNCELLE</a></td>
							                                 		          
						                                    </tr>
						                                     <% 
						                                     
	                                                     }
	                                                  }
                                            %> 
                                    </tbody>
                                </table>
                            </div>
                        </div>
                         <a href="urunekle.jsp"class="btn btn-primary btn-success" role="button">URUN EKLE</a>
      		                          		   
         

                        
                <!-- /. ROW  -->
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
 
</body>
</html>

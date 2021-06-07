<%@page import="java.sql.ResultSet"%>
<%@page import="Class.Baglanti"%>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>PASTALARIMIZ...</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--

TemplateMo 546 Sixteen Clothing

https://templatemo.com/tm-546-sixteen-clothing

-->

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-sixteen.css">
    <link rel="stylesheet" href="assets/css/owl.css">

  </head>

  <body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->

    <!-- Header -->
    <header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <a class="navbar-brand" href="index.jsp"><h2>İREM'İN <em>PASTANESİ.</em></h2></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link" href="index.jsp">ANASAYFA
                  <span class="sr-only">(current)</span>
                </a>
              </li> 
              <li class="nav-item active">
                <a class="nav-link" href="products.jsp">PASTALAR</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="about.jsp">HAKKINDA</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact.jsp">İLETİŞİM</a>
              </li>
                  <li class="nav-item">
              <a href="ilksayfaindex.jsp" class="nav-link">ÇIKIŞ</a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="sifreguncelle.jsp">PAROLA GÜNCELLE</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <!-- Page Content -->
    <div class="page-heading products-heading header-text">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h4>PASTALARIMIZ...</h4>
            </div>
          </div>
        </div>
      </div>
    </div>

    
    <div class="products">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="filters">
              <ul>
                  <li class="active" data-filter="*">SEVGİLİ KULLANICIMIZ , GÜNLÜK ÇIKAN PASTA ÇEŞİTLERİMİZİ İNCELEYİN...</li>
                  <a class="btn btn-outline-danger btn-lg" role="button" href="urunlistele.jsp" >ÜRÜN LİSTESİ</a>
              </ul>
            </div>
          </div>
          <ul>
                  <li class="active" data-filter="*">SEVGİLİ KULLANICIMIZ , ARAMAK İSTEDİĞİNİZ PASTAYI GİRİN...</li>
                  <form action="arama.jsp" method="get">
                  <input type="text" name="aranan"/>
                  <br>
                  <br>	
                  <button class="btn btn-outline-info btn-lg">ARA</button>
                  <br>
                  <br>
                  </form>
         </ul>
         <br>
         
          <div class="col-md-12">
            <div class="filters-content">
                <div class="row grid">
                 <%
                 	Baglanti db=new Baglanti();
                 	ResultSet rs = db.dbdenVeriCek("select * from mydb.urun");
                 	 if(rs!=null)
                     {
                         while(rs.next())
                         {
                        	 
                         %>
                             <div class="col-lg-4 col-md-4 all des">
                             <div class="product-item">
                               <a href="#"><img src="assets/images/pasta2.jpg" alt=""></a>
                               <div class="down-content">
                                 <a href="#"><h4><%= rs.getString("urun_ad") %></h4></a>                          
                                 <p><%= rs.getString("urun_icerik")%></p>
                               </div>
                             </div>
                           </div>  
                            <% 
                             }
                         }
               %>
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/owl.js"></script>
    <script src="assets/js/slick.js"></script>
    <script src="assets/js/isotope.js"></script>
    <script src="assets/js/accordions.js"></script>


    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>


  </body>

</html>

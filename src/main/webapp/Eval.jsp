<%@ page language="java" contentType="text/html; charset=windows-1256"
 pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="projet.SingletonConnection"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>Resto -EPT</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-574-mexant.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css">
    
    <link rel="stylesheet" href="assets/css/test.css">
    
<!--

TemplateMo 574 Mexant

https://templatemo.com/tm-574-mexant

-->
  </head>

<body>

 
  <!-- ***** Header Area End ***** -->

  <!-- ***** Main Banner Area Start ***** -->
  <div class="swiper-container" id="top">
    <div class="swiper-wrapper">
    
    
     <% Connection conn=SingletonConnection.getConnection();
			try {
				  PreparedStatement psd= conn.prepareStatement("select * from menu_semaine ORDER BY ID_MS DESC;");
                  ResultSet rs1 = psd.executeQuery();
				  rs1.next();
				  int w=rs1.getInt("ID_MS");
				  PreparedStatement ps= conn.prepareStatement("select * from resultat_vote_menu WHERE id_semaine=?;");
				  ps.setInt(1,w);
                  ResultSet rs = ps.executeQuery();
                  float lun_pdej=0; float lun_dej=0; float lun_din=0;
                  float mar_pdej=0; float mar_dej=0; float mar_din=0;
                  float mer_pdej=0; float mer_dej=0; float mer_din=0;
                  float jeu_pdej=0; float jeu_dej=0; float jeu_din=0;
                  float ven_pdej=0; float ven_dej=0; float ven_din=0;
                  float sam_pdej=0;float sam_dej=0; 
                  
%>
                                            <% while (rs.next()) { %>
    						
    						<%if (rs.getString("jour").equals("lun")){%>
    						<%if (rs.getInt("nbv1")!=0){
    						lun_pdej=(float)rs.getInt("sr1")/(float)rs.getInt("nbv1");
    						}
    						if (rs.getInt("nbv2")!=0){
        						lun_dej=(float)rs.getInt("sr2")/(float)rs.getInt("nbv2");
        						}
    						if (rs.getInt("nbv3")!=0){
        						lun_din=(float)rs.getInt("sr3")/(float)rs.getInt("nbv3");
        						}}%>
    						
    						<%if (rs.getString("jour").equals("mar")){%>
    						<%if (rs.getInt("nbv1")!=0){
    						mar_pdej=(float)rs.getInt("sr1")/(float)rs.getInt("nbv1");
    						}
    						if (rs.getInt("nbv2")!=0){
        						mar_dej=(float)rs.getInt("sr2")/(float)rs.getInt("nbv2");
        						}
    						if (rs.getInt("nbv3")!=0){
        						mar_din=(float)rs.getInt("sr3")/(float)rs.getInt("nbv3");
        						}}%>
        						
        						<%if (rs.getString("jour").equals("mer")){%>
    						<%if (rs.getInt("nbv1")!=0){
    						mer_pdej=(float)rs.getInt("sr1")/(float)rs.getInt("nbv1");
    						}
    						if (rs.getInt("nbv2")!=0){
        						mer_dej=(float)rs.getInt("sr2")/(float)rs.getInt("nbv2");
        						}
    						if (rs.getInt("nbv3")!=0){
        						mer_din=(float)rs.getInt("sr3")/(float)rs.getInt("nbv3");
        						}}%>
        						
        						<%if (rs.getString("jour").equals("jeu")){%>
    						<%if (rs.getInt("nbv1")!=0){
    						jeu_pdej=(float)rs.getInt("sr1")/(float)rs.getInt("nbv1");
    						}
    						if (rs.getInt("nbv2")!=0){
        						jeu_dej=(float)rs.getInt("sr2")/(float)rs.getInt("nbv2");
        						}
    						if (rs.getInt("nbv3")!=0){
        						jeu_din=(float)rs.getInt("sr3")/(float)rs.getInt("nbv3");
        						}}%>
        						
        						<%if (rs.getString("jour").equals("ven")){%>
    						<%if (rs.getInt("nbv1")!=0){
    						ven_pdej=(float)rs.getInt("sr1")/(float)rs.getInt("nbv1");
    						}
    						if (rs.getInt("nbv2")!=0){
        						ven_dej=(float)rs.getInt("sr2")/(float)rs.getInt("nbv2");
        						}
    						if (rs.getInt("nbv3")!=0){
        						ven_din=(float)rs.getInt("sr3")/(float)rs.getInt("nbv3");
        						}}%>
        						
        						
        						<%if (rs.getString("jour").equals("sam")){%>
    						<%if (rs.getInt("nbv1")!=0){
    						sam_pdej=(float)rs.getInt("sr1")/(float)rs.getInt("nbv1");
    						}
    						if (rs.getInt("nbv2")!=0){
        						sam_dej=(float)rs.getInt("sr2")/(float)rs.getInt("nbv2");
        						}}}
    						%>
        						
        						
    						
    						
    						
    
      <div class="swiper-slide">
        <div class="slide-inner" style="background-image:url(assets/images/menu.jpg)">
          <div class="container">
            <div class="row">
              <div class="col-lg-8">
                <div class="header-text">
                  <h2>Lundi</h2>
                  <div class="div-dec"></div>
                  
                  <div class="buttons">
                    <div class="green-button">
                      <a class="green-button">Note du petit dejeuner:</a>
                       <a class="orange-button"><%=lun_pdej %>/5 </a>
                    </div>
                    <br><br><br>
                    <div class="orange-button">
                      <a class="green-button">Note du dejeuner:</a>
                      <a class="orange-button"><%=lun_dej %>/5 </a>
                    </div>
                    <br>
                    <div class="green-button">
                        <a class="green-button">Note du diner:</a>
                        <a class="orange-button"><%=lun_din %>/5 </a>
                      </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <div class="swiper-slide">
        <div class="slide-inner" style="background-image:url(assets/images/menu.jpg)">
          <div class="container">
            <div class="row">
              <div class="col-lg-8">
                <div class="header-text">
                  <h2>Mardi</h2>
                  <div class="div-dec"></div>
                  
                  <div class="buttons">
                    <div class="green-button">
                        <a class="green-button">Note du petit dejeuner:</a>
                         <a class="orange-button"><%=mar_pdej %>/5 </a>
                      </div>
                      <br><br><br>
                      <div class="orange-button">
                        <a class="green-button">Note du dejeuner:</a>
                        <a class="orange-button"><%=mar_dej %>/5 </a>
                      </div>
                      <br>
                      <div class="green-button">
                          <a class="green-button">Note du diner:</a>
                          <a class="orange-button"><%=mar_din %>/5 </a>
                        </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    <div class="swiper-slide">
        <div class="slide-inner" style="background-image:url(assets/images/menu.jpg)">
          <div class="container">
            <div class="row">
              <div class="col-lg-8">
                <div class="header-text">
                  <h2>Mercredi</h2>
                  <div class="div-dec"></div>
                  
                  <div class="buttons">
                    <div class="green-button">
                        <a class="green-button">Note du petit dejeuner:</a>
                         <a class="orange-button"><%=mer_pdej %>/5 </a>
                      </div>
                      <br><br><br>
                      <div class="orange-button">
                        <a class="green-button">Note du dejeuner:</a>
                        <a class="orange-button"><%=mer_dej %>/5 </a>
                      </div>
                      <br>
                      <div class="green-button">
                          <a class="green-button">Note du diner:</a>
                          <a class="orange-button"><%=mer_din %>/5 </a>
                        </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      
      <div class="swiper-slide">
        <div class="slide-inner" style="background-image:url(assets/images/menu.jpg)">
          <div class="container">
            <div class="row">
              <div class="col-lg-8">
                <div class="header-text">
                  <h2>Jeudi</h2>
                  <div class="div-dec"></div>
                  
                  <div class="buttons">
                    <div class="green-button">
                        <a class="green-button">Note du petit dejeuner:</a>
                         <a class="orange-button"><%=jeu_pdej %>/5 </a>
                      </div>
                      <br><br><br>
                      <div class="orange-button">
                        <a class="green-button">Note du dejeuner:</a>
                        <a class="orange-button"><%=jeu_dej %>/5 </a>
                      </div>
                      <br>
                      <div class="green-button">
                          <a class="green-button">Note du diner:</a>
                          <a class="orange-button"><%=jeu_din %>/5 </a>
                        </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      <div class="swiper-slide">
        <div class="slide-inner" style="background-image:url(assets/images/menu.jpg)">
          <div class="container">
            <div class="row">
              <div class="col-lg-8">
                <div class="header-text">
                  <h2>Vendredi</h2>
                  <div class="div-dec"></div>
                  
                  <div class="buttons">
                    <div class="green-button">
                        <a class="green-button">Note du petit dejeuner:</a>
                         <a class="orange-button"><%=ven_pdej %>/5 </a>
                      </div>
                      <br><br><br>
                      <div class="orange-button">
                        <a class="green-button">Note du dejeuner:</a>
                        <a class="orange-button"><%=ven_dej %>/5 </a>
                      </div>
                      <br>
                      <div class="green-button">
                          <a class="green-button">Note du diner:</a>
                          <a class="orange-button"><%=ven_din %>/5 </a>
                        </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>


  <div class="swiper-slide">
        <div class="slide-inner" style="background-image:url(assets/images/menu.jpg)">
          <div class="container">
            <div class="row">
              <div class="col-lg-8">
                <div class="header-text">
                  <h2>Samedi</h2>
                  <div class="div-dec"></div>
                  
                  <div class="buttons">
                    <div class="green-button">
                        <a class="green-button">Note du petit dejeuner:</a>
                         <a class="orange-button"><%=sam_pdej %>/5 </a>
                      </div>
                      <br><br><br>
                      <div class="orange-button">
                        <a class="green-button">Note du dejeuner:</a>
                        <a class="orange-button"><%=sam_dej %>/5 </a>
                      </div>
                      <br>
                      
                    
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
              		 
          <%
                                  } catch (SQLException e) {
                                  e.printStackTrace();
                                  } %> 
        </div>
      </div>
      






    </div>
    <button class="btn btn-primary " id="submitButton" type="submit">Retour a  l'Accueil</button>
    <div class="swiper-button-next swiper-button-white"></div>
    <div class="swiper-button-prev swiper-button-white"></div>
    
  </div>


  

  <!-- ***** Main Banner Area End ***** -->

  
  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/wow.js"></script>
    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/swiper.js"></script>
    <script src="assets/js/custom.js"></script>
    
    
    
    
    <script>
        var interleaveOffset = 0.5;

      var swiperOptions = {
        loop: true,
        speed: 1000,
        grabCursor: true,
        watchSlidesProgress: true,
        mousewheelControl: true,
        keyboardControl: true,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev"
        },
        on: {
          progress: function() {
            var swiper = this;
            for (var i = 0; i < swiper.slides.length; i++) {
              var slideProgress = swiper.slides[i].progress;
              var innerOffset = swiper.width * interleaveOffset;
              var innerTranslate = slideProgress * innerOffset;
              swiper.slides[i].querySelector(".slide-inner").style.transform =
                "translate3d(" + innerTranslate + "px, 0, 0)";
            }      
          },
          touchStart: function() {
            var swiper = this;
            for (var i = 0; i < swiper.slides.length; i++) {
              swiper.slides[i].style.transition = "";
            }
          },
          setTransition: function(speed) {
            var swiper = this;
            for (var i = 0; i < swiper.slides.length; i++) {
              swiper.slides[i].style.transition = speed + "ms";
              swiper.slides[i].querySelector(".slide-inner").style.transition =
                speed + "ms";
            }
          }
        }
      };

      var swiper = new Swiper(".swiper-container", swiperOptions);
    </script>
    
    
    
    
    
    
    
    
    
    
    
    
      <a href="adminRR.html"><button class="btn btn-primary " id="submitButton" type="submit">Retour a l'Accueil</button></a>
    
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
  </body>
</html>
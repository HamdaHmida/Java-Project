<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>Resto - EPT</title>
        <link rel="icon" type="image/x-icon" href="assets/img/loo.png" />
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
    
   
     
      <div class="swiper-slide">
        <div class="slide-inner" style="background-image:url(assets/images/menu.jpg)">
          <div class="container">
            <div class="row">
              <div class="col-lg-8">
                <div class="header-text">
                 
                 
                  <h2>Lundi</h2>
                  <div class="div-dec"></div>
                  <form action="EvalMenu" method="get">
                  
                  <div class="buttons">
                    <div class="green-button">
                      <a >Petit dejeuner</a>
                      <select name="pdej_lun" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"  data-bs-toggle="collapse">
                        <option value="0" >--Noter ce repas--</option>
                        <option value="1">1</option>
                        <option value="2">2 </option>
                        <option value="3">3 </option>
                         <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    </div>
                    <br><br><br>
                    <div class="orange-button">
                      <a >Dejeuner</a>
                      <select name="dej_lun" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" data-bs-toggle="collapse">
                        <option value="0" >--Noter ce repas--</option>
                        <option value="1">1</option>
                        <option value="2">2 </option>
                        <option value="3">3 </option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    </div>
                    <br>
                    <div class="green-button">
                        <a >Diner</a>
                        <select name="din_lun" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" data-bs-toggle="collapse">
                          <option value="0" >--Noter ce repas--</option>
                          <option value="1">1</option>
                          <option value="2">2 </option>
                          <option value="3">3 </option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                      </select>
                      </div>
                  </div>
                  <button class="btn btn-primary btn-xl" id="submitButton" type="submit">Valider</button>
                   </form>
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
                   <form action="EvalMenu2" method="get">
       
                  <div class="buttons">
                    <div class="green-button">
                      <a >Petit dejeuner</a> 
                      <select name="pdej_mar" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" data-bs-toggle="collapse">
                        <option value="0" >--Noter ce repas--</option>
                        <option value="1">1</option>
                        <option value="2">2 </option>
                        <option value="3">3 </option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    </div>
                    <br><br><br>
                    <div class="orange-button">
                      <a >Dejeuner</a>
                      <select name="dej_mar" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"  data-bs-toggle="collapse">
                        <option value="0" >--Noter ce repas--</option>
                        <option value="1">1</option>
                        <option value="2">2 </option>
                        <option value="3">3 </option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    </div>
                    <br>
                    <div class="green-button">
                        <a >Diner</a>
                        <select name="din_mar" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" data-bs-toggle="collapse">
                          <option value="0" >--Noter ce repas--</option>
                          <option value="1">1</option>
                          <option value="2">2 </option>
                          <option value="3">3 </option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                      </select>
                      </div>
                  </div>
                   <button class="btn btn-primary btn-xl" id="submitButton" type="submit">Valider</button>
                  </form>
    
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
                  <form action="EvalMenu3" method="get">
                 
                  <div class="buttons">
                    <div class="green-button">
                      <a>Petit dejeuner</a>
                      <select name="pdej_mer" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"  data-bs-toggle="collapse">
                        <option value="0" >--Noter ce repas--</option>
                        <option value="1">1</option>
                        <option value="2">2 </option>
                        <option value="3">3 </option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    </div>
                    <br><br><br>
                    <div class="orange-button">
                      <a >Dejeuner</a>
                      <select name="dej_mer" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" data-bs-toggle="collapse">
                        <option value="0" >--Noter ce repas--</option>
                        <option value="1">1</option>
                        <option value="2">2 </option>
                        <option value="3">3 </option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    </div>
                    <br>
                    <div class="green-button">
                        <a >Diner</a>
                        <select name="din_mer" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"  data-bs-toggle="collapse">
                          <option value="0" >--Noter ce repas--</option>
                          <option value="1">1</option>
                          <option value="2">2 </option>
                          <option value="3">3 </option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                      </select>
                      </div>
                  </div>
                   <button class="btn btn-primary btn-xl" id="submitButton" type="submit">Valider</button>
                  </form>
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
                  <form action="EvalMenu4" method="get">
                 
                  <div class="buttons">
                    <div class="green-button">
                      <a >Petit dejeuner</a>
                      <select name="pdej_jeu" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" data-bs-toggle="collapse">
                        <option value="0" >--Noter ce repas--</option>
                        <option value="1">1</option>
                        <option value="2">2 </option>
                        <option value="3">3 </option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    </div>
                    <br><br><br>
                    <div class="orange-button">
                      <a >Dejeuner</a>
                      <select name="dej_jeu" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" data-bs-toggle="collapse">
                        <option value="0" >--Noter ce repas--</option>
                        <option value="1">1</option>
                        <option value="2">2 </option>
                        <option value="3">3 </option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    </div>
                    <br>
                    <div class="green-button">
                        <a >Diner</a>
                        <select name="din_jeu" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"  data-bs-toggle="collapse">
                          <option value="0" >--Noter ce repas--</option>
                          <option value="1">1</option>
                          <option value="2">2 </option>
                          <option value="3">3 </option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                      </select>
                      </div>
                  </div>
                  <button class="btn btn-primary btn-xl" id="submitButton" type="submit">Valider</button>
                  </form>
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
                  <form action="EvalMenu5" method="get">
                  
                  <div class="buttons">
                    <div class="green-button">
                      <a >Petit dejeuner</a>
                      <select name="pdej_ven" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"  data-bs-toggle="collapse">
                        <option value="0" >--Noter ce repas--</option>
                        <option value="1">1</option>
                        <option value="2">2 </option>
                        <option value="3">3 </option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    </div>
                    <br><br><br>
                    <div class="orange-button">
                      <a >Dejeuner</a>
                      <select name="dej_ven" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"  data-bs-toggle="collapse">
                        <option value="0" >--Noter ce repas--</option>
                        <option value="1">1</option>
                        <option value="2">2 </option>
                        <option value="3">3 </option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    </div>
                    <br>
                    <div class="green-button">
                        <a >Diner</a>
                        <select name="din_ven" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"  data-bs-toggle="collapse">
                          <option value="0" >--Noter ce repas--</option>
                          <option value="1">1</option>
                          <option value="2">2 </option>
                          <option value="3">3 </option>
                          <option value="4">4</option>
                          <option value="5">5</option>
                      </select>
                      </div>
                  </div>
                  <button class="btn btn-primary btn-xl" id="submitButton" type="submit">Valider</button>
                    </form>
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
                  <form action="EvalMenu6" method="get">
                   
                  <div class="buttons">
                    <div class="green-button">
                      <a >Petit dejeuner</a>
                      <select name="pdej_sam" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" data-bs-toggle="collapse">
                        <option value="0" >--Noter ce repas--</option>
                        <option value="1">1</option>
                        <option value="2">2 </option>
                        <option value="3">3 </option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    </div>
                    <br><br><br><br>
                    <div class="orange-button">
                      <a >Dejeuner</a>
                      <select name="dej_sam" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" data-bs-toggle="collapse">
                        <option value="0" >--Noter ce repas--</option>
                        <option value="1">1</option>
                        <option value="2">2 </option>
                        <option value="3">3 </option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    </div>
                    
                    
                  </div>
                    <button class="btn btn-primary btn-xl" id="submitButton" type="submit">Valider</button>
                 </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
          
        </div>
      </div>





	
    <div class="swiper-button-next swiper-button-white"></div>
    <div class="swiper-button-prev swiper-button-white"></div>
    
 


  

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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   <a href="student.html"><button class="btn btn-primary " id="submitButton" type="submit">Retour a l'Accueil</button></a>
    
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts8.js"></script>
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
  </body>
</html>
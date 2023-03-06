<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="projet.SingletonConnection"%>
<%@page import="projet.VerifLogin"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Student - EPT</title>
        <link rel="icon" type="image/x-icon" href="assets/img/loo.png" />
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles1.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="student.html"><img src="assets/img/loo.png" width="30" height="30"> L'internat de l'EPT</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
           
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Bienvenue</div>
                            <a class="nav-link" href="student.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Acceuil
                            </a>
                            <a class="nav-link" href="profil.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-user"></i></div>
                                Profil
                            </a>

                            <div class="sb-sidenav-menu-heading">Foyer</div>
                            <a class="nav-link" href="studentRecFoy.html">
                                <div class="sb-nav-link-icon"><i class="fa fa-envelope"></i></div>
                                Reclamations
                            </a>
                            <a class="nav-link" href="annEtF.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-bullhorn"></i></div>
                                Annonces
                            </a>
                           
                            <a class="nav-link" href="cham_f.html">
                                <div class="sb-nav-link-icon"><i class="fa fa-bed"></i></div>
                                Chambres
                            </a>
                            <div class="sb-sidenav-menu-heading">Restaurant</div>
                            <a class="nav-link" href="studentRecRes.html">
                                <div class="sb-nav-link-icon"><i class="fa fa-envelope"></i></div>
                                Reclamations
                            </a>
                            <a class="nav-link" href="eval_menu.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-star"></i></div>
                                Evaluation
                            </a>
                            <a class="nav-link" href="VoirMenu.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-book"></i></div>
                                Menu de la semaine
                            </a>
                            <a class="nav-link" href="sondageE.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-bar-chart"></i></div>
                                Sondage
                            </a>
                            <a class="nav-link" href="annEtR.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-bullhorn"></i></div>
                                Annonces
                            </a>
                            <a class="nav-link" href="plat_dispoS.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-cutlery"></i></div>
                                Plats disponibles
                            </a>
                            <div class="sb-sidenav-menu-heading">Autres options</div>
                            <a class="nav-link" href="loginS.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-sign-out"></i></div>
                                Deconnexion
                            </a>
                        </div>
                       
                    </div>
                   
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <!-- Portfolio Section-->
                        <section class="page-section portfolio" id="portfolio">
                            <style>
body{
    margin-top:20px;
    color: #1a202c;
    text-align: left;
    background-color: #e2e8f0;    
}
.main-body {
    padding: 15px;
}
.card {
    box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
}

.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: .25rem;
}

.card-body {
    flex: 1 1 auto;
    min-height: 1px;
    padding: 1rem;
}

.gutters-sm {
    margin-right: -8px;
    margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
    padding-right: 8px;
    padding-left: 8px;
}
.mb-3, .my-3 {
    margin-bottom: 1rem!important;
}

.bg-gray-300 {
    background-color: #e2e8f0;
}
.h-100 {
    height: 100%!important;
}
.shadow-none {
    box-shadow: none!important;
}
                            </style>
                            <div class="container">
                                <div class="main-body">
                               
                                      <!-- Breadcrumb -->
                                     
                                      <!-- /Breadcrumb -->
                           
                                      <div class="row gutters-sm">
                                        <div class="col-md-4 mb-3">
                                          <div class="card">
                                            <div class="card-body">
                                              <div class="d-flex flex-column align-items-center text-center">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
                                                <div class="mt-3">
                                                  <h4><%= VerifLogin.US().getNom()+" "+ VerifLogin.US().getPrenom() %></h4>
                                                  <p class="text-secondary mb-1">etudiant(e)</p>
                                                  <p class="text-muted font-size-sm">EPT</p>
                                                 
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                          <div class="card mt-3">
                                           
                                          </div>
                                        </div>
                                        <div class="col-md-8">
                                          <div class="card mb-3">
                                            <div class="card-body">
                                              <div class="row">
                                                <div class="col-sm-3">
                                                  <h6 class="mb-0">Identifiant</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                <%= VerifLogin.US().getID() %>
                                                </div>
                                              </div>
                                              <hr>
                                               <div class="row">
                                                <div class="col-sm-3">
                                                  <h6 class="mb-0">User_name</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                  <%= VerifLogin.US().getUser() %>
                                                </div>
                                              </div>  
                                              <hr>
                                              <!--<div class="row">
                                                <div class="col-sm-3">
                                                  <h6 class="mb-0">Nom et prenom</h6>
                                                </div>
                                                 <div class="col-sm-9 text-secondary">
                                                  <%= VerifLogin.US().getNom()+" "+ VerifLogin.US().getPrenom() %>
                                                </div>
                                              </div>
                                              <hr> -->
                                              <div class="row">
                                                <div class="col-sm-3">
                                                  <h6 class="mb-0">Numéro de chambre</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                  <%= VerifLogin.US().getNum_room() %>
                                                </div>
                                              </div>
                                              <hr>
                                              <div class="row">
                                                <div class="col-sm-3">
                                                  <h6 class="mb-0">Mobile</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                  <%= VerifLogin.US().getNum_tel() %>
                                                </div>
                                              </div>
                                              <hr>
                                              <div class="row">
                                                <div class="col-sm-3">
                                                  <h6 class="mb-0">E-mail</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                  <%= VerifLogin.US().getMail() %>
                                                </div>
                                              </div>
                                             
                                             
                                            </div>
                                          </div>
                                          <div class="row gutters-sm">
                                         
                                            <div class="col-sm-6 mb-3">
                                              <div class="card h-100">
                                              <form method="get" action="modifier">
                                                <div class="card-body">
                                                  <h6 class="d-flex align-items-center mb-3">Modifier votre User_name</h6>
                                                  <input class="form-control" id="user1" type="text" name="au" placeholder="l'ancien" data-sb-validations="required" />
                                                  <hr>
                                                  <input class="form-control" id="user2" type="text" name="nu" placeholder="le nouveau" data-sb-validations="required" />
                                                  <hr>
                                                  <input class="form-control" id="username" type="password" name="mp" placeholder="Mot de passe" data-sb-validations="required" />
                                                  <hr>
                                                  <button class="btn btn-primary btn-xl" id="submitButton" type="submit" name="user" >Enregistrer</button><p style="color:red;">${msg2}</p>
                                                </div>
                                                </form>
                                                      </div>
                                                       </div>
                                                       <div class="col-sm-6 mb-3">
                                                       <div class="card h-100">
                                                       <form method="get" action="modifierarom">
                                                     <div class="card-body">
                                                    <h6 class="d-flex align-items-center mb-3">Modifier votre mot de pasee</h6>
                                                    <input class="form-control" id="user1" type="password" name="mp" placeholder="l'ancien" data-sb-validations="required" />
                                                  <hr>
                                                  <input class="form-control" id="user2" type="password" name="nmp1" placeholder="le nouveau" data-sb-validations="required" />
                                                  <hr>
                                                  <input class="form-control" id="username" type="password" name="nmp2" placeholder="confirmer" data-sb-validations="required" />
                                                  <hr>
                                                  <button class="btn btn-primary btn-xl" id="submitButton" type="submit" name="mdp" >Enregistrer</button><p style="color:red;">${msg1}</p>
                                                  </div>
                                                  </form>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                           
                           
                           
                                        </div>
                             
                                      </div>
                           
                                    </div>
                                </div>

                        </section>
                       
                        <!-- Footer-->
                        <footer class="footer text-center">
                            <div class="container">
                                <div class="row">
                                    <!-- Footer Location-->
                                    <div class="col-lg-4 mb-5 mb-lg-0">
                                        <h4 class="text-uppercase mb-4">Adresse</h4>
                                        <p class="lead mb-0">
                                            Rue El Khawarizmi
                                            <br />
                                            Site archéologique de Carthage
                                        </p>
                                    </div>
                                    <!-- Footer Social Icons-->
                                    <div class="col-lg-4 mb-5 mb-lg-0">
                                        <h4 class="text-uppercase mb-4">Sur le web</h4>
                                        <a class="btn btn-outline-light btn-social mx-1" href="https://www.facebook.com/EcolePolytechniqueDeTunisie"><i class="fab fa-fw fa-facebook-f"></i></a>
                                       
                                        <a class="btn btn-outline-light btn-social mx-1" href="https://www.linkedin.com/school/tunisia-polytechnic-school/"><i class="fab fa-fw fa-linkedin-in"></i></a>
                                        <a class="btn btn-outline-light btn-social mx-1" href="http://www.ept.rnu.tn/"><i class="fab fa-fw fa-dribbble"></i></a>
                                    </div>
                                    <!-- Footer About Text-->
                                    <div class="col-lg-4">
                                        <h4 class="text-uppercase mb-4">Développée par</h4>
                                        <p class="lead mb-0">
                                            Arouay Omar, Dekhil Sarra,<br/> Hmida Hamda, Zagouji Siwar.
                                            <br />
                                            <a href="mailto:hamdahmida2000@gmail.com">Nous Contacter</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </footer>
                        <!-- Copyright Section-->
                        <div class="copyright py-4 text-center text-white">
                            <div class="container"><small>Copyright &copy; EPT 2022</small></div>
                        </div>
                       
                        <!-- Bootstrap core JS-->
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
                        <!-- Core theme JS-->
                        <script src="js/scripts.js"></script>
                       
                        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
                </main>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts1.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
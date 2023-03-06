<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Resto - EPT</title>
        <link rel="icon" type="image/x-icon" href="assets/img/loo.png" />
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles1.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <link rel="stylesheet" href="css/style.css">
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
                        
                        
                        <header class="masthead bg-primary text-white text-center">
                            <div class="container d-flex align-items-center flex-column">
                                
                                <!-- Masthead Heading-->
                                <h1 class="masthead-heading text-uppercase mb-0">Espce Etudiant</h1>
                                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Masthead Subheading-->
                
                
            </div>
        </header>
        
        
         <section class="page-section portfolio" id="portfolio">
                            <div class="container">
                                <!-- Portfolio Section Heading-->
                                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Les sondages</h2> 
                                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div> 
                            </div>
                            <h1><br /></h1>
                            <h1></h1>
                        <div>
                            <div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="table-wrap">
                                        <h4>Entrer l'ID de sondage a voter :</h4>
                                            <table class="table table-striped">
                                              <thead>
                                                <tr>
                                                <th>ID</th>
                                                  <th>Contenu</th>
                                  <th>Date de depot </th>
                                  <th width="150px">Resultat Pour</th>
                                  <th width="150px">Nombre de votes</th>
                                                </tr>
                                              </thead>
                                              <tbody>
                                                              
					<form method="get" action="votsond">
                                                 <input type="text" name="id_vote" >   
                                                    <button height="20px" class="btn btn-primary " id="oui" type="submit" name="oui" >OUI</button>
                                                    ou
                                                    <button height="20px" class="btn btn-primary " id="non" type="submit" name="non" >NON</button>
                                 
                                                    
                                                    
                                                 </form> 
                                                 <%
                                            Connection conn=SingletonConnection.getConnection();
                                    try {
                                    PreparedStatement ps= conn.prepareStatement("select * from sondage_resto ORDER BY DATE_SON desc;");
                                    ResultSet rs = ps.executeQuery();
%>
                                                <%while (rs.next()) { %>
                                                <tr>
                                                <td ><%= rs.getInt("ID_SONDAGE_RESTO") %></td>
                                                  <td name="contenu"><%= rs.getString("qst") %></td>
                                                  <td ><%= rs.getString("DATE_SON") %></td>
                                                  <% int nbt=rs.getInt("nb_vote");
                                                     int nbo=rs.getInt("nb_oui");
                                                     float pour=0;
                                                  	 if (nbt!=0) pour= 100*((float)rs.getInt("nb_oui"))/(float)rs.getInt("nb_vote");%>
                                                  <td name="Pourcentage pour"><%=pour%>%</td>
                                                  <td name="Nombre de votes"><%=nbt%></td>
                                             </tr>
                                                  <%}
                                  } catch (SQLException e) {
                                  e.printStackTrace();
                                  } %>
                                              </tbody>
                                            </table>
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
                        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
                        <!-- * *                               SB Forms JS                               * *-->
                        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
                        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
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

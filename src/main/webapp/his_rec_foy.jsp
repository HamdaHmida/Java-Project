<%@ page language="java" contentType="text/html; charset=windows-1256"
 pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Foyer - EPT</title>
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
            <a class="navbar-brand ps-3" href="adminFF.html"><img src="assets/img/loo.png" width="30" height="30"> L'internat de l'EPT</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
           
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Bienvenue</div>
                            <a class="nav-link" href="adminFF.html">
                                <div class="sb-nav-link-icon"><i class="fa fa-home"></i></div>
                                Acceuil
                            </a>
                            <a class="nav-link" href="profilAF.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-user"></i></div>
                                Profil
                            </a>
                            <div class="sb-sidenav-menu-heading">Taches</div>
                            <a class="nav-link" href="rec_foy.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-envelope"></i></div>
                                Reclamations
                            </a>
                            <a class="nav-link" href="his_rec_foy.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-history"></i></div>
                                Reclamations executees
                            </a>
                            <a class="nav-link" href="depoannF.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-bullhorn"></i></div>
                                Annonces
                            </a>
                            <a class="nav-link" href="listeEtudiant.jsp">
                                <div class="sb-nav-link-icon"><i class="fa fa-list"></i></div>
                                Liste des etudiants
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
                                <h1 class="masthead-heading text-uppercase mb-0">Administration du foyer</h1>
                                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                </div>
                <!-- Masthead Subheading-->
               
            </div>
        </header>
        <!-- Portfolio Section-->
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
                <!-- Portfolio Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Les r�clamations</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>

                <br>
                <form action="affrecfoyhis"  method="post" >
                <select name="ca" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" data-bs-toggle="collapse">
                    <option value="" >--Filter par type du probl�me--</option>
                    <option value="tout">Voir tout </option>
                    <option value="electricity">Probl�me d'�lectricit� </option>
                    <option value="insatallation">Probl�me d'eau </option>
                    <option value="chaffage">Probl�me de r�chauffement </option>
                  <option value="�quipement">Probl�me d'�quipements </option>
                   <option value="wc">Probl�me dans les salles de bains</option>
                     <option value="autres">Autres </option>
                </select>
               
                <select name="ur" class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" data-bs-toggle="collapse">
                     <option value="" >--Filter par degr� d'urgence--</option>
                    <option value="tout">Voir tout </option>
                     <option value="Urgence majeure">Urgence majeure</option>
                    <option value="Urgence non vitale">Urgence non vitale </option>
                    <option value="Non urgente">Non urgente</option>
                </select>
                 <button class="btn btn-primary " id="submitButton" type="submit">Afficher</button>
                 
                <br>
                <br>
            </div>
            <div>
                <div class="row">
                    <div class="col-md-12">
                             
                        <div class="table-wrap">
                            <table class="table table-striped">
                             
                                <tr>
                                  <th width="20px">ID</th>
                                  <th width="160px">Num�ro de chambre</th>
                                  <th width="190px">Type de la r�clamation</th>
                                  <th width="120px">Degr� d'urgence </th>
                                  <th width="200px">Contenu de la r�clamation</th>
                                  <th>Date</th>
                                 
                                 
                                </tr>
                             
                              <tbody>
                              <c:forEach items="${modele.reclamations}" var="f">
                            <tr>
                            <td width="100px">${f.ID_REC_FOYER}</td>
                            <td width="100px">${f.chambre}</td>
                            <td width="100px">${f.type}</td>
                            <td width="100px">${f.urg}</td>
                            <td width="100px">${f.desc}</td>
                            <td >${f.date}</td>
                            </tr>
                             </c:forEach>
                              </tbody>
                            </table>
                            </form>
                           
                            <form action="affrecfoyhis"  method="get" >
                            <p><b>Si vous voulez supprimer une r�clamation de l'historique, veuillez entrer son ID : &nbsp;</b></p>
                            <div class="form-floating mb-3">
                       
                                <input  class="form-control1" id="id" type="text" placeholder=" Identifiant" name="id" data-sb-validations="required" />
                               
                                <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
                            </div>
                            <button class="btn btn-primary " id="submitButton" type="submit">Supprimer</button>
                            </form>
                           
                           
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
                                            Site arch�ologique de Carthage
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
                                        <h4 class="text-uppercase mb-4">D�velopp�e par</h4>
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
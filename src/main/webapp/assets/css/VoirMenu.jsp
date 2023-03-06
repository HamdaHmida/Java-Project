<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <title>Menu</title>

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
				  String w=rs1.getString("Date");
				  PreparedStatement ps= conn.prepareStatement("select * from menu_jour WHERE date=?;");
				  ps.setString(1,w);
                  ResultSet rs = ps.executeQuery();
%>
                                            <% while (rs.next()) { %>
     
      <div class="swiper-slide">
        <div class="slide-inner" style="background-image:url(assets/images/menu.jpg)">
          <div class="container">
            <div class="row">
              <div class="col-lg-8">
                <div class="header-text">
                  <h2>Lundi</h2>
                  <div class="div-dec"></div>

                  <%if (rs.getString("jour").equals("lundi")){
                	  
                		
                	  	%>
                  <h3 style="color:#4e0101"> <b> <i>Petit Dejeuner : 
                  
                  </i></b></h3>
                  <h3 style="color: azure;"> Plat1: <% int id1=rs.getInt("pdej1");
                  PreparedStatement ps4= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps4.setInt(1,id1);
             		ResultSet rs2 = ps4.executeQuery(); 
             		rs2.next();%>
             		<%=rs2.getString("contenu")%>
                    
                  </h3>
                  <h3 style="color: azure;"> Plat2 : <% int id2=rs.getInt("pdej2");
                  PreparedStatement ps5= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps4.setInt(1,id2);
             		ResultSet rs3 = ps5.executeQuery(); 
             		rs3.next();%>
             		<%=rs3.getString("contenu")%>
                    
                  
                  </h3> 
                  <h3 style="color: azure;"> Plat3: <% int id3=rs.getInt("pdej3");
                  PreparedStatement ps6= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps6.setInt(1,id3);
             		ResultSet rs4 = ps6.executeQuery(); 
             		rs4.next();%>
             		<%=rs4.getString("contenu")%>
                    
                  
                  </h3>   
                   

                  <h3 style="color:#4e0101"> <b> <i>Dejeuner : </i></b></h3>
                  
                  <h3 style="color: azure;"> Entree: 
						
						<% int id4=rs.getInt("dej1");
                  PreparedStatement ps7= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps7.setInt(1,id4);
             		ResultSet rs5 = ps7.executeQuery(); 
             		rs5.next();%>
             		<%=rs5.getString("contenu")%>
                    
						
						
						</h3>
                  <h3 style="color: azure;"> Plat Principal : 
                  
                  <% int id5=rs.getInt("dej2");
                  PreparedStatement ps8= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps8.setInt(1,id5);
             		ResultSet rs6 = ps8.executeQuery(); 
             		rs6.next();%>
             		<%=rs6.getString("contenu")%>
                  
                  
                  </h3> 
                  <h3 style="color: azure;"> Dessert: 
                  
                  <% int id6=rs.getInt("dej3");
                  PreparedStatement ps9= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps9.setInt(1,id6);
             		ResultSet rs7 = ps9.executeQuery(); 
             		rs7.next();%>
             		<%=rs7.getString("contenu")%>
                  
                  </h3>   

                  <h3 style="color:#4e0101"> <b> <i>Diner :</i></b> </h3>
                  
                  <h3 style="color: azure;"> Entree: 
                  
                  <% int id7=rs.getInt("din1");
                  PreparedStatement ps10= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps10.setInt(1,id7);
             		ResultSet rs8 = ps10.executeQuery(); 
             		rs8.next();%>
             		<%=rs8.getString("contenu")%>
                    
                  
                  
                  </h3>
                  <h3 style="color: azure;"> Plat Principal : 
                   <% int id8=rs.getInt("din2");
                  PreparedStatement ps11= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps11.setInt(1,id8);
             		ResultSet rs9 = ps11.executeQuery(); 
             		rs9.next();%>
             		<%=rs9.getString("contenu")%>
                    
                  
                  
                  </h3> 
                  <h3 style="color: azure;"> Dessert: 
                  
                  
                   <% int id9=rs.getInt("din3");
                  PreparedStatement ps12= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps12.setInt(1,id9);
             		ResultSet rs10 = ps12.executeQuery(); 
             		rs10.next();%>
             		<%=rs10.getString("contenu")%>
                    
                  
                  
                  
                  </h3> 
                  
                  <% }%>
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
                  
                  <%if (rs.getString("jour").equals("mardi")){
                	  
                		
                	  	%>
                  
                  <h3 style="color:#4e0101"> <b> <i>Petit Dejeuner : 
                  
                  </i></b></h3>
                  <h3 style="color: azure;"> Plat1: <% int id10=rs.getInt("pdej1");
                  PreparedStatement ps4= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps4.setInt(1,id10);
             		ResultSet rs2 = ps4.executeQuery(); 
             		rs2.next();%>
             		<%=rs2.getString("contenu")%>
                    
                  </h3>
                  <h3 style="color: azure;"> Plat2 : <% int id11=rs.getInt("pdej2");
                  PreparedStatement ps5= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps4.setInt(1,id11);
             		ResultSet rs3 = ps5.executeQuery(); 
             		rs3.next();%>
             		<%=rs3.getString("contenu")%>
                    
                  
                  </h3> 
                  <h3 style="color: azure;"> Plat3: <% int id12=rs.getInt("pdej3");
                  PreparedStatement ps6= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps6.setInt(1,id12);
             		ResultSet rs4 = ps6.executeQuery(); 
             		rs4.next();%>
             		<%=rs4.getString("contenu")%>
                    
                  
                  </h3>   
                   

                  <h3 style="color:#4e0101"> <b> <i>Dejeuner : </i></b></h3>
                  
                  <h3 style="color: azure;"> Entree: 
						
						<% int id13=rs.getInt("dej1");
                  PreparedStatement ps7= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps7.setInt(1,id13);
             		ResultSet rs5 = ps7.executeQuery(); 
             		rs5.next();%>
             		<%=rs5.getString("contenu")%>
                    
						
						
						</h3>
                  <h3 style="color: azure;"> Plat Principal : 
                  
                  <% int id14=rs.getInt("dej2");
                  PreparedStatement ps8= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps8.setInt(1,id14);
             		ResultSet rs6 = ps8.executeQuery(); 
             		rs6.next();%>
             		<%=rs6.getString("contenu")%>
                  
                  
                  </h3> 
                  <h3 style="color: azure;"> Dessert: 
                  
                  <% int id15=rs.getInt("dej3");
                  PreparedStatement ps9= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps9.setInt(1,id15);
             		ResultSet rs7 = ps9.executeQuery(); 
             		rs7.next();%>
             		<%=rs7.getString("contenu")%>
                  
                  </h3>   

                  <h3 style="color:#4e0101"> <b> <i>Diner :</i></b> </h3>
                  
                  <h3 style="color: azure;"> Entree: 
                  
                  <% int id16=rs.getInt("din1");
                  PreparedStatement ps10= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps10.setInt(1,id16);
             		ResultSet rs8 = ps10.executeQuery(); 
             		rs8.next();%>
             		<%=rs8.getString("contenu")%>
                    
                  
                  
                  </h3>
                  <h3 style="color: azure;"> Plat Principal : 
                   <% int id17=rs.getInt("din2");
                  PreparedStatement ps11= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps11.setInt(1,id17);
             		ResultSet rs9 = ps11.executeQuery(); 
             		rs9.next();%>
             		<%=rs9.getString("contenu")%>
                    
                  
                  
                  </h3> 
                  <h3 style="color: azure;"> Dessert: 
                  
                  
                   <% int id18=rs.getInt("din3");
                  PreparedStatement ps12= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps12.setInt(1,id18);
             		ResultSet rs10 = ps12.executeQuery(); 
             		rs10.next();%>
             		<%=rs10.getString("contenu")%>
                    
                  
                  
                  
                  </h3>
                   <% }%> 
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
                  
                  <%if (rs.getString("jour").equals("mercredi")){
                	  
                		
                	  	%>
                  
                  <h3 style="color:#4e0101"> <b> <i>Petit Dejeuner : 
                  
                  </i></b></h3>
                  <h3 style="color: azure;"> Plat1: <% int id19=rs.getInt("pdej1");
                  PreparedStatement ps4= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps4.setInt(1,id19);
             		ResultSet rs2 = ps4.executeQuery(); 
             		rs2.next();%>
             		<%=rs2.getString("contenu")%>
                    
                  </h3>
                  <h3 style="color: azure;"> Plat2 : <% int id20=rs.getInt("pdej2");
                  PreparedStatement ps5= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps4.setInt(1,id20);
             		ResultSet rs3 = ps5.executeQuery(); 
             		rs3.next();%>
             		<%=rs3.getString("contenu")%>
                    
                  
                  </h3> 
                  <h3 style="color: azure;"> Plat3: <% int id21=rs.getInt("pdej3");
                  PreparedStatement ps6= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps6.setInt(1,id21);
             		ResultSet rs4 = ps6.executeQuery(); 
             		rs4.next();%>
             		<%=rs4.getString("contenu")%>
                    
                  
                  </h3>   
                   

                  <h3 style="color:#4e0101"> <b> <i>Dejeuner : </i></b></h3>
                  
                  <h3 style="color: azure;"> Entree: 
						
						<% int id22=rs.getInt("dej1");
                  PreparedStatement ps7= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps7.setInt(1,id22);
             		ResultSet rs5 = ps7.executeQuery(); 
             		rs5.next();%>
             		<%=rs5.getString("contenu")%>
                    
						
						
						</h3>
                  <h3 style="color: azure;"> Plat Principal : 
                  
                  <% int id23=rs.getInt("dej2");
                  PreparedStatement ps8= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps8.setInt(1,id23);
             		ResultSet rs6 = ps8.executeQuery(); 
             		rs6.next();%>
             		<%=rs6.getString("contenu")%>
                  
                  
                  </h3> 
                  <h3 style="color: azure;"> Dessert: 
                  
                  <% int id24=rs.getInt("dej3");
                  PreparedStatement ps9= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps9.setInt(1,id24);
             		ResultSet rs7 = ps9.executeQuery(); 
             		rs7.next();%>
             		<%=rs7.getString("contenu")%>
                  
                  </h3>   

                  <h3 style="color:#4e0101"> <b> <i>Diner :</i></b> </h3>
                  
                  <h3 style="color: azure;"> Entree: 
                  
                  <% int id25=rs.getInt("din1");
                  PreparedStatement ps10= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps10.setInt(1,id25);
             		ResultSet rs8 = ps10.executeQuery(); 
             		rs8.next();%>
             		<%=rs8.getString("contenu")%>
                    
                  
                  
                  </h3>
                  <h3 style="color: azure;"> Plat Principal : 
                   <% int id26=rs.getInt("din2");
                  PreparedStatement ps11= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps11.setInt(1,id26);
             		ResultSet rs9 = ps11.executeQuery(); 
             		rs9.next();%>
             		<%=rs9.getString("contenu")%>
                    
                  
                  
                  </h3> 
                  <h3 style="color: azure;"> Dessert: 
                  
                  
                   <% int id27=rs.getInt("din3");
                  PreparedStatement ps12= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps12.setInt(1,id27);
             		ResultSet rs10 = ps12.executeQuery(); 
             		rs10.next();%>
             		<%=rs10.getString("contenu")%>
                    
                  
                  
                  
                  </h3> 
                   <% }%>
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
                  
                  <%if (rs.getString("jour").equals("jeudi")){
                	  
                		
                	  	%>
                  
                  <h3 style="color:#4e0101"> <b> <i>Petit Dejeuner : 
                  
                  </i></b></h3>
                  <h3 style="color: azure;"> Plat1: <% int id28=rs.getInt("pdej1");
                  PreparedStatement ps4= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps4.setInt(1,id28);
             		ResultSet rs2 = ps4.executeQuery(); 
             		rs2.next();%>
             		<%=rs2.getString("contenu")%>
                    
                  </h3>
                  <h3 style="color: azure;"> Plat2 : <% int id29=rs.getInt("pdej2");
                  PreparedStatement ps5= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps4.setInt(1,id29);
             		ResultSet rs3 = ps5.executeQuery(); 
             		rs3.next();%>
             		<%=rs3.getString("contenu")%>
                    
                  
                  </h3> 
                  <h3 style="color: azure;"> Plat3: <% int id30=rs.getInt("pdej3");
                  PreparedStatement ps6= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps6.setInt(1,id30);
             		ResultSet rs4 = ps6.executeQuery(); 
             		rs4.next();%>
             		<%=rs4.getString("contenu")%>
                    
                  
                  </h3>   
                   

                  <h3 style="color:#4e0101"> <b> <i>Dejeuner : </i></b></h3>
                  
                  <h3 style="color: azure;"> Entree: 
						
						<% int id31=rs.getInt("dej1");
                  PreparedStatement ps7= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps7.setInt(1,id31);
             		ResultSet rs5 = ps7.executeQuery(); 
             		rs5.next();%>
             		<%=rs5.getString("contenu")%>
                    
						
						
						</h3>
                  <h3 style="color: azure;"> Plat Principal : 
                  
                  <% int id32=rs.getInt("dej2");
                  PreparedStatement ps8= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps8.setInt(1,id32);
             		ResultSet rs6 = ps8.executeQuery(); 
             		rs6.next();%>
             		<%=rs6.getString("contenu")%>
                  
                  
                  </h3> 
                  <h3 style="color: azure;"> Dessert: 
                  
                  <% int id33=rs.getInt("dej3");
                  PreparedStatement ps9= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps9.setInt(1,id33);
             		ResultSet rs7 = ps9.executeQuery(); 
             		rs7.next();%>
             		<%=rs7.getString("contenu")%>
                  
                  </h3>   

                  <h3 style="color:#4e0101"> <b> <i>Diner :</i></b> </h3>
                  
                  <h3 style="color: azure;"> Entree: 
                  
                  <% int id34=rs.getInt("din1");
                  PreparedStatement ps10= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps10.setInt(1,id34);
             		ResultSet rs8 = ps10.executeQuery(); 
             		rs8.next();%>
             		<%=rs8.getString("contenu")%>
                    
                  
                  
                  </h3>
                  <h3 style="color: azure;"> Plat Principal : 
                   <% int id35=rs.getInt("din2");
                  PreparedStatement ps11= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps11.setInt(1,id35);
             		ResultSet rs9 = ps11.executeQuery(); 
             		rs9.next();%>
             		<%=rs9.getString("contenu")%>
                    
                  
                  
                  </h3> 
                  <h3 style="color: azure;"> Dessert: 
                  
                  
                   <% int id36=rs.getInt("din3");
                  PreparedStatement ps12= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps12.setInt(1,id36);
             		ResultSet rs10 = ps12.executeQuery(); 
             		rs10.next();%>
             		<%=rs10.getString("contenu")%>
                    
                  
                  
                  
                  </h3> 
                  
                   <% }%>
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
                  
                  <%if (rs.getString("jour").equals("vendredi")){
                	  
                		
                	  	%>
                  
                  <h3 style="color:#4e0101"> <b> <i>Petit Dejeuner : 
                  
                  </i></b></h3>
                  <h3 style="color: azure;"> Plat1: <% int id37=rs.getInt("pdej1");
                  PreparedStatement ps4= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps4.setInt(1,id37);
             		ResultSet rs2 = ps4.executeQuery(); 
             		rs2.next();%>
             		<%=rs2.getString("contenu")%>
                    
                  </h3>
                  <h3 style="color: azure;"> Plat2 : <% int id38=rs.getInt("pdej2");
                  PreparedStatement ps5= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps4.setInt(1,id38);
             		ResultSet rs3 = ps5.executeQuery(); 
             		rs3.next();%>
             		<%=rs3.getString("contenu")%>
                    
                  
                  </h3> 
                  <h3 style="color: azure;"> Plat3: <% int id39=rs.getInt("pdej3");
                  PreparedStatement ps6= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps6.setInt(1,id39);
             		ResultSet rs4 = ps6.executeQuery(); 
             		rs4.next();%>
             		<%=rs4.getString("contenu")%>
                    
                  
                  </h3>   
                   

                  <h3 style="color:#4e0101"> <b> <i>Dejeuner : </i></b></h3>
                  
                  <h3 style="color: azure;"> Entree: 
						
						<% int id40=rs.getInt("dej1");
                  PreparedStatement ps7= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps7.setInt(1,id40);
             		ResultSet rs5 = ps7.executeQuery(); 
             		rs5.next();%>
             		<%=rs5.getString("contenu")%>
                    
						
						
						</h3>
                  <h3 style="color: azure;"> Plat Principal : 
                  
                  <% int id41=rs.getInt("dej2");
                  PreparedStatement ps8= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps8.setInt(1,id41);
             		ResultSet rs6 = ps8.executeQuery(); 
             		rs6.next();%>
             		<%=rs6.getString("contenu")%>
                  
                  
                  </h3> 
                  <h3 style="color: azure;"> Dessert: 
                  
                  <% int id42=rs.getInt("dej3");
                  PreparedStatement ps9= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps9.setInt(1,id42);
             		ResultSet rs7 = ps9.executeQuery(); 
             		rs7.next();%>
             		<%=rs7.getString("contenu")%>
                  
                  </h3>   

                  <h3 style="color:#4e0101"> <b> <i>Diner :</i></b> </h3>
                  
                  <h3 style="color: azure;"> Entree: 
                  
                  <% int id43=rs.getInt("din1");
                  PreparedStatement ps10= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps10.setInt(1,id43);
             		ResultSet rs8 = ps10.executeQuery(); 
             		rs8.next();%>
             		<%=rs8.getString("contenu")%>
                    
                  
                  
                  </h3>
                  <h3 style="color: azure;"> Plat Principal : 
                   <% int id44=rs.getInt("din2");
                  PreparedStatement ps11= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps11.setInt(1,id44);
             		ResultSet rs9 = ps11.executeQuery(); 
             		rs9.next();%>
             		<%=rs9.getString("contenu")%>
                    
                  
                  
                  </h3> 
                  <h3 style="color: azure;"> Dessert: 
                  
                  
                   <% int id45=rs.getInt("din3");
                  PreparedStatement ps12= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps12.setInt(1,id45);
             		ResultSet rs10 = ps12.executeQuery(); 
             		rs10.next();%>
             		<%=rs10.getString("contenu")%>
                    
                  
                  
                  
                  </h3> 
                  
                   <% }%>
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
                  
                  <%if (rs.getString("jour").equals("samedi")){
                	  
                		
                	  	%>
                  
                 <h3 style="color:#4e0101"> <b> <i>Petit Dejeuner : 
                  
                  </i></b></h3>
                  <h3 style="color: azure;"> Plat1: <% int id46=rs.getInt("pdej1");
                  PreparedStatement ps4= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps4.setInt(1,id46);
             		ResultSet rs2 = ps4.executeQuery(); 
             		rs2.next();%>
             		<%=rs2.getString("contenu")%>
                    
                  </h3>
                  <h3 style="color: azure;"> Plat2 : <% int id47=rs.getInt("pdej2");
                  PreparedStatement ps5= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps4.setInt(1,id47);
             		ResultSet rs3 = ps5.executeQuery(); 
             		rs3.next();%>
             		<%=rs3.getString("contenu")%>
                    
                  
                  </h3> 
                  <h3 style="color: azure;"> Plat3: <% int id48=rs.getInt("pdej3");
                  PreparedStatement ps6= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps6.setInt(1,id48);
             		ResultSet rs4 = ps6.executeQuery(); 
             		rs4.next();%>
             		<%=rs4.getString("contenu")%>
                    
                  
                  </h3>   
                   

                  <h3 style="color:#4e0101"> <b> <i>Dejeuner : </i></b></h3>
                  
                  <h3 style="color: azure;"> Entree: 
						
						<% int id49=rs.getInt("dej1");
                  PreparedStatement ps7= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps7.setInt(1,id49);
             		ResultSet rs5 = ps7.executeQuery(); 
             		rs5.next();%>
             		<%=rs5.getString("contenu")%>
                    
						
						
						</h3>
                  <h3 style="color: azure;"> Plat Principal : 
                  
                  <% int id50=rs.getInt("dej2");
                  PreparedStatement ps8= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps8.setInt(1,id50);
             		ResultSet rs6 = ps8.executeQuery(); 
             		rs6.next();%>
             		<%=rs6.getString("contenu")%>
                  
                  
                  </h3> 
                  <h3 style="color: azure;"> Dessert: 
                  
                  <% int id51=rs.getInt("dej3");
                  PreparedStatement ps9= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps9.setInt(1,id51);
             		ResultSet rs7 = ps9.executeQuery(); 
             		rs7.next();%>
             		<%=rs7.getString("contenu")%>
                  
                  </h3>   

                  <h3 style="color:#4e0101"> <b> <i>Diner :</i></b> </h3>
                  
                  <h3 style="color: azure;"> Entree: 
                  
                  <% int id52=rs.getInt("din1");
                  PreparedStatement ps10= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps10.setInt(1,id52);
             		ResultSet rs8 = ps10.executeQuery(); 
             		rs8.next();%>
             		<%=rs8.getString("contenu")%>
                    
                  
                  
                  </h3>
                  <h3 style="color: azure;"> Plat Principal : 
                   <% int id53=rs.getInt("din2");
                  PreparedStatement ps11= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps11.setInt(1,id53);
             		ResultSet rs9 = ps11.executeQuery(); 
             		rs9.next();%>
             		<%=rs9.getString("contenu")%>
                    
                  
                  
                  </h3> 
                  <h3 style="color: azure;"> Dessert: 
                  
                  
                   <% int id54=rs.getInt("din3");
                  PreparedStatement ps12= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps12.setInt(1,id54);
             		ResultSet rs10 = ps12.executeQuery(); 
             		rs10.next();%>
             		<%=rs10.getString("contenu")%>
                    
                  
                  
                  
                  </h3> 
 <% }%>
                 
                </div>
              </div>
            </div>
          </div>
          
          <%}
                                  } catch (SQLException e) {
                                  e.printStackTrace();
                                  } %>
          
        </div>
      </div>
    




   






      






    </div>
    <button class="btn btn-primary " id="submitButton" type="submit">Retour Ã  l'Accueil</button>
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
                        Site archÃ©ologique de Carthage
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
                    <h4 class="text-uppercase mb-4">DÃ©veloppÃ©e par</h4>
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
  </body>
</html>
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
                  String p2="";String p3="";String p4="";String p5="";String p6="";String p7="";String p8="";String p9="";String p10="";
                  String p11="";String p12="";String p13="";String p14="";String p15="";String p16="";String p17="";String p18="";String p19="";
                  String p20="";String p21="";String p22="";String p23="";String p24="";String p25="";String p26="";String p27="";String p28="";
                  String p29="";String p30="";String p31="";String p32="";String p33="";String p34="";String p35="";String p36="";String p37="";
                  String p38="";String p39="";String p40="";String p41="";String p42="";String p43="";String p44="";String p45="";String p46="";
                  String p47="";String p48="";String p49="";String p50="";String p51="";String p52="";String p53="";String p54="";String p55="";
%>
                                            <% while (rs.next()) { %>
                                            
                                            
                                            
                                            
                                             <%if (rs.getString("jour").equals("lundi")){%>
                                          
                   <% int id1=rs.getInt("pdej1");
                  PreparedStatement ps4= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps4.setInt(1,id1);
             		ResultSet rs2 = ps4.executeQuery(); 
             		rs2.next();%>
             		<% p2=rs2.getString("contenu");%>
             		 <% int id2=rs.getInt("pdej2");
                  PreparedStatement ps5= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps4.setInt(1,id2);
             		ResultSet rs3 = ps5.executeQuery(); 
             		rs3.next();%>
             		<% p3=rs3.getString("contenu");%>
             		
             		 <% int id3=rs.getInt("pdej3");
                  PreparedStatement ps6= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps6.setInt(1,id3);
             		ResultSet rs4 = ps6.executeQuery(); 
             		rs4.next();%>
             		<% p4=rs4.getString("contenu");%>
             		<% int id4=rs.getInt("dej1");
                  PreparedStatement ps7= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps7.setInt(1,id4);
             		ResultSet rs5 = ps7.executeQuery(); 
             		rs5.next();%>
             		<% p5=rs5.getString("contenu");%>
             		<% int id5=rs.getInt("dej2");
                  PreparedStatement ps8= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps8.setInt(1,id5);
             		ResultSet rs6 = ps8.executeQuery(); 
             		rs6.next();%>
             		<% p6=rs6.getString("contenu");%>
             		<% int id6=rs.getInt("dej3");
                  PreparedStatement ps9= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps9.setInt(1,id6);
             		ResultSet rs7 = ps9.executeQuery(); 
             		rs7.next();%>
             		<% p7=rs7.getString("contenu");%>
             		<% int id7=rs.getInt("din1");
                  PreparedStatement ps10= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps10.setInt(1,id7);
             		ResultSet rs8 = ps10.executeQuery(); 
             		rs8.next();%>
             		<% p8=rs8.getString("contenu");%>
             		<% int id8=rs.getInt("din2");
                  PreparedStatement ps11= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps11.setInt(1,id8);
             		ResultSet rs9 = ps11.executeQuery(); 
             		rs9.next();%>
             		<% p9=rs9.getString("contenu");%>
             		<% int id9=rs.getInt("din3");
                  PreparedStatement ps12= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps12.setInt(1,id9);
             		ResultSet rs10 = ps12.executeQuery(); 
             		rs10.next();%>
             		<% p10=rs10.getString("contenu");%>
             		<% }%>
             		
             		
             		
                  <%if (rs.getString("jour").equals("mardi")){%>
                  
             		 <% int id10=rs.getInt("pdej1");
                  PreparedStatement ps13= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps13.setInt(1,id10);
             		ResultSet rs11 = ps13.executeQuery(); 
             		rs11.next();%>
             		<% p11=rs11.getString("contenu");%>
             		 <% int id11=rs.getInt("pdej2");
                  PreparedStatement ps14= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps14.setInt(1,id11);
             		ResultSet rs12 = ps14.executeQuery(); 
             		rs12.next();%>
             		<% p12=rs12.getString("contenu");%>
             		 <% int id12=rs.getInt("pdej3");
                  PreparedStatement ps15= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps15.setInt(1,id12);
             		ResultSet rs13 = ps15.executeQuery(); 
             		rs13.next();%>
             		<% p13=rs13.getString("contenu");%>
             		<% int id13=rs.getInt("dej1");
                  PreparedStatement ps16= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps16.setInt(1,id13);
             		ResultSet rs14 = ps16.executeQuery(); 
             		rs14.next();%>
             		<% p14=rs14.getString("contenu");%>
             		  <% int id14=rs.getInt("dej2");
                  PreparedStatement ps17= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps17.setInt(1,id14);
             		ResultSet rs15 = ps17.executeQuery(); 
             		rs15.next();%>
             		<% p15=rs15.getString("contenu");%>
             		<% int id15=rs.getInt("dej3");
                  PreparedStatement ps18= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps18.setInt(1,id15);
             		ResultSet rs16 = ps18.executeQuery(); 
             		rs16.next();%>
             		<% p16=rs16.getString("contenu");%>
             		<% int id16=rs.getInt("din1");
                  PreparedStatement ps19= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps19.setInt(1,id16);
             		ResultSet rs17 = ps19.executeQuery(); 
             		rs17.next();%>
             		<% p17=rs17.getString("contenu");%>
             		<% int id17=rs.getInt("din2");
                  PreparedStatement ps20= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps20.setInt(1,id17);
             		ResultSet rs18 = ps20.executeQuery(); 
             		rs18.next();%>
             		<% p18=rs18.getString("contenu");%>
             		 <% int id18=rs.getInt("din3");
                  PreparedStatement ps21= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps21.setInt(1,id18);
             		ResultSet rs19 = ps21.executeQuery(); 
             		rs19.next();%>
             		<% p19=rs19.getString("contenu");%>
             		 <% }%>
             		 
             		 
             		 
             		 <%if (rs.getString("jour").equals("mercredi")){	%>
                  
             		  <% int id19=rs.getInt("pdej1");
                  PreparedStatement ps22= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps22.setInt(1,id19);
             		ResultSet rs20 = ps22.executeQuery(); 
             		rs20.next();%>
             		<% p20=rs20.getString("contenu");%>
             		
             		  <% int id20=rs.getInt("pdej2");
                  PreparedStatement ps23= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps23.setInt(1,id20);
             		ResultSet rs21 = ps23.executeQuery(); 
             		rs21.next();%>
             		<% p21=rs21.getString("contenu");%>
             		
             		 <% int id21=rs.getInt("pdej3");
                  PreparedStatement ps24= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps24.setInt(1,id21);
             		ResultSet rs22 = ps24.executeQuery(); 
             		rs22.next();%>
             		<% p22=rs22.getString("contenu");%>
             		
             			<% int id22=rs.getInt("dej1");
                  PreparedStatement ps25= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps25.setInt(1,id22);
             		ResultSet rs23 = ps25.executeQuery(); 
             		rs23.next();%>
             		<% p23=rs23.getString("contenu");%>
             		
             		<% int id23=rs.getInt("dej2");
                  PreparedStatement ps26= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps26.setInt(1,id23);
             		ResultSet rs24 = ps26.executeQuery(); 
             		rs24.next();%>
             		<% p24=rs24.getString("contenu");%>
             		
             		 <% int id24=rs.getInt("dej3");
                  PreparedStatement ps28= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps28.setInt(1,id24);
             		ResultSet rs25 = ps28.executeQuery(); 
             		rs25.next();%>
             		<% p25=rs25.getString("contenu");%>
             		
             		 <% int id25=rs.getInt("din1");
                  PreparedStatement ps29= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps29.setInt(1,id25);
             		ResultSet rs26 = ps29.executeQuery(); 
             		rs26.next();%>
             		<% p26=rs26.getString("contenu");%>
             		
             		 <% int id26=rs.getInt("din2");
                  PreparedStatement ps30= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps30.setInt(1,id26);
             		ResultSet rs27 = ps30.executeQuery(); 
             		rs27.next();%>
             		<% p27=rs27.getString("contenu");%>
             		
             		 <% int id27=rs.getInt("din3");
                  PreparedStatement ps31= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps31.setInt(1,id27);
             		ResultSet rs28 = ps31.executeQuery(); 
             		rs28.next();%>
             		<% p28=rs28.getString("contenu");%>
             		
             		 <% }%>
             		
             		
             		<%if (rs.getString("jour").equals("jeudi")){%>
             		
                   <% int id28=rs.getInt("pdej1");
                  PreparedStatement ps32= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps32.setInt(1,id28);
             		ResultSet rs29 = ps32.executeQuery(); 
             		rs29.next();%>
             		<% p29=rs29.getString("contenu");%>
             		 <% int id29=rs.getInt("pdej2");
                  PreparedStatement ps33= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps33.setInt(1,id29);
             		ResultSet rs30 = ps33.executeQuery(); 
             		rs30.next();%>
             		<% p30=rs30.getString("contenu");%>
             		 <% int id30=rs.getInt("pdej3");
                  PreparedStatement ps34= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps34.setInt(1,id30);
             		ResultSet rs31 = ps34.executeQuery(); 
             		rs31.next();%>
             		<% p31=rs31.getString("contenu");%>
             		<% int id31=rs.getInt("dej1");
                  PreparedStatement ps35= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps35.setInt(1,id31);
             		ResultSet rs32 = ps35.executeQuery(); 
             		rs32.next();%>
             		<% p32=rs32.getString("contenu");%>
             		<% int id32=rs.getInt("dej2");
                  PreparedStatement ps36= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps36.setInt(1,id32);
             		ResultSet rs33 = ps36.executeQuery(); 
             		rs33.next();%>
             		<% p33=rs33.getString("contenu");%>
             		<% int id33=rs.getInt("dej3");
                  PreparedStatement ps37= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps37.setInt(1,id33);
             		ResultSet rs34 = ps37.executeQuery(); 
             		rs34.next();%>
             		<% p34=rs34.getString("contenu");%>
             		 <% int id34=rs.getInt("din1");
                  PreparedStatement ps38= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps38.setInt(1,id34);
             		ResultSet rs35 = ps38.executeQuery(); 
             		rs35.next();%>
             		<% p35=rs35.getString("contenu");%>
             		<% int id35=rs.getInt("din2");
                  PreparedStatement ps39= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps39.setInt(1,id35);
             		ResultSet rs36 = ps39.executeQuery(); 
             		rs36.next();%>
             		<% p36=rs36.getString("contenu");%>
             		<% int id36=rs.getInt("din3");
                  PreparedStatement ps40= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps40.setInt(1,id36);
             		ResultSet rs37 = ps40.executeQuery(); 
             		rs37.next();%>
             		<% p37=rs37.getString("contenu");%>
                   <% }%>
             		
             		<%if (rs.getString("jour").equals("vendredi")){%>
                  
                   <% int id37=rs.getInt("pdej1");
                  PreparedStatement ps41= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps41.setInt(1,id37);
             		ResultSet rs38 = ps41.executeQuery(); 
             		rs38.next();%>
             		<% p38=rs38.getString("contenu");%>
             		 <% int id38=rs.getInt("pdej2");
                  PreparedStatement ps42= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps42.setInt(1,id38);
             		ResultSet rs39 = ps42.executeQuery(); 
             		rs39.next();%>
             		<% p39=rs39.getString("contenu");%>
             		 <% int id39=rs.getInt("pdej3");
                  PreparedStatement ps43= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps43.setInt(1,id39);
             		ResultSet rs40 = ps43.executeQuery(); 
             		rs40.next();%>
             		<% p40=rs40.getString("contenu");%>
             		<% int id40=rs.getInt("dej1");
                  PreparedStatement ps44= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps44.setInt(1,id40);
             		ResultSet rs41 = ps44.executeQuery(); 
             		rs41.next();%>
             		<% p41=rs41.getString("contenu");%>
             		<% int id41=rs.getInt("dej2");
                  PreparedStatement ps45= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps45.setInt(1,id41);
             		ResultSet rs42 = ps45.executeQuery(); 
             		rs42.next();%>
             		<% p42=rs42.getString("contenu");%>
             		<% int id42=rs.getInt("dej3");
                  PreparedStatement ps47= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps47.setInt(1,id42);
             		ResultSet rs43 = ps47.executeQuery(); 
             		rs43.next();%>
             		<% p43=rs43.getString("contenu");%>
             		<% int id43=rs.getInt("din1");
                  PreparedStatement ps48= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps48.setInt(1,id43);
             		ResultSet rs44 = ps48.executeQuery(); 
             		rs44.next();%>
             		<% p44=rs44.getString("contenu");%>
             		 <% int id44=rs.getInt("din2");
                  PreparedStatement ps49= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps49.setInt(1,id44);
             		ResultSet rs45 = ps49.executeQuery(); 
             		rs45.next();%>
             		<% p45=rs45.getString("contenu");%>
             		<% int id45=rs.getInt("din3");
                  PreparedStatement ps50= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps50.setInt(1,id45);
             		ResultSet rs46 = ps50.executeQuery(); 
             		rs46.next();%>
             		<% p46=rs46.getString("contenu");%>
             		  <% }%>
             		
             		 <%if (rs.getString("jour").equals("samedi")){	%>
             		  <% int id46=rs.getInt("pdej1");
                  PreparedStatement ps51= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps51.setInt(1,id46);
             		ResultSet rs47 = ps51.executeQuery(); 
             		rs47.next();%>
             		<% p47=rs47.getString("contenu");%>
             		 <% int id47=rs.getInt("pdej2");
                  PreparedStatement ps52= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps52.setInt(1,id47);
             		ResultSet rs48 = ps52.executeQuery(); 
             		rs48.next();%>
             		<% p48=rs48.getString("contenu");%>
             		 <% int id48=rs.getInt("pdej3");
                  PreparedStatement ps53= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps53.setInt(1,id48);
             		ResultSet rs49 = ps53.executeQuery(); 
             		rs49.next();%>
             		<% p49=rs49.getString("contenu");%>
             		<% int id49=rs.getInt("dej1");
                  PreparedStatement ps54= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps54.setInt(1,id49);
             		ResultSet rs50 = ps54.executeQuery(); 
             		rs50.next();%>
             		<% p50=rs50.getString("contenu");%>
             		<% int id50=rs.getInt("dej2");
                  PreparedStatement ps55= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps55.setInt(1,id50);
             		ResultSet rs51 = ps55.executeQuery(); 
             		rs51.next();%>
             		<% p51=rs51.getString("contenu");%>
             		<% int id51=rs.getInt("dej3");
                  PreparedStatement ps56= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps56.setInt(1,id51);
             		ResultSet rs52 = ps56.executeQuery(); 
             		rs52.next();%>
             		<% p52=rs52.getString("contenu");%>
             		<% int id52=rs.getInt("din1");
                  PreparedStatement ps57= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps57.setInt(1,id52);
             		ResultSet rs53 = ps57.executeQuery(); 
             		rs53.next();%>
             		<% p53=rs53.getString("contenu");%>
             		<% int id53=rs.getInt("din2");
                  PreparedStatement ps58= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps58.setInt(1,id53);
             		ResultSet rs54 = ps58.executeQuery(); 
             		rs54.next();%>
             		<% p54=rs54.getString("contenu");%>
             		 <% int id54=rs.getInt("din3");
                  PreparedStatement ps59= conn.prepareStatement("select * from plat_dispo WHERE plat_id=?;");
					ps59.setInt(1,id54);
             		ResultSet rs55 = ps59.executeQuery(); 
             		rs55.next();%>
             		<% p55=rs55.getString("contenu");%>
             		 <% }}%>
             		
      <div class="swiper-slide">
        <div class="slide-inner" style="background-image:url(assets/images/menu.jpg)">
          <div class="container">
            <div class="row">
              <div class="col-lg-8">
                <div class="header-text">
                  <h2>Lundi</h2>
                  <div class="div-dec"></div>

                 <h3 style="color:#4e0101"> <b> <i>Petit Dejeuner : </i></b></h3>
                  <h3 style="color: azure;"> Plat1:<%=p2 %></h3>
                  <h3 style="color: azure;"> Plat2 :<%=p3%></h3> 
                  <h3 style="color: azure;"> Plat3:<%=p4%></h3> 
                  <h3 style="color:#4e0101"> <b> <i>Dejeuner : </i></b></h3>
                   <h3 style="color: azure;"> Entree:<%=p5%></h3>
                  <h3 style="color: azure;"> Plat Principal : <%=p6%> </h3> 
                  <h3 style="color: azure;"> Dessert:  <%=p7%>  </h3>   
                   <h3 style="color:#4e0101"> <b> <i>Diner :</i></b> </h3>
                  <h3 style="color: azure;"> Entree: <%=p8%> </h3>
                  <h3 style="color: azure;"> Plat Principal : <%=p9%>  </h3> 
                  <h3 style="color: azure;"> Dessert: <%=p10%>  </h3> 
                  
                  
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
                  
                  
                  <h3 style="color:#4e0101"> <b> <i>Petit Dejeuner : 
                  
                  </i></b></h3>
                  <h3 style="color: azure;"> Plat1:<%=p11%> </h3>
                  <h3 style="color: azure;"> Plat2 :<%=p12%> </h3> 
                  <h3 style="color: azure;"> Plat3:<%=p13%></h3>   
                   <h3 style="color:#4e0101"> <b> <i>Dejeuner : </i></b></h3>
                  <h3 style="color: azure;"> Entree: <%=p14%></h3>
                  <h3 style="color: azure;"> Plat Principal : <%=p15%>   </h3> 
                  <h3 style="color: azure;"> Dessert: <%=p16%> </h3>   
                   <h3 style="color:#4e0101"> <b> <i>Diner :</i></b> </h3>
                  <h3 style="color: azure;"> Entree:   <%=p17%> </h3>
                  <h3 style="color: azure;"> Plat Principal :  <%=p18%></h3> 
                  <h3 style="color: azure;"> Dessert: <%=p19%> </h3>
                  
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
                   <h3 style="color:#4e0101"> <b> <i>Petit Dejeuner :  </i></b></h3>
                  <h3 style="color: azure;"> Plat1:<%=p20%> </h3>
                  <h3 style="color: azure;"> Plat2 : <%=p21%></h3> 
                  <h3 style="color: azure;"> Plat3:<%=p22%> </h3>   
                   <h3 style="color:#4e0101"> <b> <i>Dejeuner : </i></b></h3>
                  <h3 style="color: azure;"> Entree: <%=p23%></h3>
                  <h3 style="color: azure;"> Plat Principal : <%=p24%></h3> 
                  <h3 style="color: azure;"> Dessert: <%=p25%> </h3>   
				 <h3 style="color:#4e0101"> <b> <i>Diner :</i></b> </h3>
                 <h3 style="color: azure;"> Entree: <%=p26%> </h3>
                  <h3 style="color: azure;"> Plat Principal : <%=p27%>  </h3> 
                  <h3 style="color: azure;"> Dessert:<%=p28%> </h3> 
                  
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
                   <h3 style="color:#4e0101"> <b> <i>Petit Dejeuner : </i></b></h3>
                  <h3 style="color: azure;"> Plat1:<%=p29%> </h3>
                  <h3 style="color: azure;"> Plat2 :<%=p30%> </h3> 
                  <h3 style="color: azure;"> Plat3:<%=p31%></h3>   
                   <h3 style="color:#4e0101"> <b> <i>Dejeuner : </i></b></h3>
                  <h3 style="color: azure;"> Entree: <%=p32%></h3>
                  <h3 style="color: azure;"> Plat Principal : <%=p33%></h3> 
                  <h3 style="color: azure;"> Dessert:<%=p34%> </h3>   
					<h3 style="color:#4e0101"> <b> <i>Diner :</i></b> </h3>
                  <h3 style="color: azure;"> Entree:<%=p35%></h3>
                  <h3 style="color: azure;"> Plat Principal :<%=p36%></h3> 
                  <h3 style="color: azure;"> Dessert: <%=p37%></h3> 
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
                  <h3 style="color:#4e0101"> <b> <i>Petit Dejeuner : </i></b></h3>
                  <h3 style="color: azure;"> Plat1:<%=p38%></h3>
                  <h3 style="color: azure;"> Plat2 :<%=p39%> </h3> 
                  <h3 style="color: azure;"> Plat3:<%=p40%></h3>   
                   <h3 style="color:#4e0101"> <b> <i>Dejeuner : </i></b></h3>
                    <h3 style="color: azure;"> Entree: <%=p41%></h3>
                  <h3 style="color: azure;"> Plat Principal : <%=p42%></h3> 
                  <h3 style="color: azure;"> Dessert: <%=p43%> </h3>   
				 <h3 style="color:#4e0101"> <b> <i>Diner :</i></b> </h3>
                   <h3 style="color: azure;"> Entree: <%=p44%> </h3>
                  <h3 style="color: azure;"> Plat Principal : <%=p45%> </h3> 
                  <h3 style="color: azure;"> Dessert: <%=p46%> </h3> 
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
                  <h3 style="color:#4e0101"> <b> <i>Petit Dejeuner :  </i></b></h3>
                  <h3 style="color: azure;"> Plat1: <%=p47%> </h3>
                  <h3 style="color: azure;"> Plat2 :<%=p48%> </h3> 
                  <h3 style="color: azure;"> Plat3:<%=p49%></h3>   
                   <h3 style="color:#4e0101"> <b> <i>Dejeuner : </i></b></h3>
                   <h3 style="color: azure;"> Entree:<%=p50%></h3>
                  <h3 style="color: azure;"> Plat Principal :<%=p51%></h3> 
                  <h3 style="color: azure;"> Dessert:<%=p52%></h3>   
					
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
    <a href="student.html"><button class="btn btn-primary " id="submitButton" type="submit">Retour a l'Accueil</button></a>
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
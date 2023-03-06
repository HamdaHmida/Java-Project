package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projet.VerifLogin;
@WebServlet(name="votenon",urlPatterns= {"/plm"})
public class PDVN extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VerifLogin projet =new VerifLogin();
		String repn=request.getParameter("non");
		int id_plat=Integer.valueOf(request.getParameter("id_plat"));
		String repo=request.getParameter("oui");
		if(repn!=null) {projet.Vote_plat_dispo("non",id_plat);
		request.getRequestDispatcher("plat_dispoS.jsp").forward(request,response);}
		else if(repo!=null) {projet.Vote_plat_dispo("oui",id_plat);
		request.getRequestDispatcher("plat_dispoS.jsp").forward(request,response);}
		
	}
}

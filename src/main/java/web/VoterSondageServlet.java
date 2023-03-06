package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projet.VerifLogin;
@WebServlet(name="ve",urlPatterns= {"/votsond"})
public class VoterSondageServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VerifLogin projet =new VerifLogin();
		String repn=request.getParameter("non");
		int id_vote=Integer.valueOf(request.getParameter("id_vote"));
		String repo=request.getParameter("oui");
		if(repn!=null) {projet.Vote_Sondage("non",id_vote);
		request.getRequestDispatcher("sondageE.jsp").forward(request,response);}
		else if(repo!=null) {projet.Vote_Sondage("oui",id_vote);
		request.getRequestDispatcher("sondageE.jsp").forward(request,response);}
		
	}
}
package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projet.PCataloque;
import projet.VerifLogin;

@WebServlet (name="ajet",urlPatterns= {"/ajouet"})
public class AjoutEt extends HttpServlet {
	private PCataloque metier;
	@Override
	public void init() throws ServletException {
	VerifLogin x=new VerifLogin();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VerifLogin projet =new VerifLogin();
		
		int id=Integer.valueOf(request.getParameter("id_et"));
		String room=request.getParameter("num_cham");
		String nom=request.getParameter("nom");
		String prenom=request.getParameter("prenom");
		String mail=request.getParameter("email");
		int num= Integer.valueOf(request.getParameter("num_tel"));
		
		projet.AjoutEt(id,room,nom,prenom,mail,num);

		request.getRequestDispatcher("listeEtudiant.jsp").forward(request,response);
	
		
	}
}

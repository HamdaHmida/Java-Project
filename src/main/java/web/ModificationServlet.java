package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projet.VerifLogin;
@WebServlet(name="s",urlPatterns= {"/modifier"})
public class ModificationServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VerifLogin projet =new VerifLogin();
		String repus=request.getParameter("user");
		//String repmp=request.getParameter("mdp");
		request.setAttribute("msg1", "");
		request.setAttribute("msg2", "");
		if(repus!=null) 
		{
			String nu=request.getParameter("nu");
			String au=request.getParameter("au");
			String mp=request.getParameter("mp");
			int b=projet.Up_User_Name(nu,au,mp);
			if(b==0) { request.setAttribute("msg2","modification effectuee");
				request.getRequestDispatcher("profil.jsp").forward(request,response);
			
			}else if(b==1) {
				request.setAttribute("msg2","nom d'utilisateur existe deja");
				request.getRequestDispatcher("profil.jsp").forward(request,response);
			}else if(b==2) {
				request.setAttribute("msg2","nom d'utilisateur incorrecte");
				request.getRequestDispatcher("profil.jsp").forward(request,response);
			}else if(b==3) {
				request.setAttribute("msg2","mot de passe incorrecte");
				request.getRequestDispatcher("profil.jsp").forward(request,response);
			}
			
		}
		/*else if(repmp!=null) 
		{
			String nmp1=request.getParameter("nmp1");
			String nmp2=request.getParameter("nmp2");
			String mp=request.getParameter("mp");
			int b=projet.Up_Password(nmp1,nmp2,mp);
			if(b==1) { request.setAttribute("msg1","confirmation incorrect !!");
				request.getRequestDispatcher("profil.jsp").forward(request,response);

			}
			else if(b==2) {request.setAttribute("msg1","mot de passe incorrect !!");
				request.getRequestDispatcher("profil.jsp").forward(request,response);
			
			}else if(b==0) {request.setAttribute("msg1","modification effecutee avec succces");
				request.getRequestDispatcher("profil.jsp").forward(request,response);
				
			}
			}*/
		}}
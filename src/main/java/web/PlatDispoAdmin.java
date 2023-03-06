package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projet.Plat_Dispo;
import projet.VerifLogin;

@WebServlet("/AffplatDispoR")
public class PlatDispoAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PlatDispoAdmin() {
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VerifLogin projet =new VerifLogin();
		PlatDispo plat = new PlatDispo();
		List<Plat_Dispo> res = projet.getPlatDispo();
		plat.setPlats(res);
		request.setAttribute("plat", plat);
		String type=request.getParameter("type");
		String cont=request.getParameter("contenu");
		projet.Ajout_plat(type,cont);
		request.getRequestDispatcher("plat_dispoR.jsp").forward(request,response);
	}
	

}
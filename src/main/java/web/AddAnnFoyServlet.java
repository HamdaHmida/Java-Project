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

@WebServlet (name="daf",urlPatterns= {"/depannfoy"})
public class AddAnnFoyServlet extends HttpServlet {
	private PCataloque metier;
	@Override
	public void init() throws ServletException {
	VerifLogin x=new VerifLogin();
	}
	@Override
	protected void doGet(HttpServletRequest request,
	 HttpServletResponse response) 
	 throws ServletException, IOException {;
		VerifLogin projet =new VerifLogin();
	String te=request.getParameter("text");
	if(!"".equals(te)) projet.Inserer_Ann_Foy(te);
	request.getRequestDispatcher("depoannF.jsp").forward(request,response);
	}
	}
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

@WebServlet (name="arfs",urlPatterns= {"/recfoy"})
public class AddRecFoyServlet extends HttpServlet {
	private PCataloque metier;
	@Override
	public void init() throws ServletException {
	VerifLogin x=new VerifLogin();
	}
	@Override
	protected void doGet(HttpServletRequest request,
	 HttpServletResponse response) 
	 throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		VerifLogin projet =new VerifLogin();
	String ca=request.getParameter("categorie");
	String ur=request.getParameter("urgent");
	String te=request.getParameter("text");
	projet.Inserer_Rec(ca,ur,te);
	request.getRequestDispatcher("studentRecFoy.html").forward(request,response);
	}
	}


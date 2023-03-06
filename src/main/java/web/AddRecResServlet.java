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

@WebServlet (name="ares",urlPatterns= {"/recres"})
public class AddRecResServlet extends HttpServlet {
	private PCataloque metier;
	@Override
	public void init() throws ServletException {
	VerifLogin x=new VerifLogin();
	}
	@Override
	protected void doGet(HttpServletRequest request,
	 HttpServletResponse response) 
	 throws ServletException, IOException {
		VerifLogin projet =new VerifLogin();
	String te=request.getParameter("text");
	projet.Inserer_Rec_Res(te);
	request.getRequestDispatcher("studentRecRes.html").forward(request,response);
	} //ecRes
	}
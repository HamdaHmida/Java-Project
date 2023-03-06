package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projet.PCataloque;
import projet.VerifLogin;

@WebServlet (name="evlmce2",urlPatterns= {"/EvalMenu3"})
public class EvalMenu3 extends HttpServlet {
	private PCataloque metier;
	@Override
	public void init() throws ServletException {
	VerifLogin x=new VerifLogin();
	}

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		VerifLogin projet =new VerifLogin();
		int rep_mer_pdej=Integer.parseInt(request.getParameter("pdej_mer"));
		int rep_mer_dej=Integer.parseInt(request.getParameter("dej_mer"));
		int rep_mer_din=Integer.parseInt(request.getParameter("din_mer"));

		projet.Vote_menu_pdej("mer", rep_mer_pdej);
		projet.Vote_menu_dej("mer", rep_mer_dej);
		projet.Vote_menu_din("mer", rep_mer_din);
		
		request.getRequestDispatcher("eval_menu.jsp").forward(request,response);
		
	}
}
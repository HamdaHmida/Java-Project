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

@WebServlet (name="evlme1",urlPatterns= {"/EvalMenu2"})
public class EvalMenu2 extends HttpServlet {
	private PCataloque metier;
	@Override
	public void init() throws ServletException {
	VerifLogin x=new VerifLogin();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		VerifLogin projet =new VerifLogin();
		int rep_mar_pdej=Integer.valueOf(request.getParameter("pdej_mar"));
		int rep_mar_dej=Integer.valueOf(request.getParameter("dej_mar"));
		int rep_mar_din=Integer.valueOf(request.getParameter("din_mar"));
		

		projet.Vote_menu_pdej("mar", rep_mar_pdej);
		projet.Vote_menu_dej("mar", rep_mar_dej);
		projet.Vote_menu_din("mar", rep_mar_din);
		
		request.getRequestDispatcher("eval_menu.jsp").forward(request,response);
		
	}
}
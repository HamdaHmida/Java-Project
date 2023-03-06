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

@WebServlet (name="evlme4",urlPatterns= {"/EvalMenu5"})
public class EvalMenu5 extends HttpServlet {
	private PCataloque metier;
	@Override
	public void init() throws ServletException {
	VerifLogin x=new VerifLogin();
	}

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		VerifLogin projet =new VerifLogin();
		int rep_ven_pdej=Integer.valueOf(request.getParameter("pdej_ven"));
		int rep_ven_dej=Integer.valueOf(request.getParameter("dej_ven"));
		int rep_ven_din=Integer.valueOf(request.getParameter("din_ven"));
		

		projet.Vote_menu_pdej("ven", rep_ven_pdej);
		projet.Vote_menu_dej("ven", rep_ven_dej);
		projet.Vote_menu_din("ven", rep_ven_din);
		
		
		request.getRequestDispatcher("eval_menu.jsp").forward(request,response);
		
	}
}
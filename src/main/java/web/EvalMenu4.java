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

@WebServlet (name="evlme3",urlPatterns= {"/EvalMenu4"})
public class EvalMenu4 extends HttpServlet {
	private PCataloque metier;
	@Override
	public void init() throws ServletException {
	VerifLogin x=new VerifLogin();
	}

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		VerifLogin projet =new VerifLogin();
		int rep_jeu_pdej=Integer.valueOf(request.getParameter("pdej_jeu"));
		int rep_jeu_dej=Integer.valueOf(request.getParameter("dej_jeu"));
		int rep_jeu_din=Integer.valueOf(request.getParameter("din_jeu"));
		
		
		projet.Vote_menu_pdej("jeu", rep_jeu_pdej);
		projet.Vote_menu_dej("jeu", rep_jeu_dej);
		projet.Vote_menu_din("jeu", rep_jeu_din);
		
		request.getRequestDispatcher("eval_menu.jsp").forward(request,response);
		
	}
}
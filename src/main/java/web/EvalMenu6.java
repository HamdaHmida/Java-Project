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

@WebServlet (name="evlme5",urlPatterns= {"/EvalMenu6"})
public class EvalMenu6 extends HttpServlet {
	private PCataloque metier;
	@Override
	public void init() throws ServletException {
	VerifLogin x=new VerifLogin();
	}

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		VerifLogin projet =new VerifLogin();

		int rep_sam_pdej=Integer.valueOf(request.getParameter("pdej_sam"));
		int rep_sam_dej=Integer.valueOf(request.getParameter("dej_sam"));
	

		projet.Vote_menu_pdej("sam", rep_sam_pdej);
		projet.Vote_menu_dej("sam", rep_sam_dej);
	
		request.getRequestDispatcher("eval_menu.jsp").forward(request,response);
		
	}
}
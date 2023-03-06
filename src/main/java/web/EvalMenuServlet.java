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

@WebServlet (name="evlme000",urlPatterns= {"/EvalMenu"})
public class EvalMenuServlet extends HttpServlet {
	private PCataloque metier;
	@Override
	public void init() throws ServletException {
	VerifLogin x=new VerifLogin();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VerifLogin projet =new VerifLogin();
		int rep_lun_pdej=Integer.valueOf(request.getParameter("pdej_lun"));
		int rep_lun_dej=Integer.valueOf(request.getParameter("dej_lun"));
		int rep_lun_din=Integer.valueOf(request.getParameter("din_lun"));
		
		projet.Vote_menu_pdej("lun", rep_lun_pdej);
		projet.Vote_menu_dej("lun", rep_lun_dej);
		projet.Vote_menu_din("lun", rep_lun_din);
		
		
		request.getRequestDispatcher("eval_menu.jsp").forward(request,response);
	
	
	}
}
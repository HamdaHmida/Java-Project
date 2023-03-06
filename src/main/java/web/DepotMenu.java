package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
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

@WebServlet (name="depm0",urlPatterns= {"/depotMenu"})
public class DepotMenu extends HttpServlet {
	private PCataloque metier;
	@Override
	public void init() throws ServletException {
	VerifLogin x=new VerifLogin();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VerifLogin projet =new VerifLogin();
		String w = request.getParameter("date");
		String d=request.getParameter("jour");
		int pdej1=Integer.valueOf(request.getParameter("pdej1"));
		int pdej2=Integer.valueOf(request.getParameter("pdej2"));
		int pdej3=Integer.valueOf(request.getParameter("pdej3"));
		int dej1=Integer.valueOf(request.getParameter("dej1"));
		int dej2=Integer.valueOf(request.getParameter("dej2"));
		int dej3=Integer.valueOf(request.getParameter("dej3"));
		int din1=Integer.valueOf(request.getParameter("din1"));
		int din2=Integer.valueOf(request.getParameter("din2"));
		int din3=Integer.valueOf(request.getParameter("din3"));
		projet.Inserer_menu_jour(w,d,pdej1,pdej2,pdej3,dej1,dej2,dej3,din1,din2,din3);
		request.getRequestDispatcher("depot_menu.jsp").forward(request,response);

	}}
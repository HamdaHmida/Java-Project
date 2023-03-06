package web;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import projet.PCataloque;
import projet.Rec;
import projet.VerifLogin;
@WebServlet (name="cs",urlPatterns= {"/login"})
public class ControleurServlet extends HttpServlet {
private PCataloque projet;
@Override
public void init() throws ServletException {
VerifLogin x=new VerifLogin();
}
@Override
protected void doPost(HttpServletRequest request,
 HttpServletResponse response) 
 throws ServletException, IOException {
	PrintWriter pw=response.getWriter();
	response.setContentType("text/html");

String mu=request.getParameter("userName");
String mp=request.getParameter("userPassword");
VerifLogin projet =new VerifLogin();
request.setAttribute("msg", "");
int aller=0;
aller=projet.ConLogin(mu,mp);
if (aller==1) 
	request.getRequestDispatcher("student.html").forward(request,response);
else if(aller==2)
		request.getRequestDispatcher("adminRR.html").forward(request,response);
else if (aller==3) 
	request.getRequestDispatcher("adminFF.html").forward(request,response);
    else { request.setAttribute("msg", "Identifiant et mot de passe sont incorrects");
    	request.getRequestDispatcher("loginS.jsp").forward(request,response);
}
}
}



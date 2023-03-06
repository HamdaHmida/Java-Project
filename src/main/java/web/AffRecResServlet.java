package web;
//AffRecFoyServlet
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import projet.PCataloque;
import projet.VerifLogin;
import projet.Rec;
@WebServlet (name="css",urlPatterns= {"/affrecres"})
public class AffRecResServlet extends HttpServlet {
private PCataloque projet;
@Override
public void init() throws ServletException {
	projet=new VerifLogin();
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

VerifLogin projet =new VerifLogin();
int id=Integer.valueOf(request.getParameter("id"));
VerifLogin.SupRecRes(id);
request.getRequestDispatcher("rec_res.jsp").forward(request,response);

}
@Override
protected void doPost(HttpServletRequest request,
 HttpServletResponse response) 
 throws ServletException, IOException {
	RecModele mod = new RecModele();
	mod.setCA("");
	List<Rec> res = projet.getRecRes();
	mod.setReclamations(res);
	request.setAttribute("modele", mod);
	request.getRequestDispatcher("rec_res.jsp").forward(request,response);
	}
	}
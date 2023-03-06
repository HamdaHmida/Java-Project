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
@WebServlet (name="cso",urlPatterns= {"/affrecfoy"})
public class AffRecFoyServlet extends HttpServlet {
private PCataloque projet;
@Override
public void init() throws ServletException {
	projet=new VerifLogin();
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

VerifLogin projet =new VerifLogin();
int id=Integer.valueOf(request.getParameter("id"));
projet.RecExec(id);
request.getRequestDispatcher("rec_foy.jsp").forward(request,response);

}
@Override
protected void doPost(HttpServletRequest request,
 HttpServletResponse response) 
 throws ServletException, IOException {
	String ca=request.getParameter("ca");
	String ur=request.getParameter("ur");
	RecModele mod = new RecModele();
	mod.setCA(ca);
	List<Rec> foy = projet.getRecParCategorie(ca,ur);
	mod.setReclamations(foy);
	request.setAttribute("modele", mod);
	request.getRequestDispatcher("rec_foy.jsp").forward(request,response);
	}
	}
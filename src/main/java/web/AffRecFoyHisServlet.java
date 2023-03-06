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
@WebServlet (name="cs",urlPatterns= {"/affrecfoyhis"})
public class AffRecFoyHisServlet extends HttpServlet {
private PCataloque projet;
@Override
public void init() throws ServletException {
	projet=new VerifLogin();
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

VerifLogin projet =new VerifLogin();
int id=Integer.valueOf(request.getParameter("id"));
projet.RecSupHis(id);
request.getRequestDispatcher("his_rec_foy.jsp").forward(request,response);

}
@Override
protected void doPost(HttpServletRequest request,
 HttpServletResponse response) 
 throws ServletException, IOException {
	String ca=request.getParameter("ca");
	String ur=request.getParameter("ur");
	RecModele mod = new RecModele();
	mod.setCA(ca);
	List<Rec> foy = projet.getRecHisParCategorie(ca,ur);
	mod.setReclamations(foy);
	request.setAttribute("modele", mod);
	request.getRequestDispatcher("his_rec_foy.jsp").forward(request,response);
	}
	}
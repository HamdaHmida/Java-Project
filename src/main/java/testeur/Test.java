package testeur;

import projet.VerifLogin;
import projet.Plat_Dispo;
import projet.Rec;
import java.util.List;
import web.PlatDispo;
public class Test {
	public static void main(String[] args) {
		 VerifLogin projet= new VerifLogin();
			List<Rec> prods = projet.getRecHisParCategorie("tout","tout");
			System.out.println("baw");
			for (Rec p : prods)
			System.out.println(p.getUrg());
			System.out.println("baw");
			projet.Vote_menu_pdej("mer",5);
			}
		
		// remember !!!
	
}

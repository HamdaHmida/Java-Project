package projet;
 
import java.sql.Date;
import java.util.List;

public interface PCataloque {
	public int ConLogin(String user,String password);
	public void Inserer_Rec(String type,String ur,String desc);
	public void Inserer_Rec_Res(String desc);
	public List<Rec> getRecParCategorie(String cat,String urg);
	public List<Rec> getRecHisParCategorie(String cat,String urg);
	public List<Rec> getRecRes();
	public void RecLue(int id_REC_FOYER);
	public void Vote_plat_dispo(String rep, int id_plat);
	public List<Plat_Dispo> getPlatDispo();
	public void Ajout_plat(String type,String cont);
	public void Inserer_Ann_Res(String te);
	public void Inserer_Ann_Foy(String te);
	public void New_sondage(String qst);
	public void Vote_Sondage(String rep, int id_vote);
	public void Inserer_menu_jour(String w,String j,int p1,int p2,int p3,int dj1,int dj2, int dj3,int dn1,int dn2, int dn3);
	public void Vote_menu_pdej(String jour,int vote);
	public void Vote_menu_dej(String jour,int vote);
	public void Vote_menu_din(String jour,int vote);
	public void AjoutEt(int id,String room,String nom,String prenom,String mail,int num);
	public void suppEt(int id);
}

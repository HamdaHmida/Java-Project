package web;
import java.util.ArrayList;
import java.util.List;

import projet.Plat_Dispo;
import projet.VerifLogin;
public class PlatDispo {
	List<Plat_Dispo> plats = new ArrayList<>();
	
	public List<Plat_Dispo> getPlats() {
		return plats;
	}
	public void setPlats(List<Plat_Dispo> plats) {
		this.plats = plats;
	}
	
	
}

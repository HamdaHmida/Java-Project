package projet;

public class Plat_Dispo {
	private int plat_id;
	private String contenu;
	private int vote_oui;
	private int nb_vote;
	private String type;

	public String getType() {
	return type;
	}
	public void setType(String type) {
	this.type = type;
	}
	public int getPlat_id() {
		return plat_id;
	}
	public void setPlat_id(int plat_id) {
		this.plat_id = plat_id;
	}
	public String getContenu() {
		return contenu;
	}
	public void setContenu(String contenu) {
		this.contenu = contenu;
	}
	public int getVote_oui() {
		return vote_oui;
	}
	public void setVote_oui(int vote_oui) {
		this.vote_oui = vote_oui;
	}
	public int getNb_vote() {
		return nb_vote;
	}
	public void setNb_vote(int nb_vote) {
		this.nb_vote = nb_vote;
	}
	
}

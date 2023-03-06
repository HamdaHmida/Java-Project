package projet;

public class ET_User {
	private int id;
	private String user;
	private String password;
	private String nom;
	private String prenom;
	private String mail;
	private String num_room;
	private String num_tel;
	public int getID() {
		return id;
	}
	public String getUser() {
		return user;
	}
	public String getPassword() {
		return password;
	}
	public String getNom() {
		return nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public String getMail() {
		return mail;
	}
	public String getNum_room() {
		return num_room;
	}
	public String getNum_tel() {
		return num_tel;
	}
	public void setID(int id) {
		this.id=id;
	}
	public void setUser(String user) {
		this.user=user;
	}
	public void setPassword(String password) {
		this.password=password;
	}
	public void setNom(String nom) {
		this.nom=nom;
	}
	public void setPrenom(String prenom) {
		this.prenom=prenom;
	}
	public void setMail(String mail) {
		this.mail=mail;
	}
	public void setNum_room(String num_room) {
		this.num_room=num_room;
	}
	public void setNum_tel(String num_tel) {
		this.num_tel=num_tel;
	}
}

package projet;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Rec implements Serializable{
	
private int ID_REC_FOYER ;
private int ID_ETUDIANT;
private String TYPE;
private int ETAT;
private String desc;
private String ur ;
private String date;
private String type ;
private String chambre ;

public Rec() {
super();
}
public String getdate() {
	return date;
}
public String getdesc() {
	return desc;
}
public String getUrg() {
	return ur ;
}
public String getchambre() {
	return chambre;
}
public String getTYPE() {
	return TYPE;
}
public String gettype() {
	return type;
}
public int getETAT() {
	return ETAT;
}
public int getID_ETUDIANT() {
	return ID_ETUDIANT;
}
public int getID_REC_FOYER() {
	return ID_REC_FOYER;
}
public void setID_REC_FOYER(int ID_REC_FOYER) {
this.ID_REC_FOYER = ID_REC_FOYER;
}
public void setDate(String date) {
this.date = date;
}
public void setDesc(String desc) {
this.desc = desc;
}
public void setUrg(String ur) {
this.ur = ur;
}
public void setID_ETU_Chambre(int ID_ETUDIANT) {
this.ID_ETUDIANT = ID_ETUDIANT;
try {
	Connection conn=SingletonConnection.getConnection();
	PreparedStatement ps= conn.prepareStatement("select NUM_ROOM from etudiant where ID_ETUDIANT=?;");
	ps.setInt(1,ID_ETUDIANT);
	ResultSet rs = ps.executeQuery();
	if(rs.next()) 
	{
		this.chambre=rs.getString("NUM_ROOM");
	}
	}catch (SQLException e) {
	e.printStackTrace();
	}
}
public void setETAT(int ETAT) {
this.ETAT = ETAT;
}
public void setTt(String TYPE) {
this.TYPE = TYPE;
if (TYPE.equals("electricity")) this.type="Probleme d'electricite ";
else if (TYPE.equals("eau")) this.type="Probleme d'eau ";
else if (TYPE.equals("chaffage")) this.type="Probleme de rechauffement ";
else if (TYPE.equals("equipement")) this.type="Probleme d'equipement ";
else if (TYPE.equals("bain")) this.type="Probleme dans les salles de bains ";
else if (TYPE.equals("wc")) this.type="Probleme WC ";
else if (TYPE.equals("changement")) this.type="Changement de chambre ";
else this.type="autres" ;
}

}

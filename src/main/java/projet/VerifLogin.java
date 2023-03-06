package projet;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class VerifLogin implements PCataloque {
	public static ET_User us=new ET_User();
	public static ET_User US() {return us;}
	public int ConLogin(String user,String password) {
	 Connection conn=SingletonConnection.getConnection();
	 try {
		PreparedStatement ps= conn.prepareStatement("select * from etudiant where USER=? and PASSWORD=?");
		ps.setString(1,user);
		ps.setString(2,password);
		ResultSet rs = ps.executeQuery();
		if(rs.next())
		{
			us.setID(rs.getInt("ID_ETUDIANT"));
			us.setUser(rs.getString("user"));
			us.setPassword(rs.getString("password"));
			us.setNom(rs.getString("nom"));
			us.setPrenom(rs.getString("prenom"));
			us.setMail(rs.getString("mail"));
			us.setNum_tel(rs.getString("num_tel"));
			us.setNum_room(rs.getString("NUM_ROOM"));
			return 1;
		}
	else
	{
		try {
		PreparedStatement psr= conn.prepareStatement("select * from ad_resto where USER=? and PASSWORD=?;");
		psr.setString(1,user);
		psr.setString(2,password);
		ResultSet rsr = psr.executeQuery();
		if(rsr.next()) 
		{
			
			us.setID(rsr.getInt("ID_AD_RESTO"));
			us.setUser(rsr.getString("user"));
			us.setPassword(rsr.getString("password"));
			us.setNom(rsr.getString("nom"));
			us.setPrenom(rsr.getString("prenom"));
			us.setMail(rsr.getString("mail"));
			us.setNum_tel(rsr.getString("num_tel"));
			return 2;
		}
			else
			{
				try {
					PreparedStatement psf= conn.prepareStatement("select * from ad_foyer where USER=? and PASSWORD=?;");
					psf.setString(1,user);
					psf.setString(2,password);
					ResultSet rsf = psf.executeQuery();
					if(rsf.next()) 
					{
						us.setID(rsf.getInt("ID_AD_FOYER"));
						us.setUser(rsf.getString("user"));
						us.setPassword(rsf.getString("password"));
						us.setNom(rsf.getString("nom"));
						us.setPrenom(rsf.getString("prenom"));
						us.setMail(rsf.getString("mail"));
						us.setNum_tel(rsf.getString("num_tel"));
						return 3;
					}
					}catch (SQLException e) {
					e.printStackTrace();
					}
			}
			} catch (SQLException e) {
			e.printStackTrace();
			}
	}
	} catch (SQLException e) {
	e.printStackTrace();
	}
	 return 0;
	}
/*   0 : fausse mdp
 *   1 : etudiant
 *   2 : resto
 *   3 : foyer
 */
	public void Inserer_Rec(String type,String ur,String desc) {
		Connection conn=SingletonConnection.getConnection();
		try {
			PreparedStatement psf= conn.prepareStatement("insert into rec_foyer (ID_ETUDIANT,TYPE,URG,DESCRIPTION) values(?,?,?,?);");
			psf.setInt(1,us.getID());
			psf.setString(2,type);
			psf.setString(3,ur);
			psf.setString(4,desc);
			psf.executeUpdate();
			}catch (SQLException e) {
			e.printStackTrace();
			}
		try {
			PreparedStatement psf= conn.prepareStatement("insert into historique_rec_foy-etu (ID_ETUDIANT,ETAT,TYPE,URG,DESCRIPTION) values(?,'Envoyée',?,?,?);");
			psf.setInt(1,us.getID());
			psf.setString(2,type);
			psf.setString(3,ur);
			psf.setString(4,desc);
			psf.executeUpdate();
			}catch (SQLException e) {
			e.printStackTrace();
			}
	}
	public void Inserer_Rec_Res(String desc) {
		Connection conn=SingletonConnection.getConnection();
		try {
			PreparedStatement psf= conn.prepareStatement("insert into rec_resto (ID_ETUDIANT,DESCRIPTION) values(?,?);");
			psf.setInt(1,us.getID());
			psf.setString(2,desc);
			psf.executeUpdate();
			}catch (SQLException e) {
			e.printStackTrace();
			}
	}
	
	public List<Rec> getRecParCategorie(String ca,String ur) {
		 List<Rec> foy= new ArrayList<Rec>();
		 Connection conn=SingletonConnection.getConnection();
		 try {
		PreparedStatement ps;
		if (ca.equals("tout") && ur.equals("tout")) ps= conn.prepareStatement("select * from rec_foyer ORDER BY DATE_SAISIE_REC DESC;");
		else if (ca.equals("tout")){ 
			 ps=conn.prepareStatement("select * from rec_foyer WHERE urg=? ORDER BY DATE_SAISIE_REC DESC;");
		ps.setString(1,ur);
		}else if (ur.equals("tout")){ 
			 ps=conn.prepareStatement("select * from rec_foyer WHERE type=? ORDER BY DATE_SAISIE_REC DESC;");
		ps.setString(1,ca);
		}
		else { 
			 ps=conn.prepareStatement("select * from rec_foyer WHERE type=? and urg=? ORDER BY DATE_SAISIE_REC DESC;");
		ps.setString(1,ca);
		ps.setString(2,ur);
		}
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Rec f = new Rec();
			f.setID_REC_FOYER(rs.getInt("ID_REC_FOYER"));
			f.setID_ETU_Chambre(rs.getInt("ID_ETUDIANT"));	
			f.setTt(rs.getString("TYPE"));
			f.setUrg(rs.getString("URG"));
			f.setDesc(rs.getString("DESCRIPTION"));
			f.setDate(rs.getString("DATE_SAISIE_REC"));
			foy.add(f);
		}
		} catch (SQLException e) {
		e.printStackTrace();
		}
		return foy;
		}
	public List<Rec> getRecHisParCategorie(String ca,String ur) {
		 List<Rec> foy= new ArrayList<Rec>();
		 Connection conn=SingletonConnection.getConnection();
		 try {
		PreparedStatement ps;
		if (ca.equals("tout") && ur.equals("tout")) ps= conn.prepareStatement("select * from historique_rec_foy ORDER BY DATE_SAISIE_REC DESC;");
		else if (ca.equals("tout")){ 
			 ps=conn.prepareStatement("select * from historique_rec_foy WHERE urg=? ORDER BY DATE_SAISIE_REC DESC;");
		ps.setString(1,ur);
		}else if (ur.equals("tout")){ 
			 ps=conn.prepareStatement("select * from historique_rec_foy WHERE type=? ORDER BY DATE_SAISIE_REC DESC;");
		ps.setString(1,ca);
		}
		else { 
			 ps=conn.prepareStatement("select * from historique_rec_foy WHERE type=? and urg=? ORDER BY DATE_SAISIE_REC DESC;");
		ps.setString(1,ca);
		ps.setString(2,ur);
		}
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Rec f = new Rec();
			f.setID_REC_FOYER(rs.getInt("ID_REC_FOYER"));
			f.setID_ETU_Chambre(rs.getInt("ID_ETUDIANT"));	
			f.setTt(rs.getString("TYPE"));
			f.setUrg(rs.getString("URG"));
			f.setDesc(rs.getString("DESCRIPTION"));
			f.setDate(rs.getString("DATE_SAISIE_REC"));
			foy.add(f);
		}
		} catch (SQLException e) {
		e.printStackTrace();
		}
		return foy;
		}
	public List<Rec> getRecRes() {
		 List<Rec> res= new ArrayList<Rec>();
		 Connection conn=SingletonConnection.getConnection();
		 try {
		PreparedStatement ps= conn.prepareStatement("select * from rec_resto ORDER BY DATE_SAISIE_REC DESC;");
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Rec r = new Rec();
			r.setDesc(rs.getString("DESCRIPTION"));
			r.setDate(rs.getString("DATE_SAISIE_REC"));
			res.add(r);
		}
		} catch (SQLException e) {
		e.printStackTrace();
		}
		 return res;
	}
	public void RecLue(int ID_REC_FOYER) {
		Connection conn=SingletonConnection.getConnection();
		try {
		PreparedStatement ps= conn.prepareStatement("UPDATE `rec_foyer` SET `ETAT` = b'1' WHERE `ID_REC_FOYER` = ?;");
		ps.setInt(1,ID_REC_FOYER);
		ps.executeUpdate();
		} catch (SQLException e) {
		e.printStackTrace();
		}
	}
	
	public static void RecExec(int ID_REC_FOYER) {
		Connection conn=SingletonConnection.getConnection();
		try {
		PreparedStatement ps= conn.prepareStatement("select * from rec_foyer WHERE `ID_REC_FOYER` = ?;");
		ps.setInt(1,ID_REC_FOYER);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			int a=rs.getInt("ID_ETUDIANT");
			String b1=rs.getString("TYPE");
			String b2=rs.getString("URG");
			String c=rs.getString("DESCRIPTION");
			String d=rs.getString("DATE_SAISIE_REC");
			try {
				PreparedStatement psh= conn.prepareStatement("insert into historique_rec_foy values(?,?,?,?,?,?);");
				psh.setInt(1,ID_REC_FOYER);
				psh.setInt(2,a);
				psh.setString(3,b1);
				psh.setString(4,b2);
				psh.setString(5,c);
				psh.setString(6,d);
				psh.executeUpdate();
				} catch (SQLException e) {
				e.printStackTrace();
				}
		}
		} catch (SQLException e) {
		e.printStackTrace();
		}
		try {
			PreparedStatement pss= conn.prepareStatement("DELETE from rec_foyer WHERE `ID_REC_FOYER` = ?;");
			pss.setInt(1,ID_REC_FOYER);
			pss.executeUpdate();
			} catch (SQLException e) {
			e.printStackTrace();
			}
	}
	public static void RecSupHis(int ID_REC_FOYER) {
		Connection conn=SingletonConnection.getConnection();
		try {
			PreparedStatement pss= conn.prepareStatement("DELETE from historique_rec_foy WHERE `ID_REC_FOYER` = ?;");
			pss.setInt(1,ID_REC_FOYER);
			pss.executeUpdate();
			} catch (SQLException e) {
			e.printStackTrace();
			}
	}
	public static void SupRecRes(int ID_REC_RESTO) {
		Connection conn=SingletonConnection.getConnection();
		try {
			PreparedStatement pss= conn.prepareStatement("DELETE from rec_resto WHERE `ID_REC_RESTO` = ?;");
			pss.setInt(1,ID_REC_RESTO);
			pss.executeUpdate();
			} catch (SQLException e) {
			e.printStackTrace();
			}
	}
	public void New_sondage(String qst) {
		Connection conn=SingletonConnection.getConnection();
		try {
		PreparedStatement psf= conn.prepareStatement("insert into sondage_resto (qst,nb_oui,nb_vote) values(?,0,0);");
		psf.setString(1,qst);
		psf.executeUpdate();
		}catch (SQLException e) {
		e.printStackTrace();
		}
		}
	 public void Vote_plat_dispo(String rep, int id_plat) {
		 //us.getID()  tfkr trj3ha fi blaset el idt   3 marat w tetfasa5
		 Connection conn=SingletonConnection.getConnection();
		 try {
		 PreparedStatement psf= conn.prepareStatement("select * from vote_plat_dispo WHERE id_plat = ? AND id_ET=?;");
		 psf.setInt(1, id_plat);
		 psf.setInt(2,us.getID() );
		 ResultSet rs = psf.executeQuery();
		 if (!rs.next()) {
		 try {
		 PreparedStatement ps= conn.prepareStatement("insert into vote_plat_dispo (id_plat,id_ET,vote) values(?,?,?);");
		 ps.setInt(1, id_plat);
		 ps.setInt(2, us.getID());
		 ps.setString(3, rep);
		 ps.executeUpdate();
		 try {
			 if (rep.equals("oui")) {
			 PreparedStatement ps2= conn.prepareStatement("UPDATE Plat_Dispo SET vote_oui = vote_oui + 1 where plat_id=?;");
			 ps2.setInt(1, id_plat);
			 ps2.executeUpdate();
			 PreparedStatement ps3= conn.prepareStatement("UPDATE Plat_Dispo SET nb_vote = nb_vote + 1 where plat_id=? ;");
			 ps3.setInt(1, id_plat);
			 ps3.executeUpdate();
			 }
			 if (rep.equals("non")) {
			 PreparedStatement ps2= conn.prepareStatement("UPDATE Plat_Dispo SET nb_vote = nb_vote + 1 where plat_id=?;");
			 ps2.setInt(1, id_plat);
			 ps2.executeUpdate();
			 }
		 }
		 catch (SQLException e) {
		 e.printStackTrace();
		 }
		 }catch (SQLException e) {
			 e.printStackTrace();
		 }
		 }else {
		 try {
		 if (rep.equals("oui")) {
		 if (rs.getString("vote").equals("non")) {
		 PreparedStatement ps3= conn.prepareStatement("UPDATE Plat_Dispo SET vote_oui = vote_oui + 1 where plat_id=? ;");
		 ps3.setInt(1, id_plat);
		 ps3.executeUpdate();
		 }
		 PreparedStatement ps= conn.prepareStatement("UPDATE vote_plat_dispo SET vote = 'oui' where id_ET=? AND id_plat = ? ;");
		 ps.setInt(1, us.getID());
		 ps.setInt(2,id_plat);
		 ps.executeUpdate();
		 }
		 if (rep.equals("non")) {
		 if (rs.getString("vote").equals("oui")) {
		 PreparedStatement ps3= conn.prepareStatement("UPDATE Plat_Dispo SET vote_oui = vote_oui - 1  where plat_id=?;");
		 ps3.setInt(1, id_plat);
		 ps3.executeUpdate();
		 }
		 PreparedStatement ps= conn.prepareStatement("UPDATE vote_plat_dispo SET vote = 'non' where id_ET=? AND id_plat = ? ;");
		 ps.setInt(1, us.getID());
		 ps.setInt(2,id_plat );
		 ps.executeUpdate();
		 }
		 }
		 catch (SQLException e) {
		 e.printStackTrace();
		 }
		 }
		 }
		 catch (SQLException e) {
		 e.printStackTrace();
		 }
		  


		 }


		public List<Plat_Dispo> getPlatDispo() {
		List<Plat_Dispo> res= new ArrayList<Plat_Dispo>();
		Connection conn=SingletonConnection.getConnection();
		try {
		PreparedStatement ps= conn.prepareStatement("select * from Plat_Dispo;");
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
		Plat_Dispo p = new Plat_Dispo();
		p.setPlat_id(rs.getInt("plat_id"));
		p.setContenu(rs.getString("contenu"));
		p.setNb_vote(rs.getInt("nb_vote"));
		p.setVote_oui(rs.getInt("vote_oui"));
		res.add(p);
		}
		} catch (SQLException e) {
		e.printStackTrace();
		}
		return res;
		}
		public void Ajout_plat(String type,String cont) {
			Connection conn=SingletonConnection.getConnection();
			try {
				PreparedStatement psf= conn.prepareStatement("insert into Plat_Dispo (type,contenu,vote_oui,nb_vote) values(?,?,0,0);");
				psf.setString(1,type);
				psf.setString(2,cont);
				psf.executeUpdate();
				}catch (SQLException e) {
				e.printStackTrace();
				}
		}
		
		//Inserer_Ann_Foy(String te)
		public void Inserer_Ann_Foy(String te) {
			Connection conn=SingletonConnection.getConnection();
			try {
				PreparedStatement psf= conn.prepareStatement("insert into ann_foy (DESCRIPTION) values(?);");
				psf.setString(1,te);
				psf.executeUpdate();
				}catch (SQLException e) {
				e.printStackTrace();
				}
		}
		public void Inserer_Ann_Res(String te) {
			Connection conn=SingletonConnection.getConnection();
			try {
				PreparedStatement psf= conn.prepareStatement("insert into ann_res (DESCRIPTION) values(?);");
				psf.setString(1,te);
				psf.executeUpdate();
				}catch (SQLException e) {
				e.printStackTrace();
				}
		} 
		public void Inserer_menu_jour(String w,String j,int p1,int p2,int p3,int dj1,int dj2, int dj3,int dn1,int dn2, int dn3) {
			Connection conn=SingletonConnection.getConnection();
			try {
				PreparedStatement psf= conn.prepareStatement("insert into menu_jour (jour,date,pdej1,pdej2,pdej3,dej1,dej2,dej3,din1,din2,din3) values(?,?,?,?,?,?,?,?,?,?,?);");
				psf.setString(1,j);
				psf.setString(2,w);
				psf.setInt(3,p1);
				psf.setInt(4,p2);
				psf.setInt(5,p3);
				psf.setInt(6,dj1);
				psf.setInt(7,dj2);
				psf.setInt(8,dj3);
				psf.setInt(9,dn1);
				psf.setInt(10,dn2);
				psf.setInt(11,dn3);
				psf.executeUpdate();
				
				try {
					PreparedStatement pso= conn.prepareStatement("select * from menu_semaine where date=?;");
					pso.setString(1,w);
					ResultSet rso = pso.executeQuery();
					if (!rso.next()) {
						PreparedStatement ps2= conn.prepareStatement("insert into menu_semaine (date,lun,mar,mer,jeu,ven,sam,dim) values(?,0,0,0,0,0,0,0);");
						ps2.setString(1,w);
						ps2.executeUpdate();
					}
					}catch (SQLException e) {
					e.printStackTrace();
					}
				PreparedStatement ps=conn.prepareStatement("select ID_MJ from menu_jour WHERE jour=? AND date=?;");
				ps.setString(1,j);
				ps.setString(2,w);
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					int mj=rs.getInt("ID_MJ");
					
					if (j.equals("lundi")) {
						PreparedStatement psd=conn.prepareStatement("UPDATE menu_semaine SET lun=? where date=?;");
						psd.setInt(1,mj);
						psd.setString(2,w);
						psd.executeUpdate();
					}
					if (j.equals("mardi")) {
						PreparedStatement psd=conn.prepareStatement("UPDATE menu_semaine SET mar =? where date=?;");
						psd.setInt(1,mj);
						psd.setString(2,w);
						psd.executeUpdate();
					}
					if (j.equals("mercredi")) {
						PreparedStatement psd=conn.prepareStatement("UPDATE menu_semaine SET mer =? where date=?;");
						psd.setInt(1,mj);
						psd.setString(2,w);
						psd.executeUpdate();
					}
					if (j.equals("jeudi")) {
						PreparedStatement psd=conn.prepareStatement("UPDATE menu_semaine SET jeu =? where date=?;");
						psd.setInt(1,mj);
						psd.setString(2,w);
						psd.executeUpdate();
					}
					if (j.equals("vendredi")) {
						PreparedStatement psd=conn.prepareStatement("UPDATE menu_semaine SET ven =? where date=?;");
						psd.setInt(1,mj);
						psd.setString(2,w);
						psd.executeUpdate();
					}
					if (j.equals("samedi")) {
						PreparedStatement psd=conn.prepareStatement("UPDATE menu_semaine SET sam =? where date=?;");
						psd.setInt(1,mj);
						psd.setString(2,w);
						psd.executeUpdate();
					}
					if (j.equals("dimanche")) {
						PreparedStatement psd=conn.prepareStatement("UPDATE menu_semaine SET dim =? where date=?;");
						psd.setInt(1,mj);
						psd.setString(2,w);
						psd.executeUpdate();
					}
				}
				}catch (SQLException e) {
				e.printStackTrace();
				}
			}
			
			
		public int Up_User_Name(String nu,String au,String mp) {
			Connection conn=SingletonConnection.getConnection();
			int id= us.getID();
			int idd=id/1000;
			String u,p;
			if(idd==8) {
				try {
				PreparedStatement ps= conn.prepareStatement("select USER,PASSWORD from ad_resto where ID_AD_RESTO=?;");
				ps.setInt(1,id);
				ResultSet rs = ps.executeQuery();
				rs.next();
				u=rs.getString("USER");
				p=rs.getString("PASSWORD");
				if(!u.equals(au)) {
					return 2;
				}
				if(!p.equals(mp)) {
					return 3;
				}
				if ( u.equals(au) && p.equals(mp) ) {
					try {
						PreparedStatement psd=conn.prepareStatement("UPDATE ad_resto SET USER=? where ID_AD_RESTO=?;");
						psd.setString(1,nu);
						psd.setInt(2,id);
						psd.executeUpdate();
						us.setUser(nu);
						return 0;
					}catch (SQLException e) {
						e.printStackTrace();
						return 1;
					}
				}
				}catch (SQLException e) {
				e.printStackTrace();
				}
			}
		else if(idd==9) {
			try {
				PreparedStatement ps= conn.prepareStatement("select USER,PASSWORD from ad_foyer where ID_AD_FOYER=?;");
				ps.setInt(1,id);
				ResultSet rs = ps.executeQuery();
				rs.next();
				u=rs.getString("USER");
				p=rs.getString("PASSWORD");
				if(!u.equals(au)) {
					return 2;
				}
				if(!p.equals(mp)) {
					return 3;
				}
				if ( u.equals(au) && p.equals(mp) ) {
					try {
						PreparedStatement psd=conn.prepareStatement("UPDATE ad_foyer SET USER=? where ID_AD_FOYER=?;");
						psd.setString(1,nu);
						psd.setInt(2,id);
						psd.executeUpdate();
						us.setUser(nu);
						return 0;
					}catch (SQLException e) {
						e.printStackTrace();
						return 1;
					}
				}
				}catch (SQLException e) {
				e.printStackTrace();
				}
		}
		else {
			try {
			PreparedStatement ps= conn.prepareStatement("select USER,PASSWORD from etudiant where ID_ETUDIANT=?;");
			ps.setInt(1,id);
			ResultSet rs = ps.executeQuery();
			rs.next();
			u=rs.getString("USER");
			p=rs.getString("PASSWORD");
			if(!u.equals(au)) {
				return 2;
			}
			if(!p.equals(mp)) {
				return 3;
			}
			if ( u.equals(au) && p.equals(mp) ) {
				try {
					PreparedStatement psd=conn.prepareStatement("UPDATE etudiant SET USER=? where ID_ETUDIANT=?;");
					psd.setString(1,nu);
					psd.setInt(2,id);
					psd.executeUpdate();
					us.setUser(nu);
					return 0;
				}catch (SQLException e) {
					e.printStackTrace();
					return 1;
				}
			}
			}catch (SQLException e) {
			e.printStackTrace();
			}
		}
	return 4;
	}
		public int Up_Password(String nmp1,String nmp2,String mp) {
			if(!nmp1.equals(nmp2)) return 1 ;
			else {Connection conn=SingletonConnection.getConnection();
			int id= us.getID();
			int idd=id/1000;
			String u,p;
			if(idd==8) {
				try {
				PreparedStatement ps= conn.prepareStatement("select USER,PASSWORD from ad_resto where ID_AD_RESTO=?;");
				ps.setInt(1,id);
				ResultSet rs = ps.executeQuery();
				rs.next();
				u=rs.getString("USER");
				p=rs.getString("PASSWORD");
				if ( p.equals(mp) ) {
					try {
						PreparedStatement psd=conn.prepareStatement("UPDATE ad_resto SET PASSWORD=? where ID_AD_RESTO=?;");
						psd.setString(1,nmp1);
						psd.setInt(2,id);
						psd.executeUpdate();
						us.setPassword(nmp1);
						return 0;
					}catch (SQLException e) {
						e.printStackTrace();
					}
				}else {
					return 2;
				}
				}catch (SQLException e) {
				e.printStackTrace();
				
				}
			}
		else if(idd==9) {
			try {
				PreparedStatement ps= conn.prepareStatement("select USER,PASSWORD from ad_foyer where ID_AD_FOYER=?;");
				ps.setInt(1,id);
				ResultSet rs = ps.executeQuery();
				rs.next();
				u=rs.getString("USER");
				p=rs.getString("PASSWORD");
				if (p.equals(mp) ) {
					try {
						PreparedStatement psd=conn.prepareStatement("UPDATE ad_foyer SET PASSWORD=? where ID_AD_FOYER=?;");
						psd.setString(1,nmp1);
						psd.setInt(2,id);
						psd.executeUpdate();
						us.setPassword(nmp1);
						return 0;
					}catch (SQLException e) {
						e.printStackTrace();
						
					}
				}else {
					return 2;
				}
				}catch (SQLException e) {
				e.printStackTrace();
				
				}
		}
		else {
			try {
			PreparedStatement ps= conn.prepareStatement("select USER,PASSWORD from etudiant where ID_ETUDIANT=?;");
			ps.setInt(1,id);
			ResultSet rs = ps.executeQuery();
			rs.next();
			u=rs.getString("USER");
			p=rs.getString("PASSWORD");
			if (p.equals(mp)) {
				try {
					PreparedStatement psd=conn.prepareStatement("UPDATE etudiant SET PASSWORD=? where ID_ETUDIANT=?;");
					psd.setString(1,nmp1);
					psd.setInt(2,id);
					psd.executeUpdate();
					us.setPassword(nmp1);
					return 0;
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}else {
				return 2;
			}
			}catch (SQLException e) {
			e.printStackTrace();
			}
		}
	return 3;
	}}	
	//Vote_Sondage
	public void Vote_Sondage(String rep, int id_vote) {
		 Connection conn=SingletonConnection.getConnection();
		 try {
		 PreparedStatement psf= conn.prepareStatement("select * from vote_sondage WHERE ID_VOTE = ? AND id_ET=?;");
		 psf.setInt(1, id_vote);
		 psf.setInt(2,us.getID() );
		 ResultSet rs = psf.executeQuery();
		 if (!rs.next()) {
		 try {
		 PreparedStatement ps= conn.prepareStatement("insert into vote_sondage (ID_VOTE,id_ET,vote) values(?,?,?);");
		 ps.setInt(1, id_vote);
		 ps.setInt(2, us.getID());
		 ps.setString(3, rep);
		 ps.executeUpdate();
		 try {
			 if (rep.equals("oui")) {
			 PreparedStatement ps2= conn.prepareStatement("UPDATE sondage_resto SET nb_oui = nb_oui + 1 where ID_SONDAGE_RESTO=?;");
			 ps2.setInt(1, id_vote);
			 ps2.executeUpdate();
			 PreparedStatement ps3= conn.prepareStatement("UPDATE sondage_resto SET nb_vote = nb_vote + 1 where ID_SONDAGE_RESTO=? ;");
			 ps3.setInt(1, id_vote);
			 ps3.executeUpdate();
			 }
			 if (rep.equals("non")) {
			 PreparedStatement ps2= conn.prepareStatement("UPDATE sondage_resto SET nb_vote = nb_vote + 1 where ID_SONDAGE_RESTO=?;");
			 ps2.setInt(1, id_vote);
			 ps2.executeUpdate();
			 }
		 }
		 catch (SQLException e) {
		 e.printStackTrace();
		 }
		 }catch (SQLException e) {
			 e.printStackTrace();
		 }
		 }else {
		 try {
		 if (rep.equals("oui")) {
		 if (rs.getString("vote").equals("non")) {
		 PreparedStatement ps3= conn.prepareStatement("UPDATE sondage_resto SET nb_oui = nb_oui + 1 where ID_SONDAGE_RESTO=? ;");
		 ps3.setInt(1, id_vote);
		 ps3.executeUpdate();
		 }
		 PreparedStatement ps= conn.prepareStatement("UPDATE vote_sondage SET vote = 'oui' where id_ET=? and ID_VOTE=?;");
		 ps.setInt(1, us.getID());
		 ps.setInt(2,id_vote );
		 ps.executeUpdate();
		 }
		 if (rep.equals("non")) {
		 if (rs.getString("vote").equals("oui")) {
		 PreparedStatement ps3= conn.prepareStatement("UPDATE sondage_resto SET nb_oui = nb_oui - 1  where ID_SONDAGE_RESTO=?;");
		 ps3.setInt(1, id_vote);
		 ps3.executeUpdate();
		 }
		 PreparedStatement ps= conn.prepareStatement("UPDATE vote_sondage SET vote = 'non' where id_ET=? and ID_VOTE=?;");
		 ps.setInt(1, us.getID());
		 ps.setInt(2,id_vote );
		 ps.executeUpdate();
		 }
		 }
		 catch (SQLException e) {
		 e.printStackTrace();
		 }
		 }
		 }
		 catch (SQLException e) {
		 e.printStackTrace();
		 }
		 }
public void Vote_menu_pdej(String jour,int vote) {
		Connection conn=SingletonConnection.getConnection();
		try {
			PreparedStatement psd= conn.prepareStatement("select * from menu_semaine ORDER BY ID_MS DESC;");
            ResultSet rs1 = psd.executeQuery();
			 rs1.next();
			 int w=rs1.getInt("ID_MS");
			 
			 PreparedStatement pss= conn.prepareStatement("select * from resultat_vote_menu WHERE id_semaine=? and jour=?;");
			 pss.setInt(1,w);      
			 pss.setString(2, jour);
	         ResultSet rss = pss.executeQuery();
			if(!rss.next()) {
				PreparedStatement ps2= conn.prepareStatement("insert into resultat_vote_menu (id_semaine,jour,sr1,nbv1,sr2,nbv2,sr3,nbv3) values(?,?,0,0,0,0,0,0);");
				ps2.setInt(1,w);
				ps2.setString(2, jour);
				ps2.executeUpdate();
			}
				  
			PreparedStatement psf= conn.prepareStatement("select * from vote_menu WHERE id_semaine = ? AND id_etudiant	=? and jour=? and type='petit dejeuner';");
			psf.setInt(1,w);
			psf.setInt(2, us.getID());
			psf.setString(3,jour);
			ResultSet rs = psf.executeQuery();
			
			if (!rs.next()) /*--first time donc insert--*/{
				
				PreparedStatement ps1= conn.prepareStatement("insert into vote_menu (id_semaine,id_etudiant,jour,type,vote) values(?,?,?,'petit dejeuner',?);");
				ps1.setInt(1,w);
				ps1.setInt(2, us.getID());
				ps1.setString(3,jour);
				ps1.setInt(4,vote);
				ps1.executeUpdate();
				
				PreparedStatement ps2=conn.prepareStatement("UPDATE resultat_vote_menu SET nbv1=nbv1+1 where id_semaine=? and jour=?;");
				ps2.setInt(1,w);
				ps2.setString(2,jour);
				ps2.executeUpdate();
				PreparedStatement psa=conn.prepareStatement("UPDATE resultat_vote_menu SET sr1 = sr1+?  where id_semaine=? and jour=?;");
				psa.setInt(1, vote);
				psa.setInt(2,w);
				psa.setString(3,jour);
				psa.executeUpdate();
				
				
			}
				
			else/* --deja vote donc update--*/ {
				int sr=rs.getInt("vote");
				PreparedStatement ps1= conn.prepareStatement("UPDATE vote_menu SET vote=? where id_semaine=? and id_etudiant=? and jour=? and type='petit dejeuner';");
				ps1.setInt(1,vote);
				ps1.setInt(2,w);
				ps1.setInt(3, us.getID());
				ps1.setString(4, jour);
				ps1.executeUpdate();
				
				PreparedStatement ps2=conn.prepareStatement("UPDATE resultat_vote_menu SET sr1 = sr1+?  where id_semaine=? and jour=?;");
				ps2.setInt(1, vote);
				ps2.setInt(2,w);
				ps2.setString(3,jour);
				ps2.executeUpdate();
				
				PreparedStatement ps3=conn.prepareStatement("UPDATE resultat_vote_menu SET sr1 = sr1-?  where id_semaine=? and jour=?;");
				ps3.setInt(1, sr);
				ps3.setInt(2,w);
				ps3.setString(3,jour);
				ps3.executeUpdate();
				
				
				
				
			} 
			
			
			
	}catch (SQLException e) {
        e.printStackTrace();
        }
    }
	
public void Vote_menu_dej(String jour,int vote) {
		
		Connection conn=SingletonConnection.getConnection();
		try {
			PreparedStatement psd= conn.prepareStatement("select ID_MS from menu_semaine ORDER BY ID_MS DESC;");
            ResultSet rs1 = psd.executeQuery();
			 rs1.next();
			 int w=rs1.getInt("ID_MS");
			 
			 PreparedStatement pss= conn.prepareStatement("select * from resultat_vote_menu WHERE id_semaine=? and jour=?;");
			 pss.setInt(1,w);
			 pss.setString(2, jour);
	         ResultSet rss = pss.executeQuery();
			if(!rss.next()) {
				PreparedStatement ps2= conn.prepareStatement("insert into resultat_vote_menu (id_semaine,jour,sr1,nbv1,sr2,nbv2,sr3,nbv3) values(?,?,0,0,0,0,0,0);");
				ps2.setInt(1,w);
				ps2.setString(2, jour);
				ps2.executeUpdate();
			}
				  
			PreparedStatement psf= conn.prepareStatement("select * from vote_menu WHERE id_semaine = ? AND id_etudiant	=? and jour=? and type='dejeuner';");
			psf.setInt(1,w);
			psf.setInt(2, us.getID());
			psf.setString(3,jour);
			ResultSet rs = psf.executeQuery();
			
			if (!rs.next())/*--first time donc insert--*/{
				
				PreparedStatement ps1= conn.prepareStatement("insert into vote_menu (id_semaine,id_etudiant,jour,type,vote) values(?,?,?,'dejeuner',?);");
				ps1.setInt(1,w);
				ps1.setInt(2, us.getID());
				ps1.setString(3,jour);
				ps1.setInt(4,vote);
				ps1.executeUpdate();
				
				PreparedStatement ps2=conn.prepareStatement("UPDATE resultat_vote_menu SET sr2 = sr2+? where id_semaine=? and jour=?;");
				ps2.setInt(1, vote);
				ps2.setInt(2,w);
				ps2.setString(3,jour);
				ps2.executeUpdate();
				PreparedStatement psy=conn.prepareStatement("UPDATE resultat_vote_menu SET  nbv2=nbv2+1 where id_semaine=? and jour=?;");
				
				psy.setInt(1,w);
				psy.setString(2,jour);
				psy.executeUpdate();
				
				
			}
				
			else /*--deja vote donc update-- */{
				int sr=rs.getInt("vote");
				PreparedStatement ps1= conn.prepareStatement("UPDATE vote_menu SET vote=? where id_semaine=? and id_etudiant=? and jour=? and type='dejeuner';");
				ps1.setInt(1,vote);
				ps1.setInt(2,w);
				ps1.setInt(3, us.getID());
				ps1.setString(4, jour);
				ps1.executeUpdate();
				
				PreparedStatement ps2=conn.prepareStatement("UPDATE resultat_vote_menu SET sr2 = sr2+?  where id_semaine=? and jour=?;");
				ps2.setInt(1, vote);
				ps2.setInt(2,w);
				ps2.setString(3,jour);
				ps2.executeUpdate();
				
				PreparedStatement ps3=conn.prepareStatement("UPDATE resultat_vote_menu SET sr2 = sr2-?  where id_semaine=? and jour=?;");
				ps3.setInt(1, sr);
				ps3.setInt(2,w);
				ps3.setString(3,jour);
				ps3.executeUpdate();
				
				
				
				
			}
			
			
			
	}catch (SQLException e) {
        e.printStackTrace();
        }
    }

public void Vote_menu_din(String jour,int vote) {
	
	Connection conn=SingletonConnection.getConnection();
	try {
		PreparedStatement psd= conn.prepareStatement("select * from menu_semaine ORDER BY ID_MS DESC;");
        ResultSet rs1 = psd.executeQuery();
		 rs1.next();
		 int w=rs1.getInt("ID_MS");
		 
		 PreparedStatement pss= conn.prepareStatement("select * from resultat_vote_menu WHERE id_semaine=? and jour=?;");
		 pss.setInt(1,w);
		 pss.setString(2, jour);
         ResultSet rss = pss.executeQuery();
		if(!rss.next()) {
			PreparedStatement ps2= conn.prepareStatement("insert into resultat_vote_menu (id_semaine,jour,sr1,nbv1,sr2,nbv2,sr3,nbv3) values(?,?,0,0,0,0,0,0);");
			ps2.setInt(1,w);
			ps2.setString(2, jour);
			ps2.executeUpdate();
		}
		PreparedStatement psf= conn.prepareStatement("select * from vote_menu WHERE id_semaine = ? AND id_etudiant	=? and jour=? and type='diner';");
		psf.setInt(1,w);
		psf.setInt(2, us.getID());
		psf.setString(3,jour);
		ResultSet rs = psf.executeQuery();
		
		if (!rs.next()) /*--first time donc insert--*/{
			
			PreparedStatement ps1= conn.prepareStatement("insert into vote_menu (id_semaine,id_etudiant,jour,type,vote) values(?,?,?,'diner',?);");
			ps1.setInt(1,w);
			ps1.setInt(2, us.getID());
			ps1.setString(3,jour);
			ps1.setInt(4,vote);
			ps1.executeUpdate();
			
			PreparedStatement psa=conn.prepareStatement("UPDATE resultat_vote_menu SET nbv3=nbv3+1 where id_semaine=? and jour=?;");
			psa.setInt(1,w);
			psa.setString(2,jour);
			psa.executeUpdate();
			PreparedStatement ps2=conn.prepareStatement("UPDATE resultat_vote_menu SET sr3 = sr3+? where id_semaine=? and jour=?;");
			ps2.setInt(1, vote);
			ps2.setInt(2,w);
			ps2.setString(3,jour);
			ps2.executeUpdate();
			
			
		}
			
		else /*--deja vote donc update--*/ {
			int sr=rs.getInt("vote");
			PreparedStatement ps1= conn.prepareStatement("UPDATE vote_menu SET vote=? where id_semaine=? and id_etudiant=? and jour=? and type='diner';");
			ps1.setInt(1,vote);
			ps1.setInt(2,w);
			ps1.setInt(3, us.getID());
			ps1.setString(4, jour);
			ps1.executeUpdate();
			
			PreparedStatement ps2=conn.prepareStatement("UPDATE resultat_vote_menu SET sr3 = sr3+?  where id_semaine=? and jour=?;");
			ps2.setInt(1, vote);
			ps2.setInt(2,w);
			ps2.setString(3,jour);
			ps2.executeUpdate();
			
			PreparedStatement ps3=conn.prepareStatement("UPDATE resultat_vote_menu SET sr3 = sr3-?  where id_semaine=? and jour=?;");
			ps3.setInt(1, sr);
			ps3.setInt(2,w);
			ps3.setString(3,jour);
			ps3.executeUpdate();
	}
		
		
	}catch (SQLException e) {
		e.printStackTrace();
    	}
	}

    public void AjoutEt(int id,String room,String nom,String prenom,String mail,int num) {
    	Connection conn=SingletonConnection.getConnection();
    	try {
    		PreparedStatement psd= conn.prepareStatement("insert into etudiant (ID_ETUDIANT,NOM,PRENOM,MAIL,NUM_ROOM,NUM_TEL,USER,PASSWORD) values(?,?,?,?,?,?,?,?);");
            psd.setInt(1,id);
            psd.setString(2,nom);
            psd.setString(3,prenom);
            psd.setString(4,mail);
            psd.setString(5,room);
            psd.setInt(6,num);
            psd.setString(7,String.valueOf(id));
            psd.setString(8,String.valueOf(id));
            psd.executeUpdate();
    		 
    	}catch (SQLException e) {
    		e.printStackTrace();
        	}
    
    }
    public void suppEt(int id) {
    	Connection conn=SingletonConnection.getConnection();
		try {
			PreparedStatement pss= conn.prepareStatement("DELETE from etudiant WHERE ID_ETUDIANT = ?;");
			pss.setInt(1,id);
			pss.executeUpdate();
			} catch (SQLException e) {
			e.printStackTrace();
			}
    }
    
}

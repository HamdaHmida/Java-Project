package web;
import projet.VerifLogin;
import java.util.ArrayList;
import java.util.List;
import projet.Rec;

public class RecModele {
private String ca;
List<Rec> reclamations = new ArrayList<>();
public String getCA() {
return ca;
}
public void setCA(String ca) {
this.ca = ca;
}
public List<Rec> getReclamations() {
return reclamations;
}
public void setReclamations(List<Rec> reclamations) {
this.reclamations = reclamations;
}
}
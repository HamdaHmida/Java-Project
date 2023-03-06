package projet;
import java.sql.Connection;
import java.sql.DriverManager;
public class SingletonConnection {
private static Connection connection;
static {
try {
Class.forName("com.mysql.jdbc.Driver");
connection= DriverManager.getConnection
 ("jdbc:mysql://localhost:3306/PROJET_JAVA","root","");

/* la base de donnée à été exporter dans le dossier src/database */
/* merci d'adobter le chemin adequat pour votre systeme et pour votre machine*/
/* mes meilleures salutations */
} catch (Exception e) {
e.printStackTrace();
}
}
public static Connection getConnection() {
return connection;
}
}

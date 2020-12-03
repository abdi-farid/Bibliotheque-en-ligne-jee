package connection;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class SingletonConnection {
    private static Connection connexion;
    
    static {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/MaBibliotheque","root","");
        }catch(ClassNotFoundException | SQLException e){            
        }
    }
    
    public static Connection getConnection(){
        return connexion;
    }
}

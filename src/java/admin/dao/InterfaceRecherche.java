package admin.dao;

import beans.Auteur;
import beans.Livre;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

public interface InterfaceRecherche {
    
        /************************************************
         * RECHERCHE DES LIVRES PAR ADMIN 
        *************************************************/
    public List<Livre> getTable(); // pour le surfer vers livres | ADMIN
    public List<Livre> getBookAdmin(HttpServletRequest req); 


        /************************************************
         * RECHERCHE D'AUTEUR PAR ADMIN ET SURFING
        *************************************************/
    public List<Auteur> get_Table(); // pour surfer vers auteurs | ADMIN
    public List<Auteur> getAuthorByName(String kw);
    
    
}

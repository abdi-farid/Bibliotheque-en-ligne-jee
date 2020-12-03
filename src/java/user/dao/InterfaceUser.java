package user.dao;

import java.util.List;
import user.modele.presentation.Resultat;
    
    /*
     *  LES ACTIONS DE L'UTILISATEUR 
     *  (ACTION DE RECHERCHES)
    */

public interface InterfaceUser {
    public List<Resultat> getByAll(String keyword);
    public List<Resultat> getByTitle(String keyword);
    public List<Resultat> getByDomain(String keyword);
    public List<Resultat> getByAuthor(String keyword);
    
}

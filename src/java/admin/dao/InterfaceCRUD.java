package admin.dao;

import beans.Auteur;
import beans.Livre;

/*******************************************
 *   Interface des méthodes CRUD
 *       CREATE | UPDATE | DELETE
*******************************************/
public interface InterfaceCRUD {
    public void addBook(Livre l);
    public void deleteBook(String issn);
    public void updateBook(Livre l);
    
    public void addAuthor(Auteur a);
    public void deleteAuthor(int num);
    public void updateAuthor(Auteur a);
    
}

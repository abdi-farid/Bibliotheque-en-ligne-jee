package admin.dao;

import beans.Auteur;
import beans.Livre;
import java.sql.Connection;
import java.sql.PreparedStatement;
import connection.SingletonConnection;
import java.sql.SQLException;

    /*******************************************
     *   Class qui implémente les méthode de l'interface InterfaceCRUD
    *******************************************/

public class CRUDimplemente implements InterfaceCRUD{
    
        /************************************************
         *             METHOD CRUD FOR AUTHOR
         * @param a
        *************************************************/
    @Override
    public void addAuthor(Auteur a){
        Connection connexion = SingletonConnection.getConnection();
        String query = "INSERT INTO auteur (Nom,Prenom,DateNaissance) VALUES (?,?,?);";
        
        try {
            PreparedStatement ps = connexion.prepareStatement(query);
            ps.setString(1, a.getNom());
            ps.setString(2, a.getPrenom());
            ps.setDate(3, a.getDateNaissance());
            
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    @Override
    public void deleteAuthor(int num){
        Connection connexion = SingletonConnection.getConnection();
        String query = "DELETE FROM auteur WHERE Num=? ;";
        try {
            PreparedStatement ps = connexion.prepareStatement(query);
            ps.setInt(1, num);
            
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    @Override
    public void updateAuthor(Auteur a){
        Connection connexion = SingletonConnection.getConnection();
        String query = "UPDATE auteur SET Nom=? , Prenom=? , DateNaissance=? WHERE Num=? ;";
        
        try {
            PreparedStatement ps = connexion.prepareStatement(query);
            ps.setString(1, a.getNom());
            ps.setString(2, a.getPrenom());
            ps.setDate(3, a.getDateNaissance());
            ps.setInt(4, a.getID());
            
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    
    
        /************************************************
         *             METHOD CRUD FOR BOOK
         * @param l 
        *************************************************/
    
    @Override
    public void addBook(Livre l){
        Connection connexion = SingletonConnection.getConnection();
        String query = "INSERT INTO livre (ISSN,Titre,Resume,NbPage,Domaine,Num) VALUES (?,?,?,?,?,?) ;";
        
        try {
            PreparedStatement ps = connexion.prepareStatement(query);
            ps.setString(1, l.getISSN());
            ps.setString(2, l.getTitre());
            ps.setString(3, l.getResume());
            ps.setInt(4, l.getNbPage());
            ps.setString(5, l.getDomaine());
            ps.setInt(6, l.getID());
            
            ps.executeUpdate();
            
        } catch (SQLException e) {
        }
    }
    
    @Override
    public void deleteBook(String issn){
        Connection connexion = SingletonConnection.getConnection();
        String query = "DELETE FROM livre WHERE ISSN=? ;";
        
        try {
            PreparedStatement ps = connexion.prepareStatement(query);
            ps.setString(1, issn);
            
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    @Override
    public void updateBook(Livre l){
        Connection connexion = SingletonConnection.getConnection();
        String query = "UPDATE livre SET Titre=? , Resume=? , NbPage=? , Domaine=? , Num=? WHERE ISSN=? ;";
        
        try {
            PreparedStatement ps = connexion.prepareStatement(query);
            ps.setString(1, l.getTitre());
            ps.setString(2, l.getResume());
            ps.setInt(3, l.getNbPage());
            ps.setString(4, l.getDomaine());
            ps.setInt(5, l.getID());
            ps.setString(6, l.getISSN());
            
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
}

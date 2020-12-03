package admin.dao;

import beans.Auteur;
import beans.Livre;
import connection.SingletonConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Collections;
import javax.servlet.http.HttpServletRequest;

    /*********************************************************************
     *   Class qui implémente les méthode de l'interface InterfaceRecherche
    **********************************************************************/

public class RechercheImplemente implements InterfaceRecherche{
    
    /********************************************************
     * PARTIE LIVRES
    *********************************************************/
        // afficher tous les livres
    @Override
    public List<Livre> getTable(){
        List<Livre> livres = new ArrayList<>();
        Connection connexion = SingletonConnection.getConnection();
        
        try{
            Statement s = connexion.createStatement();
            String query = "SELECT ISSN,Titre,Resume,NbPage,Domaine,Num FROM livre";
            ResultSet rs = s.executeQuery(query);
            
            while(rs.next()){
                Livre l = new Livre();
                l.setISSN(rs.getString("ISSN"));
                l.setTitre(rs.getString("Titre"));
                l.setResume(rs.getString("Resume"));
                l.setNbPage(rs.getInt("NbPage"));
                l.setDomaine(rs.getString("Domaine"));
                l.setID(rs.getInt("Num"));
                
                livres.add(l);
            }
            
        } catch (SQLException ex) {
        }
        Collections.reverse(livres);
        
        return livres;
    }
    
        // recherche de livre par admin
    @Override
        public List<Livre> getBookAdmin(HttpServletRequest req){
            List<Livre> livres = new ArrayList<>();
            String catégorie = (String)req.getParameter("categorie");
            String kw = (String)req.getParameter("search");
            
            Connection connexion = SingletonConnection.getConnection();
            
            String query = "" ;
            if(catégorie.equals("titre")){
                query = "SELECT ISSN,Titre,Resume,NbPage,Domaine,Num FROM livre WHERE Titre like ?;";
            }else if(catégorie.equals("domaine")){
                query = "SELECT ISSN,Titre,Resume,NbPage,Domaine,Num FROM livre WHERE Domaine like ?;";
            }else if(catégorie.equals("titreOuDomain")){
                query = "SELECT ISSN,Titre,Resume,NbPage,Domaine,Num FROM livre WHERE Domaine like ? OR Titre like ?;";
            }
            
        try{
            PreparedStatement ps = connexion.prepareStatement(query);
            
            if(catégorie.equals("titreOuDomain")){
                ps.setString(1, "%"+kw+"%");
                ps.setString(2, "%"+kw+"%");
            }else {
                ps.setString(1, "%"+kw+"%");
            }
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Livre l = new Livre();
                l.setISSN(rs.getString("ISSN"));
                l.setTitre(rs.getString("Titre"));
                l.setResume(rs.getString("Resume"));
                l.setNbPage(rs.getInt("NbPage"));
                l.setDomaine(rs.getString("Domaine"));
                l.setID(rs.getInt("Num"));
                
                livres.add(l);
            }
        }catch(SQLException e){
        }
        Collections.reverse(livres);
            
            return livres;
        }
    
    
    
    
    /********************************************************
     * PARTIE AUTEURS
    *********************************************************/
    // afficher tous les auteurs
    @Override
    public List<Auteur> get_Table(){
        List<Auteur> auteurs = new ArrayList<>();
        Connection connexion = SingletonConnection.getConnection();
        
        try{
            Statement s = connexion.createStatement();
            String query = "SELECT Num, Nom, Prenom, DateNaissance FROM auteur";
            ResultSet rs = s.executeQuery(query);
            
            while(rs.next()){
                Auteur a = new Auteur();
                a.setID(rs.getInt("Num"));
                a.setNom(rs.getString("Nom"));
                a.setPrenom(rs.getString("Prenom"));
                a.setDateNaissance(rs.getDate("DateNaissance"));
                
                auteurs.add(a);
            }
        }catch(SQLException e){
        }
        Collections.reverse(auteurs);
        return auteurs;
    }
    
        // rechercher un auteur par nom ou prenom
    @Override
    public List<Auteur> getAuthorByName(String kw){
        List<Auteur> auteurs = new ArrayList<>();
        Connection connexion = SingletonConnection.getConnection();
        
        try{
            PreparedStatement ps = connexion.prepareStatement("SELECT Num, Nom, Prenom, DateNaissance FROM auteur WHERE Nom LIKE ? OR Prenom LIKE ?;");
            ps.setString(1, kw+"%");
            ps.setString(2, kw+"%");
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Auteur a = new Auteur();
                a.setID(rs.getInt("Num"));
                a.setNom(rs.getString("Nom"));
                a.setPrenom(rs.getString("Prenom"));
                a.setDateNaissance(rs.getDate("DateNaissance"));
                
                auteurs.add(a);
            }
        }catch(SQLException z){
        }
        
        Collections.reverse(auteurs);
        return auteurs;
    }
}

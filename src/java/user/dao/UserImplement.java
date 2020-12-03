package user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import user.connection.UserConnection;
import user.modele.presentation.Resultat;

public class UserImplement implements InterfaceUser{
    
    /*********************************************
     *  METHODES POUR RECUPERER LES DONNER      *
     *  ET REPONDRE AUX REQUETE D'UTILISATEUR   *
    **********************************************/
    
    @Override
    public List<Resultat> getByAll(String keyword){
        List<Resultat> result = new ArrayList<>();
        
        Connection conn = UserConnection.getConnection();
        try{
            String sql = "select ISSN,Titre,Resume,NbPage,Domaine,livre.Num,Nom,Prenom,DateNaissance from livre,auteur where livre.Num=auteur.Num and (Titre LIKE ?  OR Nom LIKE ? or Domaine LIKE ? OR Prenom LIKE ?) ;";
            
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, keyword+ "%");
            ps.setString(2, keyword+ "%");
            ps.setString(3, keyword+ "%");
            ps.setString(4, keyword+ "%");
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Resultat r = new Resultat();
                r.setISSN(rs.getString("ISSN"));
                r.setTitre(rs.getString("Titre"));
                r.setResume(rs.getString("Resume"));
                r.setNbpage(rs.getInt("NbPage"));
                r.setDomaine(rs.getString("Domaine"));
                r.setIDauteur(rs.getInt("Num"));
                r.setNom(rs.getString("Nom"));
                r.setPrenom(rs.getString("Prenom"));
                r.setDDN(rs.getDate("DateNaissance"));
                
                result.add(r);
            }
            
            return result;
        }catch(SQLException e){ return null;
        }
    }
    
    @Override
    public List<Resultat> getByTitle(String keyword){
        List<Resultat> result = new ArrayList<>();
        
        Connection conn = UserConnection.getConnection();
        try{
            String sql = "select ISSN,Titre,Resume,NbPage,Domaine,livre.Num,Nom,Prenom,DateNaissance from livre,auteur where livre.Num=auteur.Num and Titre LIKE ? ;";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, keyword+ "%");
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Resultat r = new Resultat();
                r.setISSN(rs.getString("ISSN"));
                r.setTitre(rs.getString("Titre"));
                r.setResume(rs.getString("Resume"));
                r.setNbpage(rs.getInt("NbPage"));
                r.setDomaine(rs.getString("Domaine"));
                r.setIDauteur(rs.getInt("Num"));
                r.setNom(rs.getString("Nom"));
                r.setPrenom(rs.getString("Prenom"));
                r.setDDN(rs.getDate("DateNaissance"));
                
                result.add(r);
            }
            
            return result;
        }catch(SQLException e){ return null;
        }
    }
    
    
    @Override
    public List<Resultat> getByDomain(String keyword){
        List<Resultat> result = new ArrayList<>();
        
        Connection conn = UserConnection.getConnection();
        try{
            String sql = "select ISSN,Titre,Resume,NbPage,Domaine,livre.Num,Nom,Prenom,DateNaissance from livre,auteur where livre.Num=auteur.Num and Domaine LIKE ? ;";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, keyword+ "%");
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Resultat r = new Resultat();
                r.setISSN(rs.getString("ISSN"));
                r.setTitre(rs.getString("Titre"));
                r.setResume(rs.getString("Resume"));
                r.setNbpage(rs.getInt("NbPage"));
                r.setDomaine(rs.getString("Domaine"));
                r.setIDauteur(rs.getInt("Num"));
                r.setNom(rs.getString("Nom"));
                r.setPrenom(rs.getString("Prenom"));
                r.setDDN(rs.getDate("DateNaissance"));
                
                result.add(r);
            }
            
            return result;
        }catch(SQLException e){ return null;
        }
    }
    
    
    @Override
    public List<Resultat> getByAuthor(String keyword){
        List<Resultat> result = new ArrayList<>();
        
        Connection conn = UserConnection.getConnection();
        
        try{
            String sql = "select ISSN,Titre,Resume,NbPage,Domaine,livre.Num,Nom,Prenom,DateNaissance from livre,auteur where livre.Num=auteur.Num and (Nom LIKE ?  or Prenom LIKE ?) ;";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, keyword+ "%");
            ps.setString(2, keyword+ "%");
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Resultat r = new Resultat();
                r.setISSN(rs.getString("ISSN"));
                r.setTitre(rs.getString("Titre"));
                r.setResume(rs.getString("Resume"));
                r.setNbpage(rs.getInt("NbPage"));
                r.setDomaine(rs.getString("Domaine"));
                r.setIDauteur(rs.getInt("Num"));
                r.setNom(rs.getString("Nom"));
                r.setPrenom(rs.getString("Prenom"));
                r.setDDN(rs.getDate("DateNaissance"));
                
                result.add(r);
            }
            
            return result;
        }catch(SQLException e){ return null;
        }
    }
    
}

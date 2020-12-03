package admin.manager.servlet;

import admin.dao.InterfaceRecherche;
import admin.dao.RechercheImplemente;
import beans.Auteur;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
    
    /************************************************
     *  SERVLET DE RECHERCHE POUR ADMIN
     * 
     * ACTION DE RECHERCHE PAR ADMIN 
    *************************************************/

public class action extends HttpServlet {
    
    /************************************************
     * recherche pour l'admin
    *************************************************/
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        
        InterfaceRecherche metier = new RechercheImplemente();
        
            // réponse a la recherche de livres par admin
        String catégorie = (String)req.getParameter("categorie");
        if(catégorie.equals("titre") || catégorie.equals("domaine") || catégorie.equals("titreOuDomain")){
            
            req.setAttribute("s", (String)req.getParameter("search"));
            req.setAttribute("livres", metier.getBookAdmin(req));
            req.getRequestDispatcher("WEB-INF/admin/livres.jsp").forward(req, res);
            
        }else // réponse a la recherche d'auteur par admin
            if(catégorie.equals("auteur")){
                req.setAttribute("s", (String)req.getParameter("search"));
                req.setAttribute("auteurs", metier.getAuthorByName(req.getParameter("search")));
                req.getRequestDispatcher("WEB-INF/admin/auteurs.jsp").forward(req, res);
            }        
    }
}

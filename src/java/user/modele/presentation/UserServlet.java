package user.modele.presentation;

import beans.Livre;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import user.dao.InterfaceUser;
import user.dao.UserImplement;

public class UserServlet extends HttpServlet {
    InterfaceUser Metier;
    ModeleResultat model;
    
        /*************************************************
         *  méthode pour répondre aux requêtes d'auteur *
        **************************************************/
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
            // récupérer les données de recherche
        String categorie = (String)req.getParameter("categorie");
        String keyword = (String)req.getParameter("search");
        
            // si la mot recherché n'est pas vide 
        if(! keyword.isEmpty()){
        
        Metier= new UserImplement();
        model = new ModeleResultat();
        
        model.setKeyWord(keyword);
        
        switch(categorie){
            case "titre":
                req.setAttribute("cat", categorie);
                model.setResultats(Metier.getByTitle(keyword));
                break;
            
            case "domaine":
                req.setAttribute("cat", categorie);
                model.setResultats(Metier.getByDomain(keyword));
                break;
            
            case "auteur":
                req.setAttribute("cat", categorie);
                model.setResultats(Metier.getByAuthor(keyword));
                break;
                
            case "all":
                req.setAttribute("cat", categorie);
                model.setResultats(Metier.getByAll(keyword));
                break;
        }
        
        req.setAttribute("cat", categorie);
        req.setAttribute("model", model);
        this.getServletContext().getRequestDispatcher("/search.jsp").forward(req, res);
        }else 
        
        this.getServletContext().getRequestDispatcher("/search.jsp").forward(req, res);
    }
    
        /***************************************************
         *  pour la lecture de résumé s'il est disponible *
        ****************************************************/
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        
        req.setAttribute("nom", req.getParameter("n"));
        req.setAttribute("prenom", req.getParameter("p"));
        req.setAttribute("issn", req.getParameter("issn"));
        req.setAttribute("titre", req.getParameter("t"));
        req.setAttribute("domaine", req.getParameter("d"));
        req.setAttribute("resume", req.getParameter("r"));
        req.setAttribute("nbpage", req.getParameter("np"));
        req.setAttribute("idAuteur", req.getParameter("id"));
        req.setAttribute("ddn", req.getParameter("ddn"));
        
        req.getRequestDispatcher("/ResultInformation.jsp").forward(req, res);
    }
}

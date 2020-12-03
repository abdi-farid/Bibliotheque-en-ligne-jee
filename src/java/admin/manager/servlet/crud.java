package admin.manager.servlet;

import admin.dao.CRUDimplemente;
import admin.dao.InterfaceCRUD;
import admin.dao.InterfaceRecherche;
import admin.dao.RechercheImplemente;
import beans.Auteur;
import beans.Livre;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

        /************************************************
         * SERVLET DES OPERATION CRUD
        *************************************************/

public class crud extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        
            /*  CRUDimplemente : pour les opération CRUD         *
            *   RechercheImplemente : pour récupérer les données *
            */
        InterfaceCRUD metier = new CRUDimplemente();
        InterfaceRecherche metierRecherche = new RechercheImplemente();
        
            /*  le parametre caché envoyé par 
            *   les formulaire de 
            *       . Création . Mise à jour . Suppression 
            *   d'auteur et de livre
            */
        String opCRUD = (String)req.getParameter("opCRUD");
        
        switch(opCRUD){
            
                // parametres qui concernent un auteur 
            case "addAuthor":
                Auteur a = new Auteur();
                a.setNom((String) req.getParameter("nom"));
                a.setPrenom((String) req.getParameter("prenom"));
                a.setDateNaissance(Date.valueOf(req.getParameter("ddn")) );
                metier.addAuthor(a);
                
                req.setAttribute("auteurs", metierRecherche.get_Table());
                req.getRequestDispatcher("/WEB-INF/admin/auteurs.jsp").forward(req, res);
                break;
                
            case "DelAuthor":
                metier.deleteAuthor(Integer.parseInt(req.getParameter("id")));
                req.setAttribute("auteurs", metierRecherche.get_Table());
                req.getRequestDispatcher("/WEB-INF/admin/auteurs.jsp").forward(req, res);
                break;
                
            case "editAuthor":
                    // DATE 
                String year = (String)req.getParameter("year");
                String month = (String)req.getParameter("month");
                String day = (String)req.getParameter("day");
                
                Date date = Date.valueOf(year+"-"+month+"-"+day);
                
                Auteur toUpdate = new Auteur();
                
                toUpdate.setID(Integer.parseInt(req.getParameter("id")));
                toUpdate.setNom((String)req.getParameter("nom"));
                toUpdate.setPrenom((String)req.getParameter("prenom"));
                toUpdate.setDateNaissance(date);
                
                metier.updateAuthor(toUpdate);
                req.setAttribute("auteurs", metierRecherche.get_Table());
                req.getRequestDispatcher("/WEB-INF/admin/auteurs.jsp").forward(req, res);
                break;
                
                
                // parametres qui concernent un livre
            case "addBook":
                Livre l = new Livre();
                l.setISSN((String)req.getParameter("issn"));
                l.setTitre((String)req.getParameter("titre"));
                l.setResume((String)req.getParameter("resume"));
                l.setNbPage(Integer.parseInt((String)req.getParameter("nbpage")));
                l.setDomaine((String)req.getParameter("domaine"));
                l.setID(Integer.parseInt((String)req.getParameter("idAuteur")));
                
                metier.addBook(l);
                
                req.setAttribute("livres", metierRecherche.getTable());
                req.getRequestDispatcher("/WEB-INF/admin/livres.jsp").forward(req, res);
                break;
                
            case "DelBook":
                metier.deleteBook((String)req.getParameter("issn"));
                req.setAttribute("livres", metierRecherche.getTable());
                req.getRequestDispatcher("/WEB-INF/admin/livres.jsp").forward(req, res);
                break;
                
            case "editBook":
                Livre livre = new Livre();
                livre.setISSN(req.getParameter("issn"));
                livre.setTitre(req.getParameter("titre"));
                livre.setResume(req.getParameter("resume"));
                livre.setNbPage(Integer.parseInt((String)req.getParameter("nbpage")));
                livre.setDomaine(req.getParameter("domaine"));
                livre.setID(Integer.parseInt(req.getParameter("idAuteur")));
                
                metier.updateBook(livre);
                req.setAttribute("livres", metierRecherche.getTable());
                req.getRequestDispatcher("/WEB-INF/admin/livres.jsp").forward(req, res);
                break;
                
            default:
                req.getRequestDispatcher("/WEB-INF/admin/admin_home.jsp").forward(req, res);
        }
    }
}

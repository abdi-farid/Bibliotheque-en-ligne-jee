package admin.manager.servlet;

import admin.dao.InterfaceRecherche;
import admin.dao.RechercheImplemente;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

    /************************************************
    * CLASS POUR LIENS (NAVIGATION ADMIN)
    *************************************************/
public class admin extends HttpServlet {
    
    // class de connecexion d'un admin
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        String login = (String)req.getParameter("login");
        String password = (String)req.getParameter("password");
        
        if(!login.equals("admin")){
            req.setAttribute("loginerr", "Incorrect login");
            req.getRequestDispatcher("/connectAdmin.jsp").forward(req, res);
        }else if(!password.equals("admin")){
            req.setAttribute("passerr", "Incorrect password");
            req.getRequestDispatcher("/connectAdmin.jsp").forward(req, res);
        }else{
            HttpSession session = req.getSession();
            session.setAttribute("login", login);
            req.getRequestDispatcher("/WEB-INF/admin/admin_home.jsp").forward(req, res);
        }
    }
    
    // définition des liens dans le profil admin
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
        String vers = (String)req.getParameter("vers");
        
        InterfaceRecherche metier = new RechercheImplemente();
        
        switch(vers){
                
                // LIVRES
            case "livres":
                    // récupérer les auteurs (méthode)
                req.setAttribute("livres", metier.getTable());
                req.getRequestDispatcher("/WEB-INF/admin/livres.jsp").forward(req, res);
                break;
                
            case "addBook":
                    // vers l'ajout d'un livre
                req.setAttribute("add", "add");
                req.setAttribute("auteurs", metier.get_Table());
                req.getRequestDispatcher("/WEB-INF/admin/addBook.jsp").forward(req, res);
                break;
            
            case "editBook":
                    // vers la mise à jour d'un livre
                req.setAttribute("issn", req.getParameter("issn"));
                req.setAttribute("titre", req.getParameter("t"));
                req.setAttribute("resume", req.getParameter("r"));
                req.setAttribute("nbpage", req.getParameter("p"));
                req.setAttribute("domaine", req.getParameter("d"));
                req.setAttribute("id", Integer.parseInt(req.getParameter("id")));
                
                
                req.setAttribute("edit", "edit");
                req.setAttribute("auteurs", metier.get_Table());
                req.getRequestDispatcher("/WEB-INF/admin/addBook.jsp").forward(req, res);
                break;
                
                
                //  AUTEURS
                
            case "auteurs":
                    // récupérer les auteurs (méthode)
                req.setAttribute("auteurs", metier.get_Table());
                req.getRequestDispatcher("/WEB-INF/admin/auteurs.jsp").forward(req, res);
                break;
                
            case "addAuthor":
                    // vers l'ajout d'un auteur
                req.setAttribute("add", "add");
                req.getRequestDispatcher("/WEB-INF/admin/addAuthor.jsp").forward(req, res);
                break;
                
            case "editAuthor":
                    // CONVERT DATE
                String ddn = req.getParameter("ddn");
                String[] date = ddn.split("-");
                int year = Integer.parseInt(date[0]);
                int month = Integer.parseInt(date[1]);
                int day = Integer.parseInt(date[2]);
                
                req.setAttribute("id", req.getParameter("id"));
                req.setAttribute("prenom", req.getParameter("p"));
                req.setAttribute("nom", req.getParameter("n"));
                req.setAttribute("y", year);
                req.setAttribute("m", month);
                req.setAttribute("d", day);
                
                req.setAttribute("edit", "edit");
                req.getRequestDispatcher("/WEB-INF/admin/addAuthor.jsp").forward(req, res);
                break;
                
            case "logout":
                    // déconnexion
                req.getSession().removeAttribute("login");
                req.getSession().invalidate();
                req.getRequestDispatcher("connectAdmin.jsp").forward(req, res);
                break;
            
            default:
                req.getRequestDispatcher("/WEB-INF/admin/admin_home.jsp").forward(req, res);
                break;
        }// end of switch
    }// end of doGet
}

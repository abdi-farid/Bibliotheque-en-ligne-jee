package servlets.coursCAWA.revision;
/*
    URL bar : http://localhost:8080/MiniProjet/RequestInformation
*/
import javax.servlet.http.HttpServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;


public class RequestInformation extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException{
        PrintWriter out = res.getWriter();
        try{
            res.setContentType("text/html");
            out.println("<html><body>");
            
            out.println("<h1>Liste des parametres : </h1><br>");
            out.println("type mim de la requete  : <b>"+req.getContentType()+"</b><br>");
            out.println("protocol de la requete  : <b>"+req.getProtocol()+"</b><br>");
            out.println("addresse IP de client   : <b>"+req.getRemoteAddr()+"</b><br>");
            out.println("nom de client           : <b>"+req.getRemoteHost()+"</b><br>");
            out.println("port de serveur qui a reçu la req : <b>"+req.getServerPort()+"</b><br>");
            out.println("nom de serveur qui a reçu la req  : <b>"+req.getServerName()+"</b><br>");
            
            out.println("<html><body>");
        }finally{
            out.close();
        }
    }
}

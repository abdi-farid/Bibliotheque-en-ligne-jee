package user.modele.presentation;

import java.sql.Date;

/********************************************************************
 * modele de résultat pour la recherche effectuée par l'utilisateur *
 ********************************************************************/
public class Resultat {
    private String Nom; 
    private String Prenom;
    private String ISSN;
    private String Titre;
    private String Domaine;
    private String Resume;
    private int Nbpage;
    private int IDauteur;
    private Date DDN;

    public String getNom() {
        return Nom;
    }

    public String getPrenom() {
        return Prenom;
    }

    public String getISSN() {
        return ISSN;
    }

    public String getTitre() {
        return Titre;
    }

    public String getDomaine() {
        return Domaine;
    }

    public String getResume() {
        return Resume;
    }

    public int getNbpage() {
        return Nbpage;
    }

    public int getIDauteur() {
        return IDauteur;
    }

    public Date getDDN() {
        return DDN;
    }

    public void setNom(String Nom) {
        this.Nom = Nom;
    }

    public void setPrenom(String Prenom) {
        this.Prenom = Prenom;
    }

    public void setISSN(String ISSN) {
        this.ISSN = ISSN;
    }

    public void setTitre(String Titre) {
        this.Titre = Titre;
    }

    public void setDomaine(String Domaine) {
        this.Domaine = Domaine;
    }

    public void setResume(String Resume) {
        this.Resume = Resume;
    }

    public void setNbpage(int Nbpage) {
        this.Nbpage = Nbpage;
    }

    public void setIDauteur(int IDauteur) {
        this.IDauteur = IDauteur;
    }

    public void setDDN(Date DDN) {
        this.DDN = DDN;
    }
}

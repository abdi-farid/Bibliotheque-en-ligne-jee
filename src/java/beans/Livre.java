package beans;

public class Livre {
    private String ISSN;
    private String Titre;
    private String Resume;
    private int NbPage;
    private String Domaine;
    private int ID;

    public String getISSN() { return ISSN; }
    public void setISSN(String ISSN) { this.ISSN = ISSN; }

    public String getTitre() { return Titre; }
    public void setTitre(String Titre) { this.Titre = Titre; }

    public String getResume() { return Resume; }
    public void setResume(String Resume) { this.Resume = Resume; }

    public int getNbPage() { return NbPage; }
    public void setNbPage(int NbPage) { this.NbPage = NbPage; }

    public String getDomaine() { return Domaine; }
    public void setDomaine(String Domaine) { this.Domaine = Domaine; }

    public int getID() { return ID; }
    public void setID(int ID) { this.ID = ID; }
    
}

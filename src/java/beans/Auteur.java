package beans;

import java.sql.Date;

public class Auteur {
    private int ID;
    private String Nom;
    private String Prenom;
    private Date DateNaissance;

    public int getID() { return ID;    }
    public void setID(int ID) { this.ID = ID;    }

    public String getNom() { return Nom;    }
    public void setNom(String Nom) { this.Nom = Nom;    }

    public String getPrenom() { return Prenom;    }
    public void setPrenom(String Prenom) { this.Prenom = Prenom;    }

    public Date getDateNaissance() { return DateNaissance;    }
    public void setDateNaissance(Date DateNaissance) {
        this.DateNaissance = DateNaissance;
    }
}

package user.modele.presentation;

import java.util.ArrayList;
import java.util.List;

/****************************************************
 *  Ensembe des résultats retournés à l'utilisateur *
 ****************************************************/
public class ModeleResultat {
    private String keyWord;
    private List<Resultat> resultats = new ArrayList<>();

    public String getKeyWord() {
        return keyWord;
    }

    public List<Resultat> getResultats() {
        return resultats;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    public void setResultats(List<Resultat> resultats) {
        this.resultats = resultats;
    }
}

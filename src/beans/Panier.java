package beans;

import java.io.Serializable;

public class Panier implements Serializable {

    private int id_produit;
    private int id_utilisateur;
    private int quantite;

    public Panier(int id_produit, int id_utilisateur, int quantite) {
        this.id_produit = id_produit;
        this.id_utilisateur = id_utilisateur;
        this.quantite = quantite;
    }

    public int getId_produit() {
        return id_produit;
    }

    public int getId_utilisateur() {
        return id_utilisateur;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }
}

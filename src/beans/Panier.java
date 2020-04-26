package beans;

import java.io.Serializable;

/**
 * The type Panier.
 */
public class Panier implements Serializable {

    private int id_produit;
    private int id_utilisateur;
    private int quantite;

    /**
     * Instantiates a new Panier.
     *
     * @param id_produit     the id produit
     * @param id_utilisateur the id utilisateur
     * @param quantite       the quantite
     */
    public Panier(int id_produit, int id_utilisateur, int quantite) {
        this.id_produit = id_produit;
        this.id_utilisateur = id_utilisateur;
        this.quantite = quantite;
    }

    /**
     * Gets id produit.
     *
     * @return the id produit
     */
    public int getId_produit() {
        return id_produit;
    }

    /**
     * Gets id utilisateur.
     *
     * @return the id utilisateur
     */
    public int getId_utilisateur() {
        return id_utilisateur;
    }

    /**
     * Gets quantite.
     *
     * @return the quantite
     */
    public int getQuantite() {
        return quantite;
    }

    /**
     * Sets quantite.
     *
     * @param quantite the quantite
     */
    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }
}

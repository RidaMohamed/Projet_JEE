package beans;

import java.io.Serializable;
import java.util.Objects;

public class Produit implements Serializable {

    private int id;
    private String nom;
    private int prix;
    private String image;
    private String description;

    public Produit(int id, String nom, int prix) {
        this.id = id;
        this.nom = nom;
        this.prix = prix;
    }

    public Produit(int id, String nom, int prix,String i,String des) {
        this.id = id;
        this.nom = nom;
        this.prix = prix;
        this.image=i;
        this.description=des;
    }

    public int getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public int getPrix() {
        return prix;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrix(int prix) {
        this.prix = prix;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Produit)) return false;
        Produit produit = (Produit) o;
        return getId() == produit.getId() &&
                getPrix() == produit.getPrix() &&
                Objects.equals(getNom(), produit.getNom()) &&
                Objects.equals(getImage(), produit.getImage()) &&
                Objects.equals(getDescription(), produit.getDescription());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), getNom(), getPrix(), getImage(), getDescription());
    }
}

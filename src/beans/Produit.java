package beans;

import java.io.Serializable;
import java.util.Objects;

/**
 * The type Produit.
 */
public class Produit implements Serializable {

    private int id;
    private String nom;
    private int prix;
    private String image;
    private String description;

    /**
     * Instantiates a new Produit.
     *
     * @param id   the id
     * @param nom  the nom
     * @param prix the prix
     */
    public Produit(int id, String nom, int prix) {
        this.id = id;
        this.nom = nom;
        this.prix = prix;
    }

    /**
     * Instantiates a new Produit.
     *
     * @param id   the id
     * @param nom  the nom
     * @param prix the prix
     * @param i    the
     * @param des  the des
     */
    public Produit(int id, String nom, int prix,String i,String des) {
        this.id = id;
        this.nom = nom;
        this.prix = prix;
        this.image=i;
        this.description=des;
    }

    /**
     * Gets id.
     *
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * Gets nom.
     *
     * @return the nom
     */
    public String getNom() {
        return nom;
    }

    /**
     * Gets prix.
     *
     * @return the prix
     */
    public int getPrix() {
        return prix;
    }

    /**
     * Sets nom.
     *
     * @param nom the nom
     */
    public void setNom(String nom) {
        this.nom = nom;
    }

    /**
     * Sets prix.
     *
     * @param prix the prix
     */
    public void setPrix(int prix) {
        this.prix = prix;
    }

    /**
     * Gets image.
     *
     * @return the image
     */
    public String getImage() {

        if(image == null)
            return "https://www.salonlfc.com/wp-content/uploads/2018/01/image-not-found-1-scaled-1150x647.png";
        return image;
    }

    /**
     * Sets image.
     *
     * @param image the image
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * Gets description.
     *
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * Sets description.
     *
     * @param description the description
     */
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

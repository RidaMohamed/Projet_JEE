package beans;

import java.io.Serializable;


/**
 * The type Utilisateur.
 */
public class Utilisateur implements Serializable {

    /**
     * The constant admin.
     */
    public static String admin="admin";
    /**
     * The constant utilisateur.
     */
    public static String utilisateur="utilisateur";

    private int id;
    private String pseudo;
    private String password;
    private String role;

    /**
     * Instantiates a new Utilisateur.
     *
     * @param id       the id
     * @param pseudo   the pseudo
     * @param password the password
     * @param role     the role
     */
    public Utilisateur(int id, String pseudo, String password, String role) {
        this.id = id;
        this.pseudo = pseudo;
        this.password = password;
        this.role = role;
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
     * Gets pseudo.
     *
     * @return the pseudo
     */
    public String getPseudo() {
        return pseudo;
    }

    /**
     * Gets password.
     *
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * Gets role.
     *
     * @return the role
     */
    public String getRole() {
        return role;
    }

    /**
     * Sets pseudo.
     *
     * @param pseudo the pseudo
     */
    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    /**
     * Sets password.
     *
     * @param password the password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * Sets role.
     *
     * @param role the role
     */
    public void setRole(String role) {
        this.role = role;
    }
}

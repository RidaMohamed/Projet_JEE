package beans;

import java.io.Serializable;


public class Utilisateur implements Serializable {

    public static String admin="admin";
    public static String utilisateur="utilisateur";

    private int id;
    private String pseudo;
    private String password;
    private String role;

    public Utilisateur(int id, String pseudo, String password, String role) {
        this.id = id;
        this.pseudo = pseudo;
        this.password = password;
        this.role = role;
    }

    public int getId() {
        return id;
    }

    public String getPseudo() {
        return pseudo;
    }

    public String getPassword() {
        return password;
    }

    public String getRole() {
        return role;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(String role) {
        this.role = role;
    }
}

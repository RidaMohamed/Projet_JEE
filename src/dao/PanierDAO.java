package dao;

import beans.Produit;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

/**
 * The type Panier dao.
 */
public class PanierDAO {

    /**
     * Ajouter panier.
     *
     * @param p  the p
     * @param id the id
     */
    public static void ajouterPanier(int p, int id){


        try {

            int id_user =1;
            int id_produit=p;

            int nombreProduit = getNbProduit(id_user,id_produit);

            if(nombreProduit <= 0) {

                nombreProduit = 1;
                ConnexionBDD instance = ConnexionBDD.getInstance();
                Connection con = instance.getCnx();
                PreparedStatement stmt = null;
                stmt = con.prepareStatement("INSERT INTO panier (id_produit,id_utilisateur,quantite) VALUES(?,?,?)");

                // ID produit
                stmt.setInt(1, p);

                // TODO AVEC L'ID EN VARIABLE DE SESSION
                //ID User
                stmt.setInt(2, id);

                //Quantite
                stmt.setInt(3, nombreProduit);

                stmt.executeUpdate();
            }

            else {
                nombreProduit++;
                updatePanier(id_produit,id_user,nombreProduit);
            }




        }
        catch (SQLException e) {
            System.out.println("Le p est : "+p);
            e.printStackTrace();
        }


    }

    private static void updatePanier(int id_produit, int id_user, int nombreProduit) {

        try {
            ConnexionBDD instance = ConnexionBDD.getInstance();
            Connection con = instance.getCnx();
            PreparedStatement stmt = null;
            stmt = con.prepareStatement("update panier set quantite = ? where id_produit = ? and id_utilisateur = ?");
            stmt.setInt(1, nombreProduit);
            stmt.setInt(2, id_produit);
            stmt.setInt(3, id_user);

            int res=stmt.executeUpdate();

            System.out.println("Nombre de lignes modifiées : "+res);


        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static int getNbProduit(int user,int produit) {

        try {
            ConnexionBDD instance = ConnexionBDD.getInstance();
            Connection con = instance.getCnx();
            PreparedStatement stmt = null;
            stmt = con.prepareStatement("select * from panier where id_utilisateur = ? and id_produit = ?");
            stmt.setInt(1, user);
            stmt.setInt(2,produit);
            ResultSet rs = stmt.executeQuery();

            if(rs.next()) {
                int quantite = rs.getInt("quantite");
                System.out.println("La quantite trouvé est de : "+quantite);
                return quantite;
            }


        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return -1;
    }

    /**
     * Gets nb element.
     *
     * @param id the id
     * @return the nb element
     */
    public static int getNbElement(int id) {

        int somme =0;
        try {
            ConnexionBDD instance = ConnexionBDD.getInstance();
            Connection con = instance.getCnx();
            PreparedStatement stmt = null;
            stmt = con.prepareStatement("select * from panier where id_utilisateur = ?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();

            while(rs.next()){
                somme+=rs.getInt("quantite");
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return somme;

    }

    /**
     * Gets panier.
     *
     * @param id_user the id user
     * @return the panier
     */
    public static HashMap<Produit, Integer> getPanier(int id_user) {

        HashMap<Produit, Integer> res=new HashMap();
        try {
            ConnexionBDD instance = ConnexionBDD.getInstance();
            Connection con = instance.getCnx();
            PreparedStatement stmt = null;
            stmt = con.prepareStatement("select * from panier where id_utilisateur = ?");
            stmt.setInt(1, id_user);
            ResultSet rs = stmt.executeQuery();

            while(rs.next()){
                int id_produit = rs.getInt("id_produit");
                int quantite = rs.getInt("quantite");

                System.out.println("Id_produit : "+id_produit+"  quantite = "+quantite);
                Produit tmp=ProduitDAO.getProduit(id_produit);

                if(tmp != null)
                    res.put(tmp,quantite);
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return res;
    }

    /**
     * Supprimer.
     *
     * @param id_produit the id produit
     * @param id_user    the id user
     */
    public static void supprimer(int id_produit,int id_user) {

        try {
            ConnexionBDD instance = ConnexionBDD.getInstance();
            Connection con = instance.getCnx();
            PreparedStatement stmt = null;
            stmt = con.prepareStatement("delete from panier  where id_produit = ? and id_utilisateur = ?");
            stmt.setInt(1, id_produit);
            stmt.setInt(2, id_user);

            stmt.executeUpdate();



        }
        catch (SQLException e) {
            e.printStackTrace();
        }

    }
}

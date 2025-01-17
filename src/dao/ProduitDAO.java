package dao;

import beans.Produit;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;

/**
 * The type Produit dao.
 */
public class ProduitDAO {


    /**
     * Gets all produit.
     *
     * @return the all produit
     */
    public static Collection<Produit> getAllProduit() {

        ArrayList<Produit> res = new ArrayList<>();

        try {
            ConnexionBDD instance = ConnexionBDD.getInstance();
            Connection con = instance.getCnx();
            Statement stmt = con.createStatement();;
            ResultSet rs = stmt.executeQuery("select * from produit");

            while(rs.next()){

                Produit tmp = new Produit(rs.getInt("id"),rs.getString("nom"),rs.getInt("prix"),rs.getString("image"),rs.getString("des_prod"));
                res.add(tmp);
            }

        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return res;
    }

    /**
     * Gets produit.
     *
     * @param id_produit the id produit
     * @return the produit
     */
    public static Produit getProduit(int id_produit) {

        try {
            ConnexionBDD instance = ConnexionBDD.getInstance();
            Connection con = instance.getCnx();
            PreparedStatement stmt = null;
            stmt = con.prepareStatement("select * from produit where id = ?");
            stmt.setInt(1, id_produit);
            ResultSet rs = stmt.executeQuery();

            if(rs.next()){

                Produit tmp = new Produit(rs.getInt("id"),rs.getString("nom"),rs.getInt("prix"),rs.getString("image"),rs.getString("des_prod"));
                return tmp;
            }

        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return null;

    }

    /**
     * Gets pagination product.
     *
     * @param produit the produit
     * @return the pagination product
     */
    public static Collection<Produit> getPaginationProduct(int produit) {
        ArrayList<Produit> res = new ArrayList<>();

        try {
            ConnexionBDD instance = ConnexionBDD.getInstance();
            Connection con = instance.getCnx();
            PreparedStatement stmt = null;
            stmt = con.prepareStatement("select * from produit LIMIT ?,10");
            stmt.setInt(1, produit);
            ResultSet rs = stmt.executeQuery();

            while(rs.next()){

                Produit tmp = new Produit(rs.getInt("id"),rs.getString("nom"),rs.getInt("prix"),rs.getString("image"),rs.getString("des_prod"));
                res.add(tmp);
            }

        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return res;
    }

    /**
     * Count produit int.
     *
     * @return the int
     */
    public static int countProduit() {

        try {
            ConnexionBDD instance = ConnexionBDD.getInstance();
            Connection con = instance.getCnx();
            PreparedStatement stmt = null;
            stmt = con.prepareStatement("select count(*) from produit");
            ResultSet rs = stmt.executeQuery();

            if(rs.next())
                return rs.getInt(1);

        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return -1;

    }
}

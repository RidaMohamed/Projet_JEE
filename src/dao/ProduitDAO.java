package dao;

import beans.Produit;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;

public class ProduitDAO {


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
}

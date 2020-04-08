package dao;

import beans.Produit;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
}

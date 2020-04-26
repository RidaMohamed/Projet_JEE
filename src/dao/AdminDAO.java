package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import beans.Utilisateur;

/**
 * The type Admin dao.
 */
public class AdminDAO {

	/**
	 * The constant sql.
	 */
// sql for prepared stmt
	static String sql    = "select *  from utilisateur ";
	/**
	 * The Sql 1.
	 */
	static String sql1   = "insert into utilisateur (pseudo, password) values (?,?)";
	/**
	 * The Sql 2.
	 */
	static String sql2   = "delete from utilisateur where id=? ";
	/**
	 * The Sql 2 2.
	 */
	static String sql2_2 = "delete from panier where id_utilisateur=? ";
	/**
	 * The Sql 3.
	 */
	static String sql3   = "delete from produit where id=?";
	/**
	 * The Sql 4.
	 */
	static String sql4   = "insert produit (nom, prix, des_prod) values (?,?,?)";
	/**
	 * The Sql 5.
	 */
	static String sql5   = "select * from utilisateur where id = ?";
	/**
	 * The Sql 6.
	 */
	static String sql6   = "update utilisateur set pseudo=?,password=?,role=? where id = ?";
	/**
	 * The Sql 7.
	 */
	static String sql7   = "update produit set nom=?,des_prod=?,prix=?,image=? where id = ?";


	/**
	 * The Sql 8.
	 */
	static String sql8   = "insert produit (nom, prix, des_prod,image) values (?,?,?,?)";


	// -------------------------------------------------

	/**
	 * Gets all users.
	 *
	 * @return the all users
	 */
	public static Collection<Utilisateur> getAllUsers() {
		// liste for all users
		ArrayList<Utilisateur> res = new ArrayList<>();

		// create connexion
		ConnexionBDD instance = ConnexionBDD.getInstance();
		Connection con = instance.getCnx();
		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			// filling the liste
			while (rs.next()) {
				Utilisateur tmp = new Utilisateur(rs.getInt("id"), rs.getString("pseudo"), rs.getString("password"),
						rs.getString("role"));
				
				if(!rs.getString("role").equals("admin"))
					res.add(tmp);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return res;
	}

	/**
	 * Add user boolean.
	 *
	 * @param pseudo the pseudo
	 * @param pass   the pass
	 * @return the boolean
	 */
	public static boolean addUser(String pseudo, String pass) {
		boolean b = false;

		// create connexion
		ConnexionBDD instance = ConnexionBDD.getInstance();
		Connection con = instance.getCnx();
		try {
			
			PreparedStatement stmt1 = null;
			stmt1 = con.prepareStatement(sql1);
			//
			stmt1.setString(1, pseudo);//pseudo de new user
			stmt1.setString(2, pass);//mdp de new user
			//
			stmt1.execute();
			b = true;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return b;
	}


	/**
	 * Delete user boolean.
	 *
	 * @param id the id
	 * @return the boolean
	 */
	public static boolean deleteUser(int id) {
		boolean b = false;

		// create connexion
		ConnexionBDD instance = ConnexionBDD.getInstance();
		Connection con = instance.getCnx();
		try {
			PreparedStatement stmt = null;
			PreparedStatement stmt2 = null;
			stmt = con.prepareStatement(sql2_2);
			stmt.setInt(1, id);
			stmt2 = con.prepareStatement(sql2);
			stmt2.setInt(1, id);
			
			//cas de FOREIGN KEY dans la table de pannier
			stmt.execute();
			stmt2.execute();
			b = true;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return b;
	}

	/**
	 * Delete produit boolean.
	 *
	 * @param id the id
	 * @return the boolean
	 */
	public static boolean deleteProduit(int id) {
		boolean b = false;

		// create connexion
		ConnexionBDD instance = ConnexionBDD.getInstance();
		Connection con = instance.getCnx();
		try {
			PreparedStatement stmt = null;
			stmt = con.prepareStatement(sql3);
			stmt.setInt(1, id);
			
			//cas de FOREIGN KEY dans la table de pannier
			stmt.execute();
			b = true;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return b;
	}

	/**
	 * Add produit boolean.
	 *
	 * @param nomProduit  the nom produit
	 * @param desProduit  the des produit
	 * @param prixProduit the prix produit
	 * @return the boolean
	 */
	public static boolean addProduit(String nomProduit, String desProduit, int prixProduit) {
		boolean b = false;

		// create connexion
		ConnexionBDD instance = ConnexionBDD.getInstance();
		Connection con = instance.getCnx();
		try {
			PreparedStatement stmt = null;
			stmt = con.prepareStatement(sql4);
			stmt.setString(1, nomProduit);
			stmt.setInt(2, prixProduit);
			stmt.setString(3, desProduit);
			
			stmt.execute();
			b = true;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return b;
	}

	/**
	 * Gets user.
	 *
	 * @param idUser the id user
	 * @return the user
	 */
	public static Utilisateur getUser(int idUser) {
		
        try {
            ConnexionBDD instance = ConnexionBDD.getInstance();
            Connection con = instance.getCnx();
            PreparedStatement stmt = null;
            stmt = con.prepareStatement(sql5);
            stmt.setInt(1, idUser);
            ResultSet rs = stmt.executeQuery();

            if(rs.next()){
            	Utilisateur u = new Utilisateur(rs.getInt("id"),rs.getString("pseudo"),
            			rs.getString("password"),rs.getString("role"));
                return u;
            }

        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
	}

	/**
	 * Update produit boolean.
	 *
	 * @param nomProd       the nom prod
	 * @param descProd      the desc prod
	 * @param prix          the prix
	 * @param image_produit the image produit
	 * @param id_prouit     the id prouit
	 * @return the boolean
	 */
	public static boolean updateProduit(String nomProd , String descProd, int prix,String image_produit, int id_prouit) {
		boolean b = false;

		// create connexion
		ConnexionBDD instance = ConnexionBDD.getInstance();
		Connection con = instance.getCnx();
		try {
			PreparedStatement stmt = null;
			stmt = con.prepareStatement(sql7);
			stmt.setString(1, nomProd);
			stmt.setString(2, descProd);
			stmt.setInt(3, prix);
			stmt.setString(4,image_produit);
			stmt.setInt(5, id_prouit);
			
			stmt.executeUpdate();
			b = true;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return b;
	}


	/**
	 * Update user boolean.
	 *
	 * @param pseudo  the pseudo
	 * @param pass    the pass
	 * @param role    the role
	 * @param id_user the id user
	 * @return the boolean
	 */
	public static boolean updateUser(String pseudo, String pass, String role, int id_user) {
		boolean b = false;

		// create connexion
		ConnexionBDD instance = ConnexionBDD.getInstance();
		Connection con = instance.getCnx();
		try {
			PreparedStatement stmt = null;
			stmt = con.prepareStatement(sql6);
			stmt.setString(1, pseudo);
			stmt.setString(2, pass);
			stmt.setString(3, role);
			stmt.setInt(4, id_user);

			stmt.executeUpdate();
			b = true;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return b;
	}

	/**
	 * Add produit boolean.
	 *
	 * @param nomProduit    the nom produit
	 * @param des_produit   the des produit
	 * @param prixProduit   the prix produit
	 * @param image_produit the image produit
	 * @return the boolean
	 */
	public static boolean addProduit(String nomProduit, String des_produit, int prixProduit, String image_produit) {

		boolean b = false;

		// create connexion
		ConnexionBDD instance = ConnexionBDD.getInstance();
		Connection con = instance.getCnx();
		try {
			PreparedStatement stmt = null;
			stmt = con.prepareStatement(sql8);
			stmt.setString(1, nomProduit);
			stmt.setInt(2, prixProduit);
			stmt.setString(3, des_produit);
			stmt.setString(4, image_produit);


			stmt.execute();
			b = true;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return b;
	}
}

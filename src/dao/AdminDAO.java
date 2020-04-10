package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import beans.Utilisateur;

public class AdminDAO {

	// sql for prepared stmt
	static String sql    = "select *  from utilisateur ";
	static String sql1   = "insert into utilisateur (id, pseudo, password) values (?,?,?)";
	static String sql2   = "delete from utilisateur where id=? ";
	static String sql2_2 = "delete from panier where id_utilisateur=? ";
	String sql3          = "update utilisateur set nom=?,password=?,role=? WHERE nom=? and role=?";

	// -------------------------------------------------

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

	public static boolean addUser(String pseudo, String pass) {
		boolean b = false;

		// create connexion
		ConnexionBDD instance = ConnexionBDD.getInstance();
		Connection con = instance.getCnx();
		try {
			PreparedStatement stmt = null;
			stmt = con.prepareStatement(sql1);
			stmt.setInt(1, 1);
			stmt.setString(2, pseudo);
			stmt.setString(3, pass);
			//
			stmt.execute();
			b = true;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return b;
	}

	
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

}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UserConnexion {

	String sql = "select *  from utilisateur  where pseudo=? and password=?";

	public ArrayList<String> checklogin(String pseudo, String pass) {
		//liste pour le retour d'info
		ArrayList<String> user = new ArrayList<String>();
		
		try {
			// getting the cnx
			Connection con = ConnexionBDD.getInstance().getCnx();
			//preparer le stmt
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, pseudo);
			stmt.setString(2, pass);

			//executer la requete
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				user.add(rs.getString(2));//pseudo
				user.add(rs.getString(3));//password
				user.add(rs.getString(4));//role
			} else {
				user.add("-1");
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return user;
	}

    public int getUserId(String pseudo, String pass) {
		int id =-1;
		try {
			// getting the cnx
			Connection con = ConnexionBDD.getInstance().getCnx();
			//preparer le stmt
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, pseudo);
			stmt.setString(2, pass);

			//executer la requete
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				id=rs.getInt("id");
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return id;
    }

	public String getPseudo(String pseudo, String pass) {
		String id ="";
		try {
			// getting the cnx
			Connection con = ConnexionBDD.getInstance().getCnx();
			//preparer le stmt
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, pseudo);
			stmt.setString(2, pass);

			//executer la requete
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				id=rs.getString("pseudo");
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return id;
	}
}

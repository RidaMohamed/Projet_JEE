package dao;

public class UtilisationAdmin {
	
	String sql  = "select *  from utilisateur ";
	String sql1 = "insert into utilisateur (id, pseudo, password) values (?,?,?)";
	String sql2 = "delete from utilisateur where nom=? and role='utlilisateur'";
	String sql3 = "update utilisateur set nom=?,password=?,role=? WHERE nom=? and role=?";

}

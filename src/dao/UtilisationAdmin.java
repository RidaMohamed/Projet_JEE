package dao;

/**
 * The type Utilisation admin.
 */
public class UtilisationAdmin {

    /**
     * The Sql.
     */
    String sql  = "select *  from utilisateur ";
    /**
     * The Sql 1.
     */
    String sql1 = "insert into utilisateur (id, pseudo, password) values (?,?,?)";
    /**
     * The Sql 2.
     */
    String sql2 = "delete from utilisateur where nom=? and role='utlilisateur'";
    /**
     * The Sql 3.
     */
    String sql3 = "update utilisateur set nom=?,password=?,role=? WHERE nom=? and role=?";

}

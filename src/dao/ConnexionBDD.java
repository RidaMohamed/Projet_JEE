package dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 * The type Connexion bdd.
 */
public class ConnexionBDD {

    private static volatile ConnexionBDD instance;
    private Connection cnx;

    private ConnexionBDD() {
        try {


            Properties p = new Properties();
            p.load(Thread.currentThread().getContextClassLoader().
                    getResourceAsStream("conf.properties"));



            // chargement du driver
            Class.forName(p.getProperty("driver"));
            cnx = DriverManager.getConnection(p.getProperty("url"),
                    p.getProperty("user"), p.getProperty("pwd"));


            //Class.forName("com.mysql.jdbc.Driver");
            //cnx=DriverManager.getConnection("jdbc:mysql://localhost:3306/formation","root","");

        } catch (SQLException e) {
            e.printStackTrace();
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Gets instance.
     *
     * @return the instance
     */
    public static synchronized ConnexionBDD getInstance() {
        if(instance==null)
            instance = new ConnexionBDD();

        return instance;
    }

    /**
     * Gets cnx.
     *
     * @return the cnx
     */
    public Connection getCnx() {
        return cnx;
    }

    /**
     * Close cnx.
     *
     * @throws SQLException the sql exception
     */
    public void closeCnx() throws SQLException{
        if(cnx!=null){
            cnx.close();
            instance=null;
        }
    }


}

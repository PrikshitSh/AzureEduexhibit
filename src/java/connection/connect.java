/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package connection;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;


/**
 *
 * @author Administrator
 */
public class connect {
    static Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public static Connection openConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eduexhibit", "root", "");


        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    public static void CloseConnection() throws Exception {

        if (con != null) {
            con.close();
        }

    }
   public static String getDate() {
        DateFormat dateFormat = new SimpleDateFormat(
                "yyyy-MM-dd");

        Calendar cal = Calendar.getInstance();

        return dateFormat.format(cal.getTime());// "11/03/14 12:33:43";
    }

    public static String getTime() {
        DateFormat dateFormat1 = new SimpleDateFormat(
                "HH:mm:ss");

        Calendar cal = Calendar.getInstance();

        return dateFormat1.format(cal.getTime());// "11/03/14 12:33:43";
    }
}

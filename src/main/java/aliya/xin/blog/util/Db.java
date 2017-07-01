package aliya.xin.blog.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by zhenya.1291813139.com
 * on 2017/7/1.
 * blog.
 */
public class Db {
    private static final String URL = "jdbc:mysql:///?user=root&password=system";
    public static Connection getConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(URL);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}

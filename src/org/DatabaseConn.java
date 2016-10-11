package org;

/**
 * Created by dell on 2016/9/16.
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.NamingException;
import javax.naming.ldap.ExtendedRequest;

import static java.lang.System.getenv;

public class DatabaseConn {
    private static Connection conn;

    public static Connection getConn() {
        return conn;
    }

    public static Connection getConnection() throws
            SQLException,NamingException{
        try {
            String url = String.format("jdbc:mysql://localhost:3306/bookdb");
            String username = "root";
            String password = "X951109asd";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection(url, username, password);
            System.out.println("成功");
        }
        catch(Exception e){
            System.out.println("失败");
            e.printStackTrace();
        }
        return conn;
    }
    public static void main (String[] args){
        DatabaseConn dbc = new DatabaseConn();
        try{
            dbc.getConnection();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

}

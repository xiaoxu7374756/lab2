package org;
import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;


/**
 * Created by dell on 2016/9/18.
 */
public class DBpool {
    private Connection conn;
        public void createConn() throws Exception{
            try{
                Context initCtx = new InitialContext();
                Context envCtx = (Context)initCtx.lookup("java:comp/env");
                DataSource ds = (DataSource)envCtx.lookup("jdbc/DBpool");
                conn = ds.getConnection();

            }
            catch (SQLException e){
                e.printStackTrace();
            }
        }
        public ResultSet excuteQuery(String sql) throws Exception
        {
            ResultSet rs = null;
            if (conn == null) createConn();
            try {
                Statement st = this.conn.createStatement();
                rs = st.executeQuery(sql);
            }catch (SQLException e)
            {
                e.printStackTrace();
            }
            return rs;
    }

}

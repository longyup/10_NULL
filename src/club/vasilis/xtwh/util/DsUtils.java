package club.vasilis.xtwh.util;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.junit.Test;

import javax.sql.DataSource;
import java.sql.*;
import java.util.UUID;

/**
 * @author Vasilis
 * @date 2019/3/14 -10:52
 */

public class DsUtils {
    private static DataSource ds;

    static {
        ds = new ComboPooledDataSource();
    }

    public static DataSource getDataSource(){
        return ds;
    }
    public static Connection getConnection() {
        Connection conn ;
        try {
            conn = ds.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return conn;

    }

    @Test
    public void test(){
       System.out.println(DsUtils.getConnection());
    }

   /* // 获取连接
    public static Connection getConnection() throws SQLException {
        String url = "jdbc:mysql://localhost:3306/xtwh_vasilis?useUnicode=true&characterEncoding=UTF8";
        String user = "root";
        String password = "123456";
        // 获取连接
        Connection connection = DriverManager.getConnection(url,user,password);
        return connection;
    }*/
  /*  //释放资源
    public static void closeResource(Connection conn, Statement statement, ResultSet rs){
        closeResultSet(rs);
        closeStatement(statement);
        closeConn(conn);
    }
*/
 /*   *//**
     * 释放连接
     * @param conn 连接
     *//*
    public static void closeConn(Connection conn){
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            conn = null;
        }
    }

    *//**
     * 释放语句执行者
     * @param st 语句执行者
     *//*
    public static void closeStatement(Statement st){
        if (st != null) {
            try {
                st.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            st = null;
        }
    }

    *//**
     * 释放结果集
     * @param rs 结果集
     *//*
    public static void closeResultSet(ResultSet rs){
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            rs = null;
        }
    }*/

    /**
     * 获得一个UUID
     * @return String UUID
     */
    public static String getUUID(){
        String uuid = UUID.randomUUID().toString();
        //去掉“-”符号
        return uuid.replaceAll("-", "");
    }

    /**
     * 随机生成随机码
     * @return
     */
    public static String getCode(){
        return getCode();
    }
}

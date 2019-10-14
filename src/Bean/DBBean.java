package Bean;
import java.sql.*;
public class DBBean {
    private String driverStr = "com.mysql.jdbc.Driver";
    private String connStr = "jdbc:mysql://localhost:3306/Thirteenwater";
    private String dbusername = "root";
    private String dbpassword = "root";
    private Connection conn = null;
    private Statement stmt = null;
    private PreparedStatement preparedStatement=null;

    public DBBean()
    {
        try
        {
            Class.forName(driverStr);
            conn = DriverManager.getConnection(connStr, dbusername, dbpassword);
            stmt = conn.createStatement();
        }
        catch (Exception ex) {
            System.out.println(ex.getMessage());
            System.out.println("数据连接失败！");
        }

    }

    public int executeUpdate(String s,String dbusername,String dbpassword) {
        int result = 0;

        System.out.println("--更新语句:"+s+"\n");
        try {
            preparedStatement=conn.prepareStatement(s);
            preparedStatement.setString(1,dbusername);
            preparedStatement.setString(2, dbpassword);
            result= preparedStatement.executeUpdate();
            System.out.println("执行更新语句成功！");
        } catch (Exception ex) {
            System.out.println("执行更新错误！");
        }
        return result;
    }

    public ResultSet executeQuery(String s) {
        ResultSet rs = null;
        System.out.print("--查询语句:"+s+"\n");
        try {
            rs = stmt.executeQuery(s);
        } catch (Exception ex) {
            System.out.println("执行查询错误！");
        }
        return rs;
    }
    public void execQuery(String s){
        try {
            stmt.executeUpdate(s);
        } catch (SQLException e) {

            System.out.println("执行插入错误！");
        }
    }

    public void close() {
        try {
            stmt.close();
            conn.close();
        } catch (Exception e) {
        }
    }
}
package Bean;


import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 操作数据库中User表的类
 */
public class UserDao {

    //声明JDBCTemplate对象共用
    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    /**
     * 登录方法
     * @param loginUser 只有用户名和密码
     * @return user包含用户全部数据,没有查询到，返回null
     */
    public boolean login(User loginUser){
        try {
            //1.编写sql
            String sql = "select * from user where username = ? and password = ?";
            String username = loginUser.getUsername();
            String password = loginUser.getPassword();
            Connection connection = JDBCUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,loginUser.getUsername());
            preparedStatement.setString(2, loginUser.getPassword());
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                return true;
            }else {
                return false;
            }
        } catch (DataAccessException | SQLException e) {
            e.printStackTrace();//记录日志
            return false;
        }
    }
    public boolean regist(User registUser) throws SQLException {
           String sql="select * from user where username=?";
           Connection connection = JDBCUtils.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql);
             preparedStatement.setString(1,registUser.getUsername());
            ResultSet resultSet = preparedStatement.executeQuery();
        if(resultSet.next()){
            return true;
        }else{
            String sql2="insert into user (username,password) values(?,?)";
            preparedStatement = connection.prepareStatement(sql2);
            preparedStatement.setString(1, registUser.getUsername());
            preparedStatement.setString(2,registUser.getPassword());
            int i = preparedStatement.executeUpdate();
        }
            return false;
    }


}


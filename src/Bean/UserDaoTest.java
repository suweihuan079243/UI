package Bean;

import org.junit.Test;


import java.sql.SQLException;

public class UserDaoTest {



    @Test
    public void testLogin(){
        User loginuser = new User();
        loginuser.setUsername("suweihuan");
        loginuser.setPassword("456");


        UserDao dao = new UserDao();
        boolean user = dao.login(loginuser);

        System.out.println(user);
    }
    @Test
    public void testRegist(){
        User registUser=new User();
        registUser.setUsername("1148318751");
        registUser.setPassword("123");
        UserDao userDao=new UserDao();
        boolean regist = Boolean.parseBoolean(null);
        try {
            regist = userDao.regist(registUser);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(regist);
    }
}

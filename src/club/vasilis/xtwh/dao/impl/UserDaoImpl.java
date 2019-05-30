package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.UserDao;
import club.vasilis.xtwh.domain.User;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.junit.Test;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/4/17 -9:30
 */

public class UserDaoImpl implements UserDao {


    @Override
    public User login(User user) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select * from user where account=? and password=? limit 1";
        user = runner.query(sql, new BeanHandler<User>(User.class),user.getAccount(),user.getPassword());
        return user;
    }

    @Override
    public List<User> queryAll() throws Exception {
        return null;
    }


    @Override
    public void save(User user) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "insert into user (account,password) values (?,?)";
        runner.insert(sql,new BeanHandler<User>(User.class),user.getAccount(),user.getPassword());


    }
    @Test
    public void Test() throws Exception {
        User user = new User();
        user.setAccount("lp6324");
        user.setPassword("wasdwe132~");
        user = login(user);
        System.out.println(user);
    }
}

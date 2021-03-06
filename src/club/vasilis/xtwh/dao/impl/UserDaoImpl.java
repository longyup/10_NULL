package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.UserDao;
import club.vasilis.xtwh.domain.User;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
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
        user = runner.query(sql, new BeanHandler<>(User.class),user.getAccount(),user.getPassword());
        return user;
    }

    @Override
    public List<User> queryAll() throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select * from user";
        List<User> userList = runner.query(sql,new BeanListHandler<>(User.class));
        return userList;
    }

    @Override
    public void save(User user) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "insert into user (UUID,account,password,headImg,nickName) values (?,?,?,?,?)";
//        runner.insert(sql,new BeanHandler<User>(User.class),user.getUUID(),user.getAccount(),user.getPassword());
        runner.update(sql,user.getUUID(),user.getAccount(),user.getPassword(),user.getHeadImg(),user.getNickName());
    }

    @Override
    public void motifyMsg(User user) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "update user set nickName='"+user.getNickName()+"',name='"+user.getName()+
                "',password='"+user.getPassword()+"',sex='"+user.getSex()+
                "',phone='"+user.getPhone()+"',e_mail='"+user.getE_mail()+
                "',birthday='"+user.getBirthday()+"',signature='"+user.getSignature()+
                "',localPlace='"+user.getLocalPlace()+"',idCard='"+user.getIdCard()+
                "' where account='"+user.getAccount()+"'";
        runner.update(sql,user.getNickName(),user.getName(),user.getPassword(),user.getSex(),user.getPhone(),user.getE_mail(),
                user.getBirthday(),user.getSignature(),user.getLocalPlace(),user.getIdCard());
    }


    @Test
    public void Test() throws Exception {
        User user = new User();
        user.setUUID("hjsfvhjsdfghjsdf");
        user.setAccount("lp6324");
        user.setPassword("wasdwe132~");
//        user = login(user);
        UserDao dao = new UserDaoImpl();
        dao.save(user);
        System.out.println(user);
//        System.out.println(new UserDaoImpl().queryAll());
    }
}

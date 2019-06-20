package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.UserDao;
import club.vasilis.xtwh.dao.impl.UserDaoImpl;
import club.vasilis.xtwh.domain.User;
import club.vasilis.xtwh.service.UserService;
import club.vasilis.xtwh.util.PasswordUtils;
import org.junit.Test;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/4/17 -12:42
 */

public class UserServiceImpl implements UserService {
    private UserDao dao = new UserDaoImpl();

    /**
     * web端注册
     * @param user
     * @return int 成功返回1，失败返回-1
     * @throws Exception
     */
    @Override
    public int registerUser(User user) throws Exception {
        List<User> userList = dao.queryAll();
        for (int i = 0; i < userList.size(); i++){
            if (user.getAccount().equals(userList.get(i).getAccount())){
                System.err.println("该用户名已注册！");
                return -1;
            }
        }

        dao.save(user);
        return 1;
    }

    /**
     * 用户登陆
     * @param user
     * @return
     * @throws Exception
     */
    @Override
    public User login(User user) throws Exception {
        // 此处加密
        String pwd = PasswordUtils.md5(user.getPassword(),user.getAccount());
        // 放回对象中
        user.setPassword(pwd);
        return dao.login(user);
    }

    /**
     * 保存用户信息
     * @param user
     * @throws Exception
     */
    @Override
    public void save(User user) throws Exception {
        //此处md5的加密
        String pwd = PasswordUtils.md5(user.getPassword(),user.getAccount());
        //将密文，放回对象中
        user.setPassword(pwd);
        if (user.getNickName() == null || "".equals(user.getNickName())){
            user.setNickName(user.getAccount());
        }
        if (user.getHeadImg() == null || "".equals(user.getHeadImg())){
            user.setHeadImg("images/head/3973881764.jpg");
        }
        //实例化dao
        UserDao dao = new UserDaoImpl();
        //调dao来保存
        dao.save(user);
    }

    /**
     * 安卓端修改个人信息
     * @param user
     * @throws Exception
     */
    @Override
    public void motify(User user) throws Exception {
        //此处md5的加密
        String pwd = PasswordUtils.md5(user.getPassword(),user.getAccount());
        //将密文，放回对象中
        user.setPassword(pwd);
        //实例化dao
        UserDao dao = new UserDaoImpl();
        //调用motify()方法保存修改
        dao.motifyMsg(user);
    }


    @Test
    public void Test() throws Exception {
        User user = new User();
        user.setUUID("uuid123456");
        user.setAccount("admin");
        user.setPassword("1234");
//        user = login(user);
        new UserServiceImpl().save(user);
        System.out.println(user);
    }
}

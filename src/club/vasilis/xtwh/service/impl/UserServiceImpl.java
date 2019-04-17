package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.UserDao;
import club.vasilis.xtwh.dao.impl.UserDaoImpl;
import club.vasilis.xtwh.domain.User;
import club.vasilis.xtwh.service.UserService;
import club.vasilis.xtwh.util.PasswordUtils;
import org.junit.Test;

/**
 * @author Vasilis
 * @date 2019/4/17 -12:42
 */

public class UserServiceImpl implements UserService {
    private UserDao dao = new UserDaoImpl();
    @Override
    public User login(User user) throws Exception {
        // 此处加密
        String pwd = PasswordUtils.md5(user.getPassword(),user.getAccount());
        // 放回对象中
        user.setPassword(pwd);
        return dao.login(user);
    }

    @Override
    public void save(User user) throws Exception {

    }


    @Test
    public void Test() throws Exception {
        User user = new User();
        user.setAccount("lp63247");
        user.setPassword("wasdwe132~");
        user = login(user);
        System.out.println(user);
    }
}

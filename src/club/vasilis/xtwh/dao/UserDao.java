package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.User;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/4/17 -9:28
 */

public interface UserDao {

    User login(User user) throws Exception;

    List<User> queryAll() throws Exception;

    void save(User user) throws Exception;
}

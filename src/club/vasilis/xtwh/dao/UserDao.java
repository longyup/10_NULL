package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.User;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/4/17 -9:28
 */

public interface UserDao {

    /**
     * 用户登录
     * @param user
     * @return
     * @throws Exception
     */
    User login(User user) throws Exception;

    /**
     * 查询所有的用户及其信息
     * @return
     * @throws Exception
     */
    List<User> queryAll() throws Exception;

    /**
     * 保存用户信息
     * @param user
     * @throws Exception
     */
    void save(User user) throws Exception;

    /**
     * 修改个人信息
     * @param user
     * @throws Exception
     */
    void motifyMsg(User user) throws Exception;
}

package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.User;

/**
 * @author Vasilis
 * @date 2019/4/17 -12:41
 */

public interface UserService {

    /**
     * 提供注册服务
     * @param user
     * @throws Exception
     */
    int registerUser(User user) throws Exception;

    /**
     * 提供登录服务
     * @param user
     * @return
     * @throws Exception
     */
    User login(User user) throws Exception;

    /**
     * 保存用户信息
     * @param user
     * @throws Exception
     */
    void save(User user) throws Exception;

    /**
     * 安卓端修改个人信息
     * @param user
     * @throws Exception
     */
    void motify(User user) throws Exception;
}

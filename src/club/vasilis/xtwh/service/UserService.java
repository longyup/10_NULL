package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.Admin;
import club.vasilis.xtwh.domain.User;

/**
 * @author Vasilis
 * @date 2019/4/17 -12:41
 */

public interface UserService {
    User login(User user) throws Exception;

    /**
     * 加密并保存数据
     * @param admin
     * @throws Exception
     */
    public void save(Admin admin) throws Exception;
}

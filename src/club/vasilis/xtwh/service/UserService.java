package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.User;

/**
 * @author Vasilis
 * @date 2019/4/17 -12:41
 */

public interface UserService {
    User login(User user) throws Exception;


    void save(User user) throws Exception;
}

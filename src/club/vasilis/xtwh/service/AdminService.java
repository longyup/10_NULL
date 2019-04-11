package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.Admin;

/**
 * @author Vasilis
 * @date 2019/3/22 -9:16
 */

public interface AdminService {
    public Admin login(Admin admin) throws Exception;

    /**
     * 加密并保存数据
     * @param admin
     * @throws Exception
     */
    public void save(Admin admin) throws Exception;
}

package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.Admin;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/3/21 -11:28
 */

public interface AdminDao {

    public Admin login(Admin admin) throws Exception;

    public List<Admin> queryAll() throws Exception;

    public void save(Admin admin) throws Exception;
}

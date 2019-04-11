package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.AdminDao;
import club.vasilis.xtwh.dao.impl.AdminDaoImpl;
import club.vasilis.xtwh.domain.Admin;
import club.vasilis.xtwh.service.AdminService;
import club.vasilis.xtwh.util.PasswordUtils;
import org.junit.Test;

/**
 * @author Vasilis
 * @date 2019/3/22 -9:17
 */

public class AdminServiceImpl implements AdminService {
    private AdminDao dao = new AdminDaoImpl();


    @Override
    public Admin login(Admin admin) throws Exception {
        // 此处加密
        String pwd = PasswordUtils.md5(admin.getPassword(),admin.getName());
        // 放回对象中
        admin.setPassword(pwd);
        return dao.login(admin);
    }

    @Override
    public void save(Admin admin) throws Exception {
        // 此处加密
        String pwd = PasswordUtils.md5(admin.getPassword(),admin.getName());
        // 放回对象中
        admin.setPassword(pwd);
        // 调dao来保存
        dao.save(admin);
    }

    @Test
    public void test01() throws Exception {
       AdminService service =  new AdminServiceImpl();
        Admin admin = new Admin();
        admin.setName("admin");
        admin.setPassword("123456");
        System.out.println(service.login(admin));
    }
    @Test
    public void test2() throws Exception {
        AdminService service = new AdminServiceImpl();
        Admin admin = new Admin();
        admin.setName("vasilis");
        admin.setPassword("123123");
        admin.setLimits(2);
        service.save(admin);
    }
}

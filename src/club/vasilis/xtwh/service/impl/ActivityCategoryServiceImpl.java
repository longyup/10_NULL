package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.ActivityCategoryDao;
import club.vasilis.xtwh.dao.impl.ActivityCategoryDaoImpl;
import club.vasilis.xtwh.domain.ActivityCategory;
import club.vasilis.xtwh.service.ActivityCategoryService;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Vasilis
 * @date 2019/5/12 -22:15
 */

public class ActivityCategoryServiceImpl implements ActivityCategoryService {
    @Override
    public List<ActivityCategory> findActivityCategoryAll() throws SQLException {
        ActivityCategoryDao dao = new ActivityCategoryDaoImpl();
        return dao.findActivityCatefory();
    }

    @Test
    public void test() throws SQLException {
        System.out.println(new ActivityCategoryDaoImpl().findActivityCatefory());
    }

}

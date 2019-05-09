package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.ActivityCategoryDao;
import club.vasilis.xtwh.domain.Activity;
import club.vasilis.xtwh.domain.ActivityCategory;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

public class ActivityCategoryDaoImpl implements ActivityCategoryDao {
    @Override
    public List<ActivityCategory> findActivityCatefory() throws SQLException {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name from activity_category";
        return runner.query(sql,new BeanListHandler<ActivityCategory>(ActivityCategory.class));
    }

    @Test
    public void test() throws SQLException {
        System.out.println(new ActivityCategoryDaoImpl().findActivityCatefory());
    }
}

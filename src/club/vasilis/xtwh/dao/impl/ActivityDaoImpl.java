package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.ActivityDao;
import club.vasilis.xtwh.domain.Activity;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

public class ActivityDaoImpl implements ActivityDao {
    @Override
    public List<Activity> findActivityAll() throws SQLException {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name,info,LaunchTime,StartTime,img from activity";
        List<Activity> list = runner.query(sql,new BeanListHandler<Activity>(Activity.class));
        return list;
    }

    @Test
    public void test() throws SQLException {
        System.out.println(new ActivityDaoImpl().findActivityAll());
    }
}

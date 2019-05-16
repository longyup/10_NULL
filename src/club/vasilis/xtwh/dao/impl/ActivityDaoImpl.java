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
        String sql = "select id,name,info,LaunchTime,StartTime,img,typeId from activity";
        List<Activity> list = runner.query(sql,new BeanListHandler<Activity>(Activity.class));
        return list;
    }

    @Override
    public List<Activity> findActivityByType(String typeId) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "SELECT id,name,info,LaunchTime,StartTime,img,typeId FROM activity WHERE typeId = ?";

        return runner.query(sql,new BeanListHandler<>(Activity.class),typeId);
    }

    @Test
    public void test() throws Exception {
        System.out.println(new ActivityDaoImpl().findActivityAll());
        System.out.println(new ActivityDaoImpl().findActivityByType("T001"));
    }
}

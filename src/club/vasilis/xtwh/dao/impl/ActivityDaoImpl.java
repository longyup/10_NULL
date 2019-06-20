package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.ActivityDao;
import club.vasilis.xtwh.domain.Activity;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class ActivityDaoImpl implements ActivityDao {


    @Override
    public List<Activity> findActivityAll() throws SQLException {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name,info,LaunchTime,StartTime,img,typeId from activity";
        List<Activity> list = runner.query(sql,new BeanListHandler<>(Activity.class));
        return list;
    }

    @Override
    public List<Activity> findActivityByType(String typeId) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "SELECT id,name,info,LaunchTime,StartTime,img,typeId FROM activity WHERE typeId = ?";

        return runner.query(sql,new BeanListHandler<>(Activity.class),typeId);
    }

    @Override
    public Activity showDetails(String id) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "SELECT id,name,info,LaunchTime,StartTime,img,typeId FROM activity WHERE id = ?";
        return runner.query(sql,new BeanHandler<>(Activity.class),id);
    }

    @Override
    public void save(Activity activity) throws SQLException {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "insert into activity(id,name,info,StartTime) values(?,?,?,?)";
        Object[] parms = {activity.getId(),activity.getName(),activity.getInfo(),activity.getStartTime()};
        System.out.println("有访问到DAO吗？");
        runner.update(sql,parms);
    }

    @Override
    public Activity getActivityById(String id) throws SQLException {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "SELECT id,name,info,LaunchTime,StartTime,img,typeId FROM activity WHERE id = ?";
        return runner.query(sql,new BeanHandler<>(Activity.class),id);
    }

    @Override
    public int updateActivity(Activity activity) throws SQLException {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "update activity set name =?,info =?where id=?";
        return runner.update(sql,activity.getName(),activity.getInfo(),activity.getId());
    }

    @Override
    public void deleteActivityById(String id) throws SQLException {
            QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
            String sql = "delete FROM activity WHERE id = ?";
            System.out.println("有删除到DAO吗？");
            runner.update(sql,id);

    }


    @Test
    public void test() throws Exception {
//        System.out.println(new ActivityDaoImpl().findActivityAll());
//        System.out.println(new ActivityDaoImpl().findActivityByType("T001"));
//        System.out.println(new ActivityDaoImpl().showDetails("G001"));
    }
}

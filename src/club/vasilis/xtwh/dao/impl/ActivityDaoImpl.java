package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.ActivityDao;
import club.vasilis.xtwh.domain.Activity;
import club.vasilis.xtwh.domain.Admin;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class ActivityDaoImpl implements ActivityDao {


    @Override
    public Activity show(Activity activity) throws SQLException {
        //声明QueryRunner对象
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        //查询并封装
        String sql = "SELECT activityId,activityName,StartTime,EndTime,Place FROM activities ORDER BY activityId DESC";
        activity = runner.query(sql,new BeanHandler<Activity>(Activity.class),
                activity.getActivityId(),
                activity.getActivityName(),
                activity.getStartTime(),
                activity.getEndTime(),
                activity.getPlace());

        return activity;
    }

    @Override
    public List<Activity> queryAll() throws SQLException {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select * from activities";
        List<Activity> activityList = runner.query(sql,new BeanListHandler<Activity>(Activity.class));

        return activityList;
    }

    @Override
    public void save(Activity activity) {

    }
}

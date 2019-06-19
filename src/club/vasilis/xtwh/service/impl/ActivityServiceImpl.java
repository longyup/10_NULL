package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.ActivityDao;
import club.vasilis.xtwh.dao.impl.ActivityDaoImpl;
import club.vasilis.xtwh.domain.Activity;
import club.vasilis.xtwh.service.ActivityService;
import net.sf.json.JSONArray;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Vasilis
 * @date 2019/5/12 -22:15
 */

public class ActivityServiceImpl implements ActivityService {
    @Override
    public List<Activity> findActivityAll() throws SQLException {
        ActivityDao dao = new ActivityDaoImpl();


        return dao.findActivityAll();
    }

    @Override
    public String findActivityByTypeJson(String typeId) throws Exception {
        ActivityDao dao = new ActivityDaoImpl();
        List<Activity> list = dao.findActivityByType(typeId);
        return JSONArray.fromObject(list).toString();
    }

    @Override
    public Activity showDetails(String id) throws Exception {
        ActivityDao dao = new ActivityDaoImpl();

        return dao.showDetails(id);
    }

    @Override
    public String getJsonActivityAll() throws SQLException {
        ActivityDao dao = new ActivityDaoImpl();
        List<Activity> list = dao.findActivityAll();

        return JSONArray.fromObject(list).toString();
    }

    @Override
    public void sava(Activity activity) throws SQLException {
        new ActivityDaoImpl().save(activity);
    }

    @Override
    public Activity getActivityById(String id) throws SQLException {
        return new ActivityDaoImpl().getActivityById(id);
    }

    @Override
    public int updateActivity(Activity activity) throws SQLException {
        return new ActivityDaoImpl().updateActivity(activity);
    }

    @Override
    public void deleteActivityById(String id) throws SQLException {
        new ActivityDaoImpl().deleteActivityById(id);
        System.out.println("有删除到serviceimpl吗？");
    }


    @Test
    public void test() throws Exception {
//        System.out.println(new ActivityServiceImpl().findActivityAll());
        System.out.println(new ActivityServiceImpl().getJsonActivityAll());
        System.out.println(new ActivityServiceImpl().getActivityById("G001"));
    }

}

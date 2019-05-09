package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.ActivityDao;
import club.vasilis.xtwh.dao.impl.ActivityDaoImpl;
import club.vasilis.xtwh.domain.Activity;
import club.vasilis.xtwh.service.ActivityService;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

public class ActivityServiceImpl implements ActivityService {
    @Override
    public List<Activity> findActivityAll() throws SQLException {
        ActivityDao dao = new ActivityDaoImpl();


        return dao.findActivityAll();
    }

    @Test
    public void test() throws SQLException {
        System.out.println(new ActivityServiceImpl().findActivityAll());

    }
}

package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.Activity;


import java.sql.SQLException;
import java.util.List;

public interface ActivityDao {

    public List<Activity> findData() throws SQLException;
}

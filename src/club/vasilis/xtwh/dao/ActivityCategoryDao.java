package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.ActivityCategory;

import java.sql.SQLException;
import java.util.List;

public interface ActivityCategoryDao {

    public List<ActivityCategory> findActivityCatefory() throws SQLException;
}

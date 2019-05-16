package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.ActivityCategory;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Vasilis
 * @date 2019/5/12 -18:26
 */

public interface ActivityCategoryDao {

    List<ActivityCategory> findActivityCatefory() throws SQLException;


}

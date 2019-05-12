package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.ActivityCategory;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Vasilis
 * @date 2019/5/12 -22:14
 */

public interface ActivityCategoryService {
    List<ActivityCategory> findActivityCategoryAll() throws SQLException;


}

package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.ActivityCategory;

import java.sql.SQLException;
import java.util.List;

public interface ActivityCategoryService {
    List<ActivityCategory> findActivityCategoryAll() throws SQLException;
}

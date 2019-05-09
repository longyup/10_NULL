package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.Activity;

import java.sql.SQLException;
import java.util.List;

public interface ActivityService {
    List<Activity> findActivityAll() throws SQLException;
}

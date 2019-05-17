package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.Activity;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Vasilis
 * @date 2019/5/12 -22:15
 */

public interface ActivityService {
    List<Activity> findActivityAll() throws SQLException;

    /**
     * 根据分类显示，并转成json
     * @return
     * @throws Exception
     */
    String findActivityByTypeJson(String typeId) throws Exception;


    /**
     * 点击进入详情信息
     * @param id
     * @return
     * @throws Exception
     */
    Activity showDetails(String id) throws Exception;
}

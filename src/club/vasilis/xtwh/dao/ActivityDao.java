package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.Activity;
import club.vasilis.xtwh.domain.ActivityCategory;
import club.vasilis.xtwh.domain.NativeProduct;

import java.sql.SQLException;
import java.util.List;

public interface ActivityDao {

    List<Activity> findActivityAll() throws SQLException;

    /**
     * 根据分类找信息
     * @return
     * @throws Exception
     */
    List<Activity> findActivityByType(String typeId) throws Exception;


    /**
     * 点击进入详情信息
     * @param id
     * @return
     * @throws Exception
     */
    Activity showDetails(String id) throws Exception;
}

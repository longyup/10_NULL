package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.CultureSites;

import java.sql.SQLException;
import java.util.List;

/**
 * @author ZhuZhiXin
 * @create 2019-04-26 9:30
 */
public interface CultureSitesDao {
    /**
     * 首页
     * @return
     * @throws SQLException
     */
    List<CultureSites> findCultrueSites() throws SQLException;

    /**
     * 分栏下全部的展示
     * @return
     * @throws Exception
     */
    List<CultureSites> findAllCultureSites() throws Exception;

}

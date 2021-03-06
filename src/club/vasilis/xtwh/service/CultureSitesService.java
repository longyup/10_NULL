package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.CultureSites;

import java.sql.SQLException;
import java.util.List;

/**
 * @author ZhuZhiXin
 * @create 2019-04-26 9:53
 */
public interface CultureSitesService {
    /**
     * 对list封装成json数据
     * @return
     * @throws SQLException
     */
    String getJsonCultrueSites()throws SQLException;

    /**
     * 分栏页全部信息的显示
     * @return
     * @throws Exception
     */
    List<CultureSites> findAllCultureSites() throws Exception;

    /**
     * 根据分类刷新列表，并转成json
     * @return
     * @throws Exception
     */
    String findCultureSitesByTypeJson(String typeId) throws Exception;

    /**
     * 点击进入详情信息
     * @param id
     * @return
     * @throws Exception
     */
    CultureSites showDetails(String id) throws Exception;
}

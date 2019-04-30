package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.CultureSites;

import java.sql.SQLException;
import java.util.List;

/**
 * @author ZhuZhiXin
 * @create 2019-04-26 9:30
 */
public interface CultureSitesDao {
    public List<CultureSites> findCultrueSites() throws SQLException;
}

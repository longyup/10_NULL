package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.CultureSitesDao;
import club.vasilis.xtwh.dao.impl.CultureSitesDaoImpl;
import club.vasilis.xtwh.domain.CultureSites;
import club.vasilis.xtwh.service.CultureSitesService;
import net.sf.json.JSONArray;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

/**
 * @author ZhuZhiXin
 * @create 2019-04-26 9:57
 */
public class CultureSitesServiceImpl implements CultureSitesService {
    @Override
    public String getJsonCultrueSites() throws SQLException {
        CultureSitesDao dao = new CultureSitesDaoImpl();
        dao.findCultrueSites();
        List<CultureSites> list = dao.findCultrueSites();

        return JSONArray.fromObject(list).toString();

    }

    @Test
    public void test() throws SQLException{
        System.err.println(new CultureSitesServiceImpl().getJsonCultrueSites());
    }

}

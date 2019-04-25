package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.CultureNewsDao;
import club.vasilis.xtwh.dao.impl.CultrueNewsDaoImpl;
import club.vasilis.xtwh.domain.CultrueNews;
import club.vasilis.xtwh.service.CultureNewsService;
import net.sf.json.JSONArray;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author 石志林
 * @date
 */
public class CultureNewsServiceImpl implements CultureNewsService {
    @Override
    public String getJsonCultrueNews() throws SQLException {
        CultureNewsDao dao = new CultrueNewsDaoImpl();
        dao.findCultrueNews();
        List<CultrueNews> list = dao.findCultrueNews();

        return JSONArray.fromObject(list).toString();
    }

    @Test
    public void test() throws SQLException {
        System.err.println(new CultureNewsServiceImpl().getJsonCultrueNews());
    }
}

package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.CultureSitesDao;
import club.vasilis.xtwh.domain.CultrueNews;
import club.vasilis.xtwh.domain.CultureSites;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

/**
 * @author ZhuZhiXin
 * @create 2019-04-26 9:41
 */
public class CultureSitesDaoImpl implements CultureSitesDao {
    @Override
    public List<CultureSites> findCultrueSites() throws SQLException {
        String sql = "SELECT * FROM culture_sites";
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        List<CultureSites> list = runner.query(sql,new BeanListHandler<CultureSites>(CultureSites.class));
        return list;
    }

    @Test
    public void test() throws SQLException{
        System.err.println(new CultureSitesDaoImpl().findCultrueSites());
    }

}

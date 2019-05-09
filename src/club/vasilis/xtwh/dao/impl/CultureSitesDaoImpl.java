package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.CultureSitesDao;
import club.vasilis.xtwh.domain.CultrueNews;
import club.vasilis.xtwh.domain.CultureSites;
import club.vasilis.xtwh.domain.NativeProduct;
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
    /**
     * 用于首页
     * @return
     * @throws SQLException
     */
    @Override
    public List<CultureSites> findCultrueSites() throws SQLException {
        String sql = "SELECT * FROM culture_sites";
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        List<CultureSites> list = runner.query(sql,new BeanListHandler<CultureSites>(CultureSites.class));
        return list;
    }

    /**
     * 用于分页
     * @return
     * @throws Exception
     */
    @Override
    public List<CultureSites> findAllCultureSites() throws Exception {
        String sql = "SELECT * FROM culture_sites";
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        List<CultureSites> query = runner.query(sql,new BeanListHandler<CultureSites>(CultureSites.class));
        return query;
    }

    @Test
    public void test() throws SQLException{
        System.err.println(new CultureSitesDaoImpl().findCultrueSites());
    }

}

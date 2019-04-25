package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.CultureNewsDao;
import club.vasilis.xtwh.domain.CultrueNews;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 石志林
 * @date
 */
public class CultrueNewsDaoImpl implements CultureNewsDao {
    @Override
    public List<CultrueNews> findCultrueNews() throws SQLException {
        String sql = "SELECT * FROM culture_news";
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        List<CultrueNews> list = runner.query(sql, new  BeanListHandler<CultrueNews>(CultrueNews.class));
        return list;
    }

    @Test
    public void test() throws SQLException {
        System.err.println(new CultrueNewsDaoImpl().findCultrueNews());

    }
}

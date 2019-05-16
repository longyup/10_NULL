package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.XtwhIntroductionDao;
import club.vasilis.xtwh.domain.XtwhIntrocution;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

public class XtwhIntroductionImpl implements XtwhIntroductionDao {
    @Override
    public List<XtwhIntrocution> getIntroduction() throws SQLException {
        String sql = "select * from xtwh_introduce";
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        List<XtwhIntrocution> list = runner.query(sql,new BeanListHandler<XtwhIntrocution>(XtwhIntrocution.class));
        return list;
    }

    @Test
    public void test() throws SQLException {
        System.err.println(new XtwhIntroductionImpl().getIntroduction());
    }
}

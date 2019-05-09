package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.FolkCustomDao;
import club.vasilis.xtwh.domain.FolkCustom;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.util.List;

public class FolkCustomDaoImpl implements FolkCustomDao {
    @Override
    public List<FolkCustom> customMenu() throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name from folk_custom_menu";
        List<FolkCustom> query = runner.query(sql, new BeanListHandler<FolkCustom>(FolkCustom.class));
        return query;
    }

    @Override
    public List<FolkCustom> customPassage() throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name,name,img,brief,onlinetime,typeid from folk_custom_menu ORDER BY onlinetime DESC";
        List<FolkCustom> query = runner.query(sql, new BeanListHandler<FolkCustom>(FolkCustom.class));
        return query;
    }
}

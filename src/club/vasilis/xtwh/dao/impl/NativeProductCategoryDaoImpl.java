package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.NativeProductCategoryDao;
import club.vasilis.xtwh.domain.NativeProductCategory;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/5/8 -18:17
 */

public class NativeProductCategoryDaoImpl implements NativeProductCategoryDao {
    @Override
    public List<NativeProductCategory> findAllCategory() throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name from native_product_category";
        List<NativeProductCategory> query = runner.query(sql, new BeanListHandler<NativeProductCategory>(NativeProductCategory.class));
        return query;
    }

}

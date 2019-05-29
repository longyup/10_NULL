package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.NativeProductDao;
import club.vasilis.xtwh.domain.NativeProduct;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/4/25 -21:19
 */

public class NativeProductDaoImpl implements NativeProductDao {
    @Override
    public List<NativeProduct> findFiveindex() throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name,img,brief,onlinetime,typeid from native_product limit 5";
        List<NativeProduct> query = runner.query(sql, new BeanListHandler<NativeProduct>(NativeProduct.class));

        return query;
    }

    @Override
    public List<NativeProduct> findAllProduct() throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name,img,onlinetime from native_product  ORDER BY onlinetime DESC";
        List<NativeProduct> query = runner.query(sql, new BeanListHandler<NativeProduct>(NativeProduct.class));
        return query;
    }

    @Override
    public List<NativeProduct> findProductByType(String typeId) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name,img,onlinetime from native_product WHERE typeid = ? ORDER BY onlinetime DESC ";
        List<NativeProduct> query = runner.query(sql, new BeanListHandler<NativeProduct>(NativeProduct.class),typeId);
        return query;
    }

    @Override
    public NativeProduct showDetails(String id) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name,img,brief,onlinetime from native_product WHERE id = ?";
        NativeProduct query = runner.query(sql, new BeanHandler<>(NativeProduct.class),id);
        return query;

    }


    @Test
    public void test() throws  Exception{
        System.out.println(new NativeProductDaoImpl().showDetails("G001"));

    }
}

package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.FolkCustomDao;
import club.vasilis.xtwh.domain.FolkCustom;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

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
        String sql = "select id,name,img,onlinetime,typeid,details from folk_custom_passage";
        List<FolkCustom> query = runner.query(sql, new BeanListHandler<FolkCustom>(FolkCustom.class));
        return query;
    }

    @Override
    public List<FolkCustom> customMenuDetails(String typeId) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name,name,img,onlinetime,typeid,details from folk_custom_passage WHERE typeid = ? ORDER BY onlinetime DESC";
        List<FolkCustom> query = runner.query(sql, new BeanListHandler<FolkCustom>(FolkCustom.class),typeId);
        return query;
    }

    @Override
    public FolkCustom customPassageDetails(String id) throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name,img,onlinetime,typeid,details from folk_custom_passage WHERE id = ?";
        FolkCustom query = runner.query(sql,new BeanHandler<>(FolkCustom.class),id);
        return query;
    }

    @Test
    public void test() throws Exception {
        System.out.println(new FolkCustomDaoImpl().customPassageDetails("1"));
        System.out.println(new FolkCustomDaoImpl().customMenuDetails("cus001"));
    }
}

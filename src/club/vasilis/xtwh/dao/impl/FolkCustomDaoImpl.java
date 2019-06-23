package club.vasilis.xtwh.dao.impl;

import club.vasilis.xtwh.dao.FolkCustomDao;
import club.vasilis.xtwh.domain.Activity;
import club.vasilis.xtwh.domain.FolkCustom;
import club.vasilis.xtwh.util.DsUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

import java.sql.SQLException;
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

    @Override
    public List<FolkCustom> customAllJson() throws Exception {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name,img,onlinetime,typeid,details from folk_custom_passage";
        List<FolkCustom> query = runner.query(sql, new BeanListHandler<FolkCustom>(FolkCustom.class));
        return query;
    }

    @Override
    public List<FolkCustom> findAllCustoms() throws SQLException {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name,img,onlinetime,typeid,details from folk_custom_passage";
        return runner.query(sql,new BeanListHandler<>(FolkCustom.class));
    }

    @Override
    public void deleteCustom(String id) throws SQLException {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "delete FROM folk_custom_passage WHERE id = ?";
        runner.update(sql,id);
    }

    @Override
    public void save(FolkCustom folkCustom) throws SQLException {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "insert into folk_custom_passage(id,name,onlinetime,details) values(?,?,?,?)";
        Object[] parms = {folkCustom.getId(),folkCustom.getName(),folkCustom.getOnlinetime(),folkCustom.getDetails()};
        System.out.println("有访问到DAO吗？");
        runner.update(sql,parms);
    }

    @Override
    public FolkCustom getCustomById(String id) throws SQLException {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "select id,name,img,onlinetime,typeid,details from folk_custom_passage WHERE id = ?";
        return runner.query(sql,new BeanHandler<>(FolkCustom.class),id);
    }

    @Override
    public int updateCustom(FolkCustom folkCustom) throws SQLException {
        QueryRunner runner = new QueryRunner(DsUtils.getDataSource());
        String sql = "update folk_custom_passage set name =?,details =? where id=?";
        System.out.println("这里访问到了吗？");
        return runner.update(sql,folkCustom.getName(),folkCustom.getDetails(),folkCustom.getId());

    }

    @Test
    public void test() throws Exception {
//        System.out.println(new FolkCustomDaoImpl().customPassageDetails("1"));
//        System.out.println(new FolkCustomDaoImpl().customMenuDetails("cus001"));
        FolkCustom folkCustom = new FolkCustom();
        folkCustom.setId(2);
        folkCustom.setName("123456");
        folkCustom.setDetails("5555555555555555555");
        System.out.println(new FolkCustomDaoImpl().updateCustom(folkCustom));
//        System.err.println(new FolkCustomDaoImpl().customAllJson());
    }
}

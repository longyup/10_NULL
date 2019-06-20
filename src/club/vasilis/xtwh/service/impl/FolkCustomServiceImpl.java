package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.FolkCustomDao;
import club.vasilis.xtwh.dao.impl.FolkCustomDaoImpl;
import club.vasilis.xtwh.domain.FolkCustom;
import club.vasilis.xtwh.service.FolkCustomService;
import net.sf.json.JSONArray;
import org.junit.Test;

import java.sql.SQLException;
import java.util.List;

public class FolkCustomServiceImpl implements FolkCustomService {
    @Override
    public List<FolkCustom> customMenu() throws Exception {
        FolkCustomDao dao = new FolkCustomDaoImpl();
        return dao.customMenu();
    }

    @Override
    public List<FolkCustom> customPassage() throws Exception {
        FolkCustomDao dao = new FolkCustomDaoImpl();
        return dao.customPassage();
    }

    @Override
    public String cusMenuDetailsJson(String typeId) throws Exception {
        FolkCustomDao dao = new FolkCustomDaoImpl();
        List<FolkCustom> list = dao.customMenuDetails(typeId);
        return JSONArray.fromObject(list).toString();
    }

    @Override
    public FolkCustom customPassageDetailsShow(String id) throws Exception {
        FolkCustomDao dao = new FolkCustomDaoImpl();
        return dao.customPassageDetails(id);
    }

    @Override
    public String customFindAllJson() throws Exception {
        FolkCustomDao dao = new FolkCustomDaoImpl();
        List<FolkCustom> list = dao.customAllJson();
        return JSONArray.fromObject(list).toString();
    }

    @Override
    public List<FolkCustom> findAllCustoms() throws SQLException {
        return new FolkCustomDaoImpl().findAllCustoms();
    }

    @Override
    public void deletecustom(String id) throws SQLException {
        new FolkCustomDaoImpl().deletecustom(id);
    }

    @Override
    public void sava(FolkCustom folkCustom) throws SQLException {
        new FolkCustomDaoImpl().save(folkCustom);
    }

    @Override
    public FolkCustom getcustomById(String id) throws SQLException {
        return new FolkCustomDaoImpl().getcustomById(id);
    }

    @Override
    public int updateCustom(FolkCustom folkCustom) throws SQLException {
        return new FolkCustomDaoImpl().updateCustom(folkCustom);
    }

    @Test
    public void test() throws Exception {
        System.err.println(new FolkCustomServiceImpl().customFindAllJson());
    }
}

package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.FolkCustomDao;
import club.vasilis.xtwh.dao.impl.FolkCustomDaoImpl;
import club.vasilis.xtwh.domain.FolkCustom;
import club.vasilis.xtwh.service.FolkCustomService;
import org.junit.Test;

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

    @Test
    public void test() throws Exception {
        System.err.println(new FolkCustomServiceImpl().customPassage());
    }
}

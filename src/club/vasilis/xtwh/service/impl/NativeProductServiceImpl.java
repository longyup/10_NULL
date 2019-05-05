package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.NativeProductDao;
import club.vasilis.xtwh.dao.impl.NativeProductDaoImpl;
import club.vasilis.xtwh.domain.NativeProduct;
import club.vasilis.xtwh.service.NativeProductService;
import net.sf.json.JSONArray;
import org.junit.Test;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/4/25 -21:43
 */

public class NativeProductServiceImpl implements NativeProductService {
    @Override
    public String findFiveindex() throws Exception {
        NativeProductDao dao = new NativeProductDaoImpl();
        List<NativeProduct> list = dao.findFiveindex();


        return JSONArray.fromObject(list).toString();
    }
    @Test
    public void test()throws Exception{
        System.out.println(new NativeProductServiceImpl().findFiveindex());

    }
}

package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.NativeProductDao;
import club.vasilis.xtwh.dao.impl.NativeProductDaoImpl;
import club.vasilis.xtwh.domain.NativeProduct;
import club.vasilis.xtwh.service.NativeProductService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
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

    @Override
    public List<NativeProduct> findAllProduct() throws Exception {
        NativeProductDao dao = new NativeProductDaoImpl();
        return dao.findAllProduct();
    }

    @Override
    public String findProductByTypeJson(String typeId) throws Exception {
        NativeProductDao dao = new NativeProductDaoImpl();
        List<NativeProduct> list = dao.findProductByType(typeId);
        return JSONArray.fromObject(list).toString();
    }

    @Override
    public NativeProduct showDetails(String id) throws Exception {
        NativeProductDao dao = new NativeProductDaoImpl();
        return dao.showDetails(id);
    }

    @Override
    public String findAllJson() throws Exception {
        NativeProductDao dao = new NativeProductDaoImpl();
        List<NativeProduct> productList = dao.findAllProduct();
        return JSONArray.fromObject(productList).toString();
    }

    @Override
    public String detailsbyjson(String id) throws Exception {
        NativeProductDao dao = new NativeProductDaoImpl();
        NativeProduct nativeProduct = dao.showDetails(id);
        return JSONObject.fromObject(nativeProduct).toString();
    }


    @Test
    public void test() throws Exception {
        System.out.println(new NativeProductServiceImpl().findFiveindex());


    }
}

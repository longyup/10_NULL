package club.vasilis.xtwh.service.impl;

import club.vasilis.xtwh.dao.NativeProductCategoryDao;
import club.vasilis.xtwh.dao.impl.NativeProductCategoryDaoImpl;
import club.vasilis.xtwh.domain.NativeProductCategory;
import club.vasilis.xtwh.service.NativeProductCategoryService;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/5/8 -21:01
 */

public class NativeProductCategoryServiceImpl implements NativeProductCategoryService {
    @Override
    public List<NativeProductCategory> findAllCategory() throws Exception {
        NativeProductCategoryDao dao = new NativeProductCategoryDaoImpl();
        return  dao.findAllCategory();
    }
}

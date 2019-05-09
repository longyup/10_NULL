package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.NativeProductCategory;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/5/8 -21:00
 */

public interface NativeProductCategoryService {
    List<NativeProductCategory> findAllCategory() throws Exception;
}

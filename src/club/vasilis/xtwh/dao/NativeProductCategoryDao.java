package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.NativeProductCategory;

import java.util.List;

/**
 * 特产的分类
 * @author Vasilis
 * @date 2019/4/30 -9:19
 */

public interface NativeProductCategoryDao {

    List<NativeProductCategory> findAllCategory() throws Exception;
}

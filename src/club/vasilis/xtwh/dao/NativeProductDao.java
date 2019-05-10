package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.NativeProduct;

import java.util.List;

/**
 * 特产的Dao接口
 * @author Vasilis
 * @date 2019/4/25 -21:05
 */

public interface NativeProductDao {
    /**
     * 首页特产的轮播图的DAO层
     * @return
     * @throws Exception
     */
    List<NativeProduct> findFiveindex() throws Exception;

    /**
     * 分栏下全部的展示
     * @return
     * @throws Exception
     */
    List<NativeProduct> findAllProduct() throws Exception;
    /**
     * 根据分类找信息
     * @return
     * @throws Exception
     */
    List<NativeProduct> findProductByType(String typeId) throws Exception;





}

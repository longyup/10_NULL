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
     * 子页面全部的展示
     * @return
     * @throws Exception
     */
    List<NativeProduct> findAllProduct() throws Exception;
    /**
     * 根据分类的点击显示列表
     * @return
     * @throws Exception
     */
    List<NativeProduct> findProductByType(String typeId) throws Exception;

    /**
     * 点击进入详情信息
     * @param id
     * @return
     * @throws Exception
     */
    NativeProduct showDetails(String id) throws Exception;





}

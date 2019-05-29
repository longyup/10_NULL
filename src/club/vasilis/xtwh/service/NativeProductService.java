package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.NativeProduct;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/4/25 -21:40
 */

public interface NativeProductService  {
    /**
     * 首页上对list封装成json数据
     * @return
     * @throws Exception
     */
    String findFiveindex() throws Exception;

    /**
     * 分栏页全部信息的显示
     * @return
     * @throws Exception
     */
    List<NativeProduct> findAllProduct() throws Exception;


    /**
     * 根据分类刷新列表，并转成json
     * @return
     * @throws Exception
     */
    String findProductByTypeJson(String typeId) throws Exception;

    /**
     * 点击进入详情信息
     * @param id
     * @return
     * @throws Exception
     */
    NativeProduct showDetails(String id) throws Exception;

    String findAllJson() throws Exception;

    String detailsbyjson(String id) throws Exception;
}

package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.NativeProduct;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/4/25 -21:40
 */

public interface NativeProductService  {
    /**
     * 对list封装成json数据
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
     * 根据分类显示，并转成json
     * @return
     * @throws Exception
     */
    String findProductByTypeJson(String typeId) throws Exception;

}

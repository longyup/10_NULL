package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.FolkCustom;

import java.sql.SQLException;
import java.util.List;

/**
 * 风情民俗页面
 */
public interface FolkCustomDao {

    /**
     * 风情民俗菜单栏
     * @return
     * @throws Exception
     */
    List<FolkCustom> customMenu() throws Exception;

    /**
     * 风情民俗标题文章
     * @return
     * @throws Exception
     */
    List<FolkCustom> customPassage() throws  Exception;

    /**
     * 风情民俗菜单栏列表详情
     * @return
     * @throws Exception
     */
    List<FolkCustom> customMenuDetails(String typeId) throws Exception;

    /**
     * 风情民俗标题文章内容
     * @return
     * @throws Exception
     */
    FolkCustom customPassageDetails(String id) throws  Exception;

    /**
     * 展示所有的标题
     * @return
     * @throws Exception
     */
    List<FolkCustom> customAllJson() throws Exception;

    List<FolkCustom> findAllCustoms() throws SQLException;

    void deleteCustom(String id) throws SQLException;

    void save(FolkCustom folkCustom) throws SQLException;

    FolkCustom getCustomById(String id) throws SQLException;

    int updateCustom(FolkCustom folkCustom) throws SQLException;
}

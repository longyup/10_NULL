package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.FolkCustom;

import java.sql.SQLException;
import java.util.List;

public interface FolkCustomService {

    /**
     * 风情民俗service层菜单栏
     * @return
     * @throws Exception
     */
    List<FolkCustom> customMenu() throws Exception;

    /**
     * 风情民俗service层标题内容
     * @return
     * @throws Exception
     */
    List<FolkCustom> customPassage() throws Exception;

    /**
     * 根据分类刷新列表，并转成json
     * @return
     * @throws Exception
     */
    String cusMenuDetailsJson(String typeId) throws Exception;

    /**
     * 点击进入详情页
     * @param id
     * @return
     * @throws Exception
     */
    FolkCustom customPassageDetailsShow(String id) throws Exception;

    /**
     * 展示所有的Json数据
     * @return
     * @throws Exception
     */
    String customFindAllJson() throws Exception;

    List<FolkCustom> findAllCustoms() throws SQLException;

    void deleteCustom(String id) throws SQLException;

    void sava(FolkCustom folkCustom) throws SQLException;

    FolkCustom getCustomById(String id) throws SQLException;

    int updateCustom(FolkCustom folkCustom) throws SQLException;
}

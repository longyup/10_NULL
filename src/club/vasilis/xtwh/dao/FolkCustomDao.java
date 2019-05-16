package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.FolkCustom;

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
     * 风情民俗标题文章内容
     * @return
     * @throws Exception
     */
    List<FolkCustom> customPassage() throws  Exception;
}

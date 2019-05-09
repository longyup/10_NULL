package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.FolkCustom;

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
}

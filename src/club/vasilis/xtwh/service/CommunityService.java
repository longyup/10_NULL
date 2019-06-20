package club.vasilis.xtwh.service;

import club.vasilis.xtwh.domain.Community;
import club.vasilis.xtwh.domain.Phrase;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/6/11 -9:09
 */

public interface CommunityService {


    void deleteItem(int id)throws Exception;

    List<Community> getAdminCommunityAll() throws Exception;
     /**
     * 分页查询数据
     * @param offset
     * @return
     * @throws Exception
     */
    String findTwentyByJson(int offset) throws Exception;

    /**
     * 添加说说
     * @param community
     * @return
     * @throws Exception
     */
    int updateItem(Community community) throws Exception;

    /**
     * 点赞
     * @param phrase
     * @return
     * @throws Exception
     */
    boolean phraseItem(boolean delete,Phrase phrase) throws Exception;



}

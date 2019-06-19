package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.Community;
import club.vasilis.xtwh.domain.Phrase;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/6/10 -15:30
 */

public interface CommunityDao {

    List<Community> findTwenty(int offset) throws Exception;

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
    boolean phraseDeleteItem(Phrase phrase) throws Exception;

    /**
     * 取消点赞
     * @param phrase
     * @return
     * @throws Exception
     */
    boolean phraseCreateItem(Phrase phrase) throws Exception;
}

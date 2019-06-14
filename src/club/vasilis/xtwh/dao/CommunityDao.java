package club.vasilis.xtwh.dao;

import club.vasilis.xtwh.domain.Community;

import java.util.List;

/**
 * @author Vasilis
 * @date 2019/6/10 -15:30
 */

public interface CommunityDao {

    List<Community> findTwenty(int offset) throws Exception;
}
